# Jekyll plugin to skip draft posts in navigation
# Adds next_published and previous_published to each post

if defined?(Jekyll)
  module Jekyll
    class DraftNavigationPlugin < Generator
      safe true
      priority :low

      def generate(site)
        # Get all posts
        all_posts = site.posts.docs

        # Filter to only published posts (where draft is false)
        published_posts = all_posts.reject { |post| post.data['draft'] == true }

        Jekyll.logger.info "Draft Navigation: Found #{all_posts.length} total posts, #{published_posts.length} published"

        # For EACH post (both published and draft), set navigation to published posts only
        all_posts.each do |current_post|
          # Find index of current post in published posts list
          current_index = published_posts.index(current_post)
          
          if current_index.nil?
            # This is a draft post, no navigation
            current_post.data['previous_published'] = nil
            current_post.data['next_published'] = nil
          else
            # This is a published post, set navigation
            if current_index > 0
              current_post.data['previous_published'] = published_posts[current_index - 1]
            else
              current_post.data['previous_published'] = nil
            end

            if current_index < published_posts.length - 1
              current_post.data['next_published'] = published_posts[current_index + 1]
            else
              current_post.data['next_published'] = nil
            end
          end
        end
      end
    end
  end
end
