# Smart Feed

## Prerequisites

Before you begin, ensure you have the following installed on your system:

- **Python 3.8 or higher**: Check your version with `python --version`
- **Git**: For version control and pre-commit hooks
- **pip**: Python package installer (usually comes with Python)
- **Virtual environment** (recommended): `venv`, `virtualenv`, or `conda`

### System Dependencies

#### Linux (Ubuntu/Debian)
```bash
sudo apt update
sudo apt install python3 python3-pip python3-venv git
```

#### macOS
```bash
# Using Homebrew
brew install python git

# Or using the official Python installer from python.org
```

#### Windows
- Download Python from [python.org](https://python.org)
- Download Git from [git-scm.com](https://git-scm.com)
- Ensure both are added to your PATH

## Setup

### 1. Clone the Repository
```bash
git clone https://github.com/ragnarok-projects/smart-feed.git
cd smart-feed
```

### 2. Create and Activate Virtual Environment

#### Linux/macOS
```bash
python -m venv venv
source venv/bin/activate
```

#### Windows
```bash
python -m venv venv
venv\Scripts\activate
```

### 3. Install Development Dependencies
```bash
make setup-dev
```

Or manually:
```bash
pip install -e .[dev]
pre-commit install
pre-commit install --hook-type commit-msg
```

### 4. Verify Installation
```bash
make check-all
```

## Makefile Commands

The project includes a comprehensive Makefile with the following commands:

### Environment Setup
- `make help` - Show all available commands with descriptions
- `make setup-dev` - Complete development environment setup
- `make install` - Install the package
- `make install-dev` - Install with development dependencies
- `make setup-pre-commit` - Install pre-commit hooks

### Code Quality
- `make lint-check` - Run linting with ruff (check only)
- `make lint-fix` - Run linting and fix auto-fixable issues
- `make format-check` - Check formatting without changes
- `make format-fix` - Format code with ruff
- `make check-all` - Run all quality checks (lint + format + type + test)
- `make fix-all` - Fix all auto-fixable issues

### Testing
- `make test-cov` - Run tests with coverage report
- `make test-cov-xml` - Run tests with XML coverage report
- `make test-cov-html` - Run tests with HTML coverage report

### Pre-commit
- `make pre-commit` - Run pre-commit hooks on all files

### Git and Releases
- `make commit` - Interactive commit with commitizen

### Maintenance
- `make clean` - Clean temporary files and caches
- `make deps-update` - Update all dependencies
- `make deps-tree` - Show dependency tree
- `make security-check` - Run security vulnerability check
- `make info` - Show project information

### Usage Examples

#### Daily Development Workflow
```bash
# Start development
make setup                    # First time only
source venv/bin/activate     # Activate environment

# Make changes to code
# ...

# Check your code
make check-all               # Run all quality checks

# Fix any issues
make fix-all                 # Auto-fix what's possible

# Commit changes
make commit                  # Interactive commit with proper format

# Run tests
make test-cov               # Test with coverage
```

#### Pre-push Checklist
```bash
make clean                  # Clean up
make check-all              # Full quality check
make test-cov               # Test with coverage
make pre-commit             # Run all pre-commit hooks
```

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Team

- **Alireza Nazari** - [@Alireza-Nazari](https://github.com/Alireza-Nazari/)
- **Masoud Mohararzadeh** - [@MMK79](https://github.com/MMK79)
- **Amin Haeri** - [@rst-lss](https://github.com/rst-lss)

