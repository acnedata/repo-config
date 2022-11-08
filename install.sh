#bin/sh

# Declare the Python version used as a requirement for the dev environment here
PYTHON_VERSION="3.9"

# Declare the files to be installed here
declare -a config_files=(
    ".gitignore"
    ".pre-commit-config.yaml"
    ".github/workflows/pre-commit.yml"
    ".devcontainer/devcontainer.json"
    ".devcontainer/Dockerfile"
)

# location of config files
github="https://raw.githubusercontent.com/acnedata/repo-config/main/configs"


# Main script
mkfile () { mkdir -p "$(dirname "$1")" && cat - > $1;  }

download () { curl --silent --create-dirs --location "${github}/${1}"; }

# Fill in the python version in the config files
main () {
    echo "Installed:"
    export PYTHON_VERSION
    export PYTHON_VERSION_DOTLESS="${PYTHON_VERSION//.}"

    for cf in ${config_files[@]}; do
        download $cf | envsubst '${PYTHON_VERSION}, ${PYTHON_VERSION_DOTLESS}' | mkfile $cf
        echo "- ${cf}"
    done

    unset PYTHON_VERSION
    unset PYTHON_VERSION_DOTLESS
}

main