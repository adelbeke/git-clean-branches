# 🌿 git-clean-branches

Interactive git branch deletion tool for ZSH with a beautiful UI.

## Features

- 🎯 **Interactive selection** - Use checkboxes to select/unselect branches
- 📊 **Rich information** - See last commit date and message for each branch
- 🛡️ **Safety first** - Automatically protects current branch and main/master
- ⚡ **Fast and smooth** - Powered by [gum](https://github.com/charmbracelet/gum)
- 🎨 **Beautiful UI** - Clean, modern interface with colors

## Preview

```
🌿 Interactive Branch Cleanup

Current branch: main
Protected branches: main master develop development

Select branches to delete (use Space to select, Enter to confirm):

  feature-login              (2 days ago)     Fix login validation
  bugfix-header              (1 week ago)     Update header styles
  test-branch                (3 months ago)   Initial test setup

📋 Branches to delete:
  • feature-login
  • test-branch

Delete 2 branch(es) using safe delete? (y/N)
```

## Installation

### Prerequisites

Install [gum](https://github.com/charmbracelet/gum):

```bash
brew install gum
```

### Oh My Zsh

1. Clone this repository into Oh My Zsh's custom plugins directory:

```bash
git clone https://github.com/yourusername/git-clean-branches \
    ~/.oh-my-zsh/custom/plugins/git-clean-branches
```

2. Add the plugin to your `.zshrc`:

```bash
plugins=(... git-clean-branches)
```

3. Reload your shell:

```bash
source ~/.zshrc
```

### Manual Installation (Any ZSH)

1. Clone the repository:

```bash
git clone https://github.com/yourusername/git-clean-branches ~/git-clean-branches
```

2. Source the plugin in your `.zshrc`:

```bash
source ~/git-clean-branches/git-clean-branches.plugin.zsh
```

3. Reload your shell:

```bash
source ~/.zshrc
```

## Usage

### Basic Usage

```bash
git-clean-branches
```

Or use the short alias:

```bash
gcb
```

### Options

```bash
git-clean-branches [OPTIONS]

OPTIONS:
    -f, --force     Force delete branches (even if not fully merged)
    -h, --help      Show help message
    -v, --version   Show version
```

### Examples

Safe delete (only merged branches):
```bash
git-clean-branches
```

Force delete (including unmerged branches):
```bash
git-clean-branches --force
```

Using the alias:
```bash
gcb -f
```

## How It Works

1. **Lists all branches** - Except current branch and protected branches (main, master, develop, development)
2. **Shows information** - Displays last commit date and message for each branch
3. **Interactive selection** - Use space to select/unselect, enter to confirm
4. **Confirmation** - Shows summary and asks for final confirmation
5. **Deletion** - Deletes selected branches with progress feedback

## Protected Branches

The following branches are automatically protected and won't appear in the list:

- Current branch (the one you're on)
- `main`
- `master`
- `develop`
- `development`

## Safety Features

- **Safe delete by default** - Uses `git branch -d` which only deletes merged branches
- **Force option** - Use `--force` to delete unmerged branches with `git branch -D`
- **Clear feedback** - Shows which branches were deleted and which failed
- **Cancellation** - Can cancel at any point with Ctrl+C or by saying "No" to confirmation

## Troubleshooting

### "gum: command not found"

Install gum:
```bash
brew install gum
```

### "Not in a git repository"

Make sure you're inside a git repository:
```bash
cd /path/to/your/git/repo
```

### Branch won't delete (not fully merged)

Use the force option:
```bash
git-clean-branches --force
```

## Contributing

Contributions are welcome! Feel free to open issues or submit pull requests.

## License

MIT License - see LICENSE file for details

## Credits

Built with:
- [gum](https://github.com/charmbracelet/gum) - A tool for glamorous shell scripts
- ZSH - The Z shell

---

Made with ❤️ for developers who like clean repositories
