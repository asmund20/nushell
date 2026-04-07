# config.nu
#
# Installed by:
# version = "0.111.0"
#
# This file is used to override default Nushell settings, define
# (or import) custom commands, or run any other startup tasks.
# See https://www.nushell.sh/book/configuration.html
#
# Nushell sets "sensible defaults" for most configuration settings, 
# so your `config.nu` only needs to override these defaults if desired.
#
# You can open this file in your default editor using:
#     config nu
#
# You can also pretty-print and page through the documentation for configuration
# options using:
#     config nu --doc | nu-highlight | less -R

source ./git-completions.nu

$env.config.show_banner = false
$env.PROMPT_COMMAND_RIGHT = ""
$env.config.edit_mode = 'vi'


# Git stuff
alias g = git
alias gb = git branch
alias ga = git add
alias gc = git commit
alias gco = git checkout
alias gd = git diff
alias gl = git log
alias gph = git push
alias gpl = git pull
alias gs = git status
alias gst = git stash

alias e = nvim

alias kanata-config = nvim ~/.config/kanata/kanata.kbd
def kanata-restart [] { pkill kanata ; setsid kanata -n }
