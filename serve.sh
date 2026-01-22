#!/bin/bash
# Use Homebrew Ruby instead of RVM
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
export GEM_HOME="$HOME/.gem/ruby/3.4.0"
export PATH="$GEM_HOME/bin:$PATH"

# Function to run checks
run_checks() {
  echo "Checking internal links and images..."
  # Checks:
  # - Links: interne links (extern blijft uitgeschakeld)
  # - Images: ontbrekende/onjuiste paden
  # Opmerking: HTMLProofer heeft geen aparte 'HTML' check; standaardchecks zijn Links/Images/Scripts.
  bundle exec htmlproofer ./_site \
    --disable-external \
    --checks "Images,Links"
}

# Check if 'check' or 'checks' argument is passed to only run validation
if [ "$1" == "check" ] || [ "$1" == "checks" ]; then
  # Build site first
  echo "Building site..."
  bundle exec jekyll build
  
  # Then validate
  run_checks
  exit $?
fi

# Default: run checks first, then start dev server if checks pass
echo "Building site..."
bundle exec jekyll build

if run_checks; then
  echo ""
  echo "✅ All checks passed! Starting development server..."
  echo ""
  bundle exec jekyll serve --host 0.0.0.0
else
  echo ""
  echo "❌ Checks failed! Please fix the issues before serving."
  echo "   Run './serve check' to see detailed error messages."
  exit 1
fi

