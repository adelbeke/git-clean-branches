#!/usr/bin/env zsh

# git-clean-branches ZSH plugin
# Interactive git branch deletion with beautiful UI

# Get the directory where this plugin is located
PLUGIN_DIR="${0:A:h}"

# Add the functions directory to fpath for autoloading
fpath=("$PLUGIN_DIR/functions" $fpath)

# Load the main function
autoload -Uz git-clean-branches

# Create convenient alias
alias gcb='git-clean-branches'

# Optional: Check for gum installation on first load
if ! command -v gum &> /dev/null; then
    echo "⚠️  git-clean-branches: 'gum' is not installed"
    echo "   Install with: brew install gum"
fi
