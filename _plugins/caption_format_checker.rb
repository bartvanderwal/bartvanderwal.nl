# Standalone caption validator that can be used outside of Jekyll
class CaptionFormatChecker
  # Validate markdown content for caption format issues
  # Returns: { valid: boolean, errors: [{ line: int, message: string }] }
  def self.validate_content(content)
    lines = content.split("\n")
    errors = []

    lines.each_with_index do |line, idx|
      # Check if line is an image
      if line.match?(/^\!\[.*\]\(.*\)$/)
        # Extract alt text from image
        alt_text_match = line.match(/^\!\[(.*)\]\(.*\)$/)
        alt_text = alt_text_match[1] if alt_text_match
        
        next_line = lines[idx + 1]

        # Warn if there's an empty line between image and caption
        if next_line.nil? || (next_line.strip.empty? && !lines[idx + 2].nil?)
          if next_line.strip.empty? && lines[idx + 2]&.match?(/^\*Figuur/)
            errors << { line: idx + 2, message: "Empty line between image and caption (remove blank line)" }
          elsif next_line.nil? || next_line.strip.empty?
            errors << { line: idx + 2, message: "Missing caption after image" }
          end
          next
        end

        # Caption should start with *Figuur
        unless next_line.match?(/^\*Figuur/)
          errors << { line: idx + 2, message: "Caption should start with *Figuur: #{next_line}" }
          next
        end

        # Caption should have format: *Figuur X*: Caption text.
        # Pattern: *Figuur [space] [digits] *: [space]
        unless next_line.match?(/^\*Figuur [0-9]+\*: /)
          errors << { line: idx + 2, message: "Wrong caption format: #{next_line}. Should be: *Figuur X*: Caption text." }
          next
        end
        
        # Check if alt text matches caption text
        if alt_text && next_line.match?(/^\*Figuur [0-9]+\*: (.+)$/)
          caption_text = next_line.match(/^\*Figuur [0-9]+\*: (.+)$/)[1]
          
          # Normalize for comparison: lowercase, remove extra spaces
          alt_normalized = alt_text.strip.downcase.gsub(/\s+/, ' ')
          caption_normalized = caption_text.strip.downcase.gsub(/\s+/, ' ')
          
          # Check if they match or if one contains the other (allowing for some flexibility)
          unless alt_normalized == caption_normalized || 
                 alt_normalized.include?(caption_normalized) || 
                 caption_normalized.include?(alt_normalized)
            errors << { line: idx + 2, message: "Alt text (\"#{alt_text}\") does not match caption text (\"#{caption_text}\")" }
          end
        end
      end
    end

    {
      valid: errors.empty?,
      errors: errors
    }
  end
end

# Jekyll plugin wrapper (only loaded when Jekyll is available)
if defined?(Jekyll)
  module Jekyll
    class CaptionFormatCheckerPlugin < Generator
      safe true
      priority :low

      def generate(site)
        checks_failed = []

        # Check all markdown files in _posts and _pages
        (site.posts.docs + site.pages).each do |page|
          next unless page.path.end_with?('.md')

          content = File.read(page.path)
          result = ::CaptionFormatChecker.validate_content(content)
          
          result[:errors].each do |error|
            checks_failed << "#{page.path}:#{error[:line]} - #{error[:message]}"
          end
        end

        # Report failures
        if checks_failed.any?
          Jekyll.logger.warn "Caption Format Issues found:"
          checks_failed.each do |failure|
            Jekyll.logger.warn "  - #{failure}"
          end
        else
          Jekyll.logger.info "Caption Format: All captions properly formatted!"
        end
      end
    end
  end
end
