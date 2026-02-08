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

  def install
    venv = virtualenv_create(libexec, "python3.11")
    
    # Install deps from PyPI (uses wheels, avoids hatchling source build issues)
    system libexec/"bin/pip", "install",
           "ollama==0.6.1", "pandas==3.0.0", "openai==2.16.0",
           "python-dotenv==1.2.1", "pyyaml==6.0.3", "ruamel.yaml==0.19.1",
           "tqdm==4.67.2", "psycopg==3.3.2", "fastapi==0.128.0", "uvicorn==0.40.0"
    
    # Install the main package
    system libexec/"bin/pip", "install", "--no-deps", buildpath
    
    # Link binaries
    bin.install_symlink Dir[libexec/"bin/iqtoolkit-analyzer"]
  end

  test do
    system "#{bin}/iqtoolkit-analyzer", "--version"
    assert_match "iqtoolkit-analyzer", shell_output("#{bin}/iqtoolkit-analyzer --help")
  end
end
