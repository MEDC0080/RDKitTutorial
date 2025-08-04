# Detect the current shell
if [ -n "$ZSH_VERSION" ]; then
    echo "Detected zsh. Continuing execution with zsh..."
elif [ -n "$BASH_VERSION" ]; then
    echo "Detected bash. Continuing execution with bash..."
else
    echo "Generic shell detected. Attempting to re-execute with zsh or bash..."
    if command -v zsh >/dev/null 2>&1; then
        exec zsh "$0" "$@"
    elif command -v bash >/dev/null 2>&1; then
        exec bash "$0" "$@"
    else
        echo "Neither bash nor zsh is available. Exiting."
        exit 1
    fi
fi

# Start of the actual script logic
BASEDIR=$(dirname "$0")
set -e

# Configure Conda settings
conda config --set always_yes yes --set changeps1 no

# Update Conda to the latest version
conda update -q conda
conda info -a

# Create the environment
conda env create -f "${BASEDIR}/environment.yml"

# Initialise Conda for the detected shell
if [ -n "$ZSH_VERSION" ]; then
    conda init zsh
    CONFIG_FILE="$HOME/.zshrc"
elif [ -n "$BASH_VERSION" ]; then
    conda init bash
    CONFIG_FILE="$HOME/.bashrc"
    if [ ! -f "$CONFIG_FILE" ]; then
        CONFIG_FILE="$HOME/.bash_profile"  # Fallback for macOS
    fi
fi

# Source the appropriate configuration file if it exists
if [ -f "$CONFIG_FILE" ]; then
    echo "Sourcing $CONFIG_FILE"
    source "$CONFIG_FILE"
else
    echo "Configuration file $CONFIG_FILE not found. Please restart your terminal after the script finishes."
fi

# Activate the environment
conda activate rdkit_tutorial

# Set up the Jupyter kernel
python -m ipykernel install --user --name rdkit_tutorial

# Reset Conda configuration
conda config --set always_yes no --set changeps1 no

# Deactivate the environment
conda deactivate