# Homebrew Formula for IQToolkit Analyzer v0.3.0rc3 (Python 3.14)

class IqtoolkitAnalyzerATV030rc3Py314 < Formula
  desc "AI-powered multi-database performance analyzer for PostgreSQL and MongoDB"
  homepage "https://github.com/iqtoolkit/iqtoolkit-analyzer"
  url "https://files.pythonhosted.org/packages/a1/9d/69b58d59a8cd97319b989d608be0a48b81035a5387ba6b1af544518462b8/iqtoolkit_analyzer-0.3.0rc3.tar.gz"
  sha256 "aa5de0b402ab93e1a29d68f04d8cc5d641b32ad04e896cbb55fedf4ec60a6c9d"
  license "MIT"

  skip_clean "libexec"

  keg_only :versioned_formula

  depends_on "python@3.14"

  def install
    venv = libexec
    python = Formula["python@3.14"].opt_bin/"python3.14"
    system python, "-m", "venv", venv
    system venv/"bin/pip", "install", "--upgrade", "pip"
    # Copy source to libexec for post_install
    (libexec/"src").install buildpath.children
  end

  def post_install
    system libexec/"bin/pip", "install", libexec/"src"
    bin.install_symlink libexec/"bin/iqtoolkit-analyzer"
  end

  test do
    system bin/"iqtoolkit-analyzer", "--version"
  end
end
