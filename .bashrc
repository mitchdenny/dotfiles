# All the default Omarchy aliases and functions
# (don't mess with these directly, just overwrite them here!)
source ~/.local/share/omarchy/default/bash/rc

# Add your own exports, aliases, and functions here.
#
# Make an alias for invoking commands you use constantly
# alias p='python'
alias dotfiles='git --git-dir=$HOME/Code/dotfiles/ --work-tree=$HOME'

# Use VSCode instead of neovim as your default editor
export EDITOR="code"

# Set a custom prompt with the directory revealed (alternatively use https://starship.rs)
PS1="\W \[\e]0;\w\a\]$PS1"

# debugging
alias workspacedebug='$HOME/.scripts/workspacedebug.sh'

# omarchy environment
alias omarchyinstall='wget -qO- https://omarchy.org/install | bash'

# dotnet environment
alias dotnetinstall='curl -sSL https://dot.net/v1/dotnet-install.sh | bash /dev/stdin'
export DOTNET_ROOT=$HOME/.dotnet
export PATH="$DOTNET_ROOT:$HOME/.aspire/bin:$PATH"

# aspire environment
alias aspireinstall='curl -sSL https://aspire.dev/install.sh | bash'
alias aspireinstalldev='curl -sSL https://aspire.dev/install.sh | bash -s -- -q dev'
alias aspireinstallpr='curl -sSL https://raw.githubusercontent.com/dotnet/aspire/refs/heads/main/eng/scripts/get-aspire-cli-pr.sh | bash -s'

# vscode
alias vscodeinstall='$HOME/.scripts/vscodeinstall.sh'

# starship
alias starshipinstall='curl -sS https://starship.rs/install.sh' | sh
eval "$(starship init bash)"
