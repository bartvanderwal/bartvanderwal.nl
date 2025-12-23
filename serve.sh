#!/bin/bash
# Use Homebrew Ruby instead of RVM
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
export GEM_HOME="$HOME/.gem/ruby/3.4.0"
export PATH="$GEM_HOME/bin:$PATH"

bundle exec jekyll serve --host 0.0.0.0
