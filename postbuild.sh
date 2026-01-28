#!/bin/bash
set -e

# Find the repo directory
cd /workspaces
cd_prefix="computational_methods_*"
dirs=( $cd_prefix )
if [ ${#dirs[@]} -eq 1 ] && [ -d "${dirs[0]}" ]; then
    REPO_DIR="${dirs[0]}"
    cd "$REPO_DIR"
else
    echo "Error: expected exactly one directory matching $cd_prefix, found ${#dirs[@]}"
    exit 1
fi

# Create the environment and install the kernel
uv venv
uv sync
source .venv/bin/activate
python -m ipykernel install --user --name hwrs640 --display-name "Python (HWRS640)"

# Create VS Code settings with the correct path
mkdir -p .vscode
cat > .vscode/settings.json <<EOF
{
    "python.defaultInterpreterPath": "\${workspaceFolder}/$REPO_DIR/.venv/bin/python",
    "jupyter.kernels.filter": [
        {
            "path": "\${workspaceFolder}/$REPO_DIR/.venv/bin/python",
            "type": "pythonEnvironment"
        }
    ]
}
EOF

# Clean up the cache to save space
uv cache clean

echo "Setup complete! Virtual environment created at $REPO_DIR/.venv"