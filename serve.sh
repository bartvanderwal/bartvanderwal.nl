#!/bin/bash
# Use Homebrew Ruby instead of RVM
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
export GEM_HOME="$HOME/.gem/ruby/3.4.0"
export PATH="$GEM_HOME/bin:$PATH"

# Check if 'check' argument is passed to validate links
if [ "$1" == "check" ]; then
  # Build site first
  echo "Building site..."
  bundle exec jekyll build
  
  # Then validate internal links (disable external link checking)
  echo "Checking internal links..."
  bundle exec htmlproofer ./_site --disable-external
  exit $?
fi

# Default: start dev server
bundle exec jekyll serve --host 0.0.0.0
