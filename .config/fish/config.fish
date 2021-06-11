# ghcup-env
set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME
test -f /root/.ghcup/env ; and set -gx PATH $HOME/.cabal/bin /root/.ghcup/bin $PATH

set -gx EDITOR nvim

abbr ls exa
abbr ll exa -l
abbr la exa -la

starship init fish | source
