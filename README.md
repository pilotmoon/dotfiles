# dotfiles

Built whilst following the [Dotfiles from Start to Finish-ish](https://www.udemy.com/course/dotfiles-from-start-to-finish-ish/) course.

Test

## Log

Steps I took setting up a new, clean, machine from scratch:

* Finder set up: show path bar, show file extensions, configure sidebar, etc.
* Keybaord: set caps lock as control
* In macOS Settings, ensure latest OS version is installed.
* Create `~/.zshrc` file and add `ll` alias, custom `PROMPT`.
* Terminal: `xcode-select --install`
* Set name and email in `.gitconfig` using `git config` commands.
* Installed homebrew, including adding the path to `.zprofile` using the suggested commands.
  * `.zprofile` is run first, then `.zshrc` is run each time an interactive shell starts\
* Installed 1Password using `brew install --cask 1password`
  * Installed 1P CLI using `brew install --cask 1password/tap/1password-cli`
* Set up GitHub SSH:
  * Followed the instructions in 1P to install it as the SSH agent (`~/.ssh/config`).
  * Use 1Password to create a new Ed25519 SSH key, for GitHub.
  * In GitHub settings add the new public key twice, as both authentication and signing key.
  * Test with `ssh git@github.com -T`.
  * Followed the instructions in 1P to configure `.gitconfig` to sign commits with this same SSH key.
* In GitHub create this dotfiles repo & clone to `~/.dotfiles`.
  * Couple test commits to README to test GitHub's commit verification.
* Set up dotfiles repo:  
  * Move `.zshrc` to `.dotfiles/zshrc`.
  * Set up symlink with `ln -s ~/.dotfiles/zshrc ~/.zshrc` (using full paths).
  * Add dotbot submodule with `git submodule add https://github.com/anishathalye/dotbot`.
  * Follow other manual install instructions for dotbot.
  * Copy in `install.conf.yaml` from example; edit to do a few minimal tasks & test with `./install`.

  
  

