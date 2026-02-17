# Homebrew Formula for IQToolkit Analyzer v0.3.0 (Python 3.13)

class IqtoolkitAnalyzerAT030Py313 < Formula
  desc "AI-powered multi-database performance analyzer for PostgreSQL and MongoDB"
  homepage "https://github.com/iqtoolkit/iqtoolkit-analyzer"
  url "https://files.pythonhosted.org/packages/62/f2/0ceaf3d141b72a5936f98ccb01bca232f1f7c699df78d7179fcb5667e557/iqtoolkit_analyzer-0.3.0.tar.gz"
  sha256 "454839152e1a4aa0f81c61f9b6b193aca98e75ac265dbdc786ac3ba70a8d675"
  license "MIT"

  skip_clean "libexec"

  keg_only :versioned_formula

  depends_on "python@3.13"

  def install
    venv = libexec
    python = Formula["python@3.13"].opt_bin/"python3.13"
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