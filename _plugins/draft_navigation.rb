# Jekyll plugin to skip draft posts in navigation
# Adds next_published and previous_published to each post

if defined?(Jekyll)
  module Jekyll
    class DraftNavigationPlugin < Generator
      safe true
      priority :low

      def generate(site)
        # Get all posts and filter by draft status
        # Note: site.posts.docs includes all docs (not filtered by draft)
        all_posts = site.posts.docs

        # Filter to only published posts (where draft is false or not set)
        published_posts = all_posts.reject { |post| post.data['draft'] == true }

        Jekyll.logger.info "Draft Navigation: Found #{all_posts.length} total posts, #{published_posts.length} published"

        # For each published post, set next_published and previous_published
        published_posts.each_with_index do |post, index|
          title = post.data['title'] || 'Unknown'
          draft_status = post.data['draft'] ? 'DRAFT' : 'PUBLISHED'
          
          # Set previous published post
          if index > 0
            post.data['previous_published'] = published_posts[index - 1]
          else
            post.data['previous_published'] = nil
          end

          # Set next published post
          if index < published_posts.length - 1
            post.data['next_published'] = published_posts[index + 1]
          else
            post.data['next_published'] = nil
          end
        end
      end
    end
  end
end
