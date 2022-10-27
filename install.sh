#bin/sh

alias download="curl --location --remote-name"

github="https://raw.githubusercontent.com/acnedata/repo-config/main"

download "${github}/.pre-commit-config.yaml"

