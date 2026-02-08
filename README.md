# Homebrew IQToolkit Tap

Homebrew formulae for [IQToolkit Analyzer](https://github.com/iqtoolkit/iqtoolkit-analyzer) - an AI-powered multi-database performance analyzer for PostgreSQL and MongoDB.

## Installation

### Quick Install (Default - Latest Version with Python 3.13)

```bash
brew tap iqtoolkit/iqtoolkit
brew install iqtoolkit-analyzer
```

### Install Specific Version with Specific Python

Version-specific formulas include both the package version and Python version for clarity:

```bash
brew install iqtoolkit-analyzer@v0.3.0rc3-py-3.11    # v0.3.0rc3 with Python 3.11
brew install iqtoolkit-analyzer@v0.3.0rc3-py-3.12    # v0.3.0rc3 with Python 3.12
brew install iqtoolkit-analyzer@v0.3.0rc3-py-3.13    # v0.3.0rc3 with Python 3.13
brew install iqtoolkit-analyzer@v0.3.0rc3-py-3.14    # v0.3.0rc3 with Python 3.14
```

**Note:** Versioned formulas are keg-only. To use them, either:
- Use the full path: `/opt/homebrew/opt/iqtoolkit-analyzer@v0.3.0rc3-py-3.11/bin/iqtoolkit-analyzer`
- Or link it: `brew link --force iqtoolkit-analyzer@v0.3.0rc3-py-3.11`

## Usage

```bash
iqtoolkit-analyzer --help
iqtoolkit-analyzer --version
```

## Alternative Installation Methods

If you prefer to use your own Python environment:

```bash
# Using pipx (recommended for CLI tools)
pipx install iqtoolkit-analyzer

# Using pip in a virtual environment
pip install iqtoolkit-analyzer
```

### Installing a Specific Package Version

Homebrew formulas always install the latest version. For a specific package version, use pipx or pip:

```bash
# Specific version with your default Python
pipx install iqtoolkit-analyzer==0.2.0

# Specific version with a specific Python version
pipx install iqtoolkit-analyzer==0.2.0 --python python3.11

# Or using pip in a virtual environment
python3.11 -m venv myenv
source myenv/bin/activate
pip install iqtoolkit-analyzer==0.2.0
```

## Updating

```bash
brew update
brew upgrade iqtoolkit-analyzer
```

## Uninstalling

```bash
brew uninstall iqtoolkit-analyzer
brew untap iqtoolkit/iqtoolkit  # Optional: remove the tap
```

## Troubleshooting

### Command not found after installation

Make sure Homebrew's bin directory is in your PATH:

```bash
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zshrc
source ~/.zshrc
```

### Issues with versioned formulas

Versioned formulas (`@v0.3.0rc3-py-3.11`, etc.) are keg-only and not linked by default. To use them:

```bash
brew link --force iqtoolkit-analyzer@v0.3.0rc3-py-3.11
```

Or add to your PATH:

```bash
export PATH="/opt/homebrew/opt/iqtoolkit-analyzer@v0.3.0rc3-py-3.11/bin:$PATH"
```

## License

MIT
