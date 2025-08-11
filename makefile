.PHONY: help install install-dev clean lint format type-check test test-cov pre-commit setup-pre-commit commit release build docs
.DEFAULT_GOAL := help

help: ## Show this help message
	@echo "Available commands:"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

# Installation commands
install: ## Install the package
	pip3 install --upgrade pip setuptools
	pip3 install -e .

install-dev: ## Install the package with development dependencies
	pip3 install --upgrade pip setuptools
	pip3 install -e .[dev]

setup-dev: install-dev setup-pre-commit ## Complete development setup
	@echo "Development environment setup complete!"

# Cleaning commands
clean: ## Clean up temporary files and caches
	rm -rf build/
	rm -rf dist/
	rm -rf *.egg-info/
	rm -rf .pytest_cache/
	rm -rf .mypy_cache/
	rm -rf .ruff_cache/
	rm -rf .coverage
	rm -rf htmlcov/
	rm -rf coverage.xml
	find . -type f -name "*.pyc" -delete
	find . -type d -name "__pycache__" -delete

# Code quality commands
lint-fix: ## Run linting with ruff and fix auto-fixable issues
	ruff check --fix .

lint-check: ## Run linting with ruff
	ruff check .

format-fix: ## Format code with ruff
	ruff format .

format-check: ## Check code formatting without making changes
	ruff format --check .

# Testing commands
test-cov: ## Run tests with coverage
	pytest --cov=src --cov-report=term-missing

test-cov-xml: ## Run tests with coverage and generate XML report
	pytest --cov=src --cov-report=xml

test-cov-html: ## Run test with coverage and genrate HTML report
	pytest --cov=src --cov-report=html

# Pre-commit commands
setup-pre-commit: ## Install and set up pre-commit hooks
	pre-commit install
	pre-commit install --hook-type commit-msg

pre-commit: ## Run pre-commit on all files
	pre-commit run --all-files

# Development workflow commands
check-all: lint-check format-check test-cov ## Run all quality checks
	@echo "All checks completed!"

fix-all: lint-fix format-fix ## Fix all auto-fixable issues
	@echo "All fixes applied!"

# Git and release commands
commit: ## Interactive commit with commitizen
	cz commit

# Utility commands
deps-update: ## Update all dependencies
	pip install --upgrade pip
	pip install --upgrade -e .[dev]

deps-tree: ## Show dependency tree
	pip install pipdeptree
	pipdeptree

security-check: ## Run security vulnerability check
	pip install safety
	safety check

info: ## Show project information
	@echo "Project: $(shell python3 -c 'import tomllib; print(tomllib.load(open(\"pyproject.toml\", \"rb\"))[\"project\"][\"name\"])')"
	@echo "Version: $(shell python3 -c 'import tomllib; print(tomllib.load(open(\"pyproject.toml\", \"rb\"))[\"project\"][\"version\"])')"
	@echo "Python: $(shell python3 --version)"
	@echo "Virtual env: $(shell echo $$VIRTUAL_ENV)"
