# Jekyll plugin to validate that all posts have a draft field
# Ensures every post has explicit publication status

if defined?(Jekyll)
  module Jekyll
    class DraftFieldValidator < Generator
      safe true
      priority :high

      def generate(site)
        posts_missing_draft = []

        # Check all posts for draft field
        site.posts.docs.each do |post|
          next unless post.path.end_with?('.md')

          if post.data['draft'].nil?
            posts_missing_draft << post.path
          end
        end

        # Report violations
        if posts_missing_draft.any?
          error_msg = "Posts missing required 'draft' field:\n"
          posts_missing_draft.each do |path|
            error_msg += "  - #{path}\n"
          end
          error_msg += "Add 'draft: true' or 'draft: false' to each post's front matter."
          
          Jekyll.logger.error "Draft Field Validation FAILED!"
          Jekyll.logger.error error_msg
          raise "Build failed: Posts missing 'draft' field"
        else
          Jekyll.logger.info "Draft Field Validation: All posts have draft field!"
        end
      end
    end
  end
end
