#bin/sh

PYTHON_VERSION="3.9"

github="https://raw.githubusercontent.com/acnedata/repo-config/main"

download () { 
    curl --silent --create-dirs --location "${github}/${1}" -o $1
    envsubst < $1
    }


declare -a config_files=(
    ".pre-commit-config.yaml"
    ".github/workflows/pre-commit.yml"
    ".devcontainer/devcontainer.json"
    ".devcontainer/Dockerfile"
)

echo "Installed:"

for cf in ${config_files[@]}; do
    download $cf
    echo "- ${cf}"
done