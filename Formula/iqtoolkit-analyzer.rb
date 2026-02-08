# Homebrew Formula for IQToolkit Analyzer
# This file should be placed in a homebrew-iqtoolkit tap repository

class IqtoolkitAnalyzer < Formula
  include Language::Python::Virtualenv

  desc "AI-powered multi-database performance analyzer for PostgreSQL and MongoDB"
  homepage "https://github.com/iqtoolkit/iqtoolkit-analyzer"
  url "https://files.pythonhosted.org/packages/source/i/iqtoolkit-analyzer/iqtoolkit-analyzer-0.3.0rc3.tar.gz"
  sha256 "REPLACE_WITH_ACTUAL_SHA256"  # Update this with actual SHA256 from PyPI
  license "MIT"

  depends_on "python@3.11"
  depends_on "poetry"

  # Core dependencies
  resource "ollama" do
    url "https://files.pythonhosted.org/packages/source/o/ollama/ollama-0.1.0.tar.gz"
    sha256 "REPLACE_WITH_ACTUAL_SHA256"
  end

  resource "pandas" do
    url "https://files.pythonhosted.org/packages/source/p/pandas/pandas-2.0.0.tar.gz"
    sha256 "REPLACE_WITH_ACTUAL_SHA256"
  end

  resource "openai" do
    url "https://files.pythonhosted.org/packages/source/o/openai/openai-1.0.0.tar.gz"
    sha256 "REPLACE_WITH_ACTUAL_SHA256"
  end

  resource "python-dotenv" do
    url "https://files.pythonhosted.org/packages/source/p/python-dotenv/python-dotenv-0.19.0.tar.gz"
    sha256 "REPLACE_WITH_ACTUAL_SHA256"
  end

  resource "pyyaml" do
    url "https://files.pythonhosted.org/packages/source/p/pyyaml/pyyaml-6.0.0.tar.gz"
    sha256 "REPLACE_WITH_ACTUAL_SHA256"
  end

  resource "ruamel.yaml" do
    url "https://files.pythonhosted.org/packages/source/r/ruamel.yaml/ruamel.yaml-0.17.21.tar.gz"
    sha256 "REPLACE_WITH_ACTUAL_SHA256"
  end

  resource "tqdm" do
    url "https://files.pythonhosted.org/packages/source/t/tqdm/tqdm-4.0.0.tar.gz"
    sha256 "REPLACE_WITH_ACTUAL_SHA256"
  end

  resource "psycopg" do
    url "https://files.pythonhosted.org/packages/source/p/psycopg/psycopg-3.1.18.tar.gz"
    sha256 "REPLACE_WITH_ACTUAL_SHA256"
  end

  resource "fastapi" do
    url "https://files.pythonhosted.org/packages/source/f/fastapi/fastapi-0.100.0.tar.gz"
    sha256 "REPLACE_WITH_ACTUAL_SHA256"
  end

  resource "uvicorn" do
    url "https://files.pythonhosted.org/packages/source/u/uvicorn/uvicorn-0.23.2.tar.gz"
    sha256 "REPLACE_WITH_ACTUAL_SHA256"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/iqtoolkit-analyzer", "--version"
    assert_match "iqtoolkit-analyzer", shell_output("#{bin}/iqtoolkit-analyzer --help")
  end
end
