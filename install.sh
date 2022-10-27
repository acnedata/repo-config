#bin/sh

download () { curl --silent --location $1; }

github="https://raw.githubusercontent.com/acnedata/repo-config/main"

declare -a config_files=(
    ".pre-commit-config.yaml"
    ".github/workflows.pre-commit.yml"
)

echo "Installed:"

for cf in ${config_files[@]}; do
    download "${github}/${cf} ${cf}"
    echo "- ${cf}"
done