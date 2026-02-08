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
  depends_on "poetry"

  # Core dependencies
  resource "ollama" do
    url "https://files.pythonhosted.org/packages/9d/5a/652dac4b7affc2b37b95386f8ae78f22808af09d720689e3d7a86b6ed98e/ollama-0.6.1.tar.gz"
    sha256 "478c67546836430034b415ed64fa890fd3d1ff91781a9d548b3325274e69d7c6"
  end

  resource "pandas" do
    url "https://files.pythonhosted.org/packages/de/da/b1dc0481ab8d55d0f46e343cfe67d4551a0e14fcee52bd38ca1bd73258d8/pandas-3.0.0.tar.gz"
    sha256 "0facf7e87d38f721f0af46fe70d97373a37701b1c09f7ed7aeeb292ade5c050f"
  end

  resource "openai" do
    url "https://files.pythonhosted.org/packages/b1/6c/e4c964fcf1d527fdf4739e7cc940c60075a4114d50d03871d5d5b1e13a88/openai-2.16.0.tar.gz"
    sha256 "42eaa22ca0d8ded4367a77374104d7a2feafee5bd60a107c3c11b5243a11cd12"
  end

  resource "python-dotenv" do
    url "https://files.pythonhosted.org/packages/f0/26/19cadc79a718c5edbec86fd4919a6b6d3f681039a2f6d66d14be94e75fb9/python_dotenv-1.2.1.tar.gz"
    sha256 "42667e897e16ab0d66954af0e60a9caa94f0fd4ecf3aaf6d2d260eec1aa36ad6"
  end

  resource "pyyaml" do
    url "https://files.pythonhosted.org/packages/05/8e/961c0007c59b8dd7729d542c61a4d537767a59645b82a0b521206e1e25c2/pyyaml-6.0.3.tar.gz"
    sha256 "d76623373421df22fb4cf8817020cbb7ef15c725b9d5e45f17e189bfc384190f"
  end

  resource "ruamel.yaml" do
    url "https://files.pythonhosted.org/packages/c7/3b/ebda527b56beb90cb7652cb1c7e4f91f48649fbcd8d2eb2fb6e77cd3329b/ruamel_yaml-0.19.1.tar.gz"
    sha256 "53eb66cd27849eff968ebf8f0bf61f46cdac2da1d1f3576dd4ccee9b25c31993"
  end

  resource "tqdm" do
    url "https://files.pythonhosted.org/packages/27/89/4b0001b2dab8df0a5ee2787dcbe771de75ded01f18f1f8d53dedeea2882b/tqdm-4.67.2.tar.gz"
    sha256 "649aac53964b2cb8dec76a14b405a4c0d13612cb8933aae547dd144eacc99653"
  end

  resource "psycopg" do
    url "https://files.pythonhosted.org/packages/e0/1a/7d9ef4fdc13ef7f15b934c393edc97a35c281bb7d3c3329fbfcbe915a7c2/psycopg-3.3.2.tar.gz"
    sha256 "707a67975ee214d200511177a6a80e56e654754c9afca06a7194ea6bbfde9ca7"
  end

  resource "fastapi" do
    url "https://files.pythonhosted.org/packages/52/08/8c8508db6c7b9aae8f7175046af41baad690771c9bcde676419965e338c7/fastapi-0.128.0.tar.gz"
    sha256 "1cc179e1cef10a6be60ffe429f79b829dce99d8de32d7acb7e6c8dfdf7f2645a"
  end

  resource "uvicorn" do
    url "https://files.pythonhosted.org/packages/c3/d1/8f3c683c9561a4e6689dd3b1d345c815f10f86acd044ee1fb9a4dcd0b8c5/uvicorn-0.40.0.tar.gz"
    sha256 "839676675e87e73694518b5574fd0f24c9d97b46bea16df7b8c05ea1a51071ea"
  end

  def install
    venv = virtualenv_create(libexec, "python3.11")

    # Allow wheels just for hatchling/hatch-vcs to avoid the sdist timestamp bug
    ENV["PIP_NO_BINARY"] = ""
    venv.pip_install "hatchling", "hatch-vcs"

    # Use source for the rest
    ENV["PIP_NO_BINARY"] = ":all:"
    venv.pip_install resources
    venv.pip_install_and_link buildpath
  end

  test do
    system "#{bin}/iqtoolkit-analyzer", "--version"
    assert_match "iqtoolkit-analyzer", shell_output("#{bin}/iqtoolkit-analyzer --help")
  end
end
