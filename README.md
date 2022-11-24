# dotfiles

Built whilst following the [Dotfiles from Start to Finish-ish](https://www.udemy.com/course/dotfiles-from-start-to-finish-ish/) course.

Test

## Log

Steps I took setting up a new, clean, machine from scratch:

* In macOS Settings, ensure latest OS version is installed.
* Create `~/.zshrc` file and add `ll` alias, custom `PROMPT`.
* Terminal: `xcode-select --install`
* Set name and email in `.gitconfig` using `git config` commands.
* Installed homebrew, including adding the path to `.zprofile` using the suggested commands.
  * `.zprofile` is run first, then `.zshrc` is run each time an interactive shell starts\
* Installed 1Password using `brew install --cask 1password`
* Set up GitHub SSH:
  * Followed the instructions in 1P to install it as the SSH agent (`~/.ssh/config`).
  * Use 1Password to create a new Ed25519 SSH key, for GitHub.
  * In GitHub settings add the new public key key.
  * Test with `ssh git@github.com -T`.
  * Followed the instructions in 1P to configure `.gitconfig` to sign commits with this same SSH key.
* In Github create this dotfiles repo & clone to `~/.dotfiles`.

