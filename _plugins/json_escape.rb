module Jekyll
  module JsonEscapeFilter
    def json_escape(input)
      return '""' if input.nil?
      
      # Convert to string and clean control characters
      str = input.to_s
        .gsub(/[\x00-\x1f\x7f]/, ' ')   # Replace control chars with space
        .gsub('\\', '\\\\')              # Escape backslashes first
        .gsub('"', '\"')                 # Escape double quotes
        .gsub(/\s+/, ' ')                # Collapse whitespace
        .strip                           # Trim edges
      
      JSON.generate(str)  # Use JSON library to properly quote
    end
  end
end

Liquid::Template.register_filter(Jekyll::JsonEscapeFilter)

