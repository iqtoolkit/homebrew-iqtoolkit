# Homebrew Formula for IQToolkit Analyzer (Python 3.13)

class IqtoolkitAnalyzerAT313 < Formula
  include Language::Python::Virtualenv

  desc "AI-powered multi-database performance analyzer for PostgreSQL and MongoDB"
  homepage "https://github.com/iqtoolkit/iqtoolkit-analyzer"
  url "https://files.pythonhosted.org/packages/a1/9d/69b58d59a8cd97319b989d608be0a48b81035a5387ba6b1af544518462b8/iqtoolkit_analyzer-0.3.0rc3.tar.gz"
  sha256 "aa5de0b402ab93e1a29d68f04d8cc5d641b32ad04e896cbb55fedf4ec60a6c9d"
  license "MIT"

  keg_only :versioned_formula

  depends_on "python@3.13"

  def install
    venv = virtualenv_create(libexec, "python3.13")
    venv.pip_install buildpath
    bin.install_symlink libexec/"bin/iqtoolkit-analyzer"
  end

  test do
    system bin/"iqtoolkit-analyzer", "--version"
  end
end
