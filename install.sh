#bin/sh

alias download="curl --location --remote-name"
alias github="https://raw.githubusercontent.com/acnedata/repo-config/main"

download "${github}/.pre-commit-config.yaml"

