# Homebrew Formula for IQToolkit Analyzer
# This file should be placed in a homebrew-iqtoolkit tap repository

class IqtoolkitAnalyzer < Formula
  include Language::Python::Virtualenv

  desc "AI-powered multi-database performance analyzer for PostgreSQL and MongoDB"
  homepage "https://github.com/iqtoolkit/iqtoolkit-analyzer"
  url "https://files.pythonhosted.org/packages/a1/9d/69b58d59a8cd97319b989d608be0a48b81035a5387ba6b1af544518462b8/iqtoolkit_analyzer-0.3.0rc3.tar.gz"
  sha256 "aa5de0b402ab93e1a29d68f04d8cc5d641b32ad04e896cbb55fedf4ec60a6c9d"
  license "MIT"

  depends_on "python@3.11"

  # Using wheels (py3-none-any) to avoid hatchling build issues
  resource "ollama" do
    url "https://files.pythonhosted.org/packages/py3/o/ollama/ollama-0.6.1-py3-none-any.whl"
    sha256 "PLACEHOLDER"
  end

  resource "pandas" do
    url "https://files.pythonhosted.org/packages/cp311/p/pandas/pandas-3.0.0-cp311-cp311-macosx_11_0_arm64.whl"
    sha256 "PLACEHOLDER"
  end

  resource "openai" do
    url "https://files.pythonhosted.org/packages/py3/o/openai/openai-2.16.0-py3-none-any.whl"
    sha256 "PLACEHOLDER"
  end

  resource "python-dotenv" do
    url "https://files.pythonhosted.org/packages/py3/p/python_dotenv/python_dotenv-1.2.1-py3-none-any.whl"
    sha256 "PLACEHOLDER"
  end

  resource "pyyaml" do
    url "https://files.pythonhosted.org/packages/cp311/P/PyYAML/PyYAML-6.0.3-cp311-cp311-macosx_11_0_arm64.whl"
    sha256 "PLACEHOLDER"
  end

  resource "ruamel-yaml" do
    url "https://files.pythonhosted.org/packages/py3/r/ruamel.yaml/ruamel.yaml-0.19.1-py3-none-any.whl"
    sha256 "PLACEHOLDER"
  end

  resource "tqdm" do
    url "https://files.pythonhosted.org/packages/py3/t/tqdm/tqdm-4.67.2-py3-none-any.whl"
    sha256 "PLACEHOLDER"
  end

  resource "psycopg" do
    url "https://files.pythonhosted.org/packages/py3/p/psycopg/psycopg-3.3.2-py3-none-any.whl"
    sha256 "PLACEHOLDER"
  end

  resource "fastapi" do
    url "https://files.pythonhosted.org/packages/py3/f/fastapi/fastapi-0.128.0-py3-none-any.whl"
    sha256 "PLACEHOLDER"
  end

  resource "uvicorn" do
    url "https://files.pythonhosted.org/packages/py3/u/uvicorn/uvicorn-0.40.0-py3-none-any.whl"
    sha256 "PLACEHOLDER"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/iqtoolkit-analyzer", "--version"
    assert_match "iqtoolkit-analyzer", shell_output("#{bin}/iqtoolkit-analyzer --help")
  end
end
