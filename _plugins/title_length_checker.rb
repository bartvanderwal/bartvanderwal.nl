# Title Length Checker Plugin
# Warns when post titles exceed recommended character limit

module Jekyll
  class TitleLengthChecker < Generator
    safe true
    priority :low

    MAX_TITLE_LENGTH = 36

    def generate(site)
      site.posts.docs.each do |post|
        title = post.data['title']
        next unless title

        title_length = title.length

        if title_length > MAX_TITLE_LENGTH
          Jekyll.logger.warn "Title Length Warning:",
            "#{post.relative_path} has title length #{title_length} (max #{MAX_TITLE_LENGTH})"
          Jekyll.logger.warn "", "  Title: \"#{title}\""
        end
      end
    end
  end
end
