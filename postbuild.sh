#!/bin/bash
set -e

# Helps for finding the right directory to cd into, especially for forked repos
cd_prefix="./computational_methods_*"
dirs=( $cd_prefix )
if [ ${#dirs[@]} -eq 1 ] && [ -d "${dirs[0]}" ]; then
    cd "${dirs[0]}"
else
    echo "Error: expected exactly one directory matching $cd_prefix, found ${#dirs[@]}"
fi

# Create the environment and install the kernel
uv venv
uv sync
source ./.venv/bin/activate
cd ..
python -m ipykernel install --user --name hwrs640

# Clean up the cache to save space
uv cache clean