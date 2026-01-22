# Subtitle Length Checker Plugin
# Warns when post subtitles exceed recommended character limit

module Jekyll
  class SubtitleLengthChecker < Generator
    safe true
    priority :low

    MAX_SUBTITLE_LENGTH = 65

    def generate(site)
      site.posts.docs.each do |post|
        subtitle = post.data['subtitle']
        next unless subtitle

        subtitle_length = subtitle.length

        if subtitle_length > MAX_SUBTITLE_LENGTH
          Jekyll.logger.warn "Subtitle Length Warning:",
            "#{post.relative_path} has subtitle length #{subtitle_length} (max #{MAX_SUBTITLE_LENGTH})"
          Jekyll.logger.warn "", "  Subtitle: \"#{subtitle}\""
        end
      end
    end
  end
end
