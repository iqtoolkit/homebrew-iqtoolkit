# Homebrew Formula for IQToolkit Analyzer
# This file should be placed in a homebrew-iqtoolkit tap repository

class IqtoolkitAnalyzer < Formula
  include Language::Python::Virtualenv

  desc "AI-powered multi-database performance analyzer for PostgreSQL and MongoDB"
  homepage "https://github.com/iqtoolkit/iqtoolkit-analyzer"
  url "https://files.pythonhosted.org/packages/a1/9d/69b58d59a8cd97319b989d608be0a48b81035a5387ba6b1af544518462b8/iqtoolkit_analyzer-0.3.0rc3.tar.gz"
  sha256 "aa5de0b402ab93e1a29d68f04d8cc5d641b32ad04e896cbb55fedf4ec60a6c9d"
  license "MIT"

  depends_on "python@3.13"

  resource "annotated-types" do
    url "https://files.pythonhosted.org/packages/78/b6/6307fbef88d9b5ee7421e68d78a9f162e0da4900bc5f5793f6d3d0e34fb8/annotated_types-0.7.0-py3-none-any.whl"
    sha256 "1f02e8b43a8fbbc3f3e0d4f0f4bfc8131bcb4eebe8849b8e5c773f3a1c582a53"
  end

  resource "anyio" do
    url "https://files.pythonhosted.org/packages/38/0e/27be9fdef66e72d64c0cdc3cc2823101b80585f8119b5c112c2e8f5f7dab/anyio-4.12.1-py3-none-any.whl"
    sha256 "d405828884fc140aa80a3c667b8beed277f1dfedec42ba031bd6ac3db606ab6c"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/e6/ad/3cc14f097111b4de0040c83a525973216457bbeeb63739ef1ed275c1c021/certifi-2026.1.4-py3-none-any.whl"
    sha256 "9943707519e4add1115f44c2bc244f782c0249876bf51b6599fee1ffbedd685c"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/98/78/01c019cdb5d6498122777c1a43056ebb3ebfeef2076d9d026bfe15583b2b/click-8.3.1-py3-none-any.whl"
    sha256 "981153a64e25f12d547d3426c367a4857371575ee7ad18df2a6183ab0545b2a6"
  end

  resource "distro" do
    url "https://files.pythonhosted.org/packages/12/b3/231ffd4ab1fc9d679809f356cebee130ac7daa00d6d6f3206dd4fd137e9e/distro-1.9.0-py3-none-any.whl"
    sha256 "7bffd925d65168f85027d8da9af6bddab658135b840670a223589bc0c8ef02b2"
  end

  resource "fastapi" do
    url "https://files.pythonhosted.org/packages/5c/05/5cbb59154b093548acd0f4c7c474a118eda06da25aa75c616b72d8fcd92a/fastapi-0.128.0-py3-none-any.whl"
    sha256 "aebd93f9716ee3b4f4fcfe13ffb7cf308d99c9f3ab5622d8877441072561582d"
  end

  resource "h11" do
    url "https://files.pythonhosted.org/packages/04/4b/29cac41a4d98d144bf5f6d33995617b185d14b22401f75ca86f384e87ff1/h11-0.16.0-py3-none-any.whl"
    sha256 "63cf8bbe7522de3bf65932fda1d9c2772064ffb3dae62d55932da54b31cb6c86"
  end

  resource "httpcore" do
    url "https://files.pythonhosted.org/packages/7e/f5/f66802a942d491edb555dd61e3a9961140fd64c90bce1eafd741609d334d/httpcore-1.0.9-py3-none-any.whl"
    sha256 "2d400746a40668fc9dec9810239072b40b4484b640a8c38fd654a024c7a1bf55"
  end

  resource "httpx" do
    url "https://files.pythonhosted.org/packages/2a/39/e50c7c3a983047577ee07d2a9e53faf5a69493943ec3f6a384bdc792deb2/httpx-0.28.1-py3-none-any.whl"
    sha256 "d909fcccc110f8c7faf814ca82a9a4d816bc5a6dbfea25d6591d6985b8ba59ad"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/0e/61/66938bbb5fc52dbdf84594873d5b51fb1f7c7794e9c0f5bd885f30bc507b/idna-3.11-py3-none-any.whl"
    sha256 "771a87f49d9defaf64091e6e6fe9c18d4833f140bd19464795bc32d966ca37ea"
  end

  resource "jiter" do
    url "https://files.pythonhosted.org/packages/7c/02/be5b870d1d2be5dd6a91bdfb90f248fbb7dcbd21338f092c6b89817c3dbf/jiter-0.13.0-cp313-cp313-macosx_11_0_arm64.whl"
    sha256 "f556aa591c00f2c45eb1b89f68f52441a016034d18b65da60e2d2875bbbf344a"
  end

  resource "ollama" do
    url "https://files.pythonhosted.org/packages/47/4f/4a617ee93d8208d2bcf26b2d8b9402ceaed03e3853c754940e2290fed063/ollama-0.6.1-py3-none-any.whl"
    sha256 "fc4c984b345735c5486faeee67d8a265214a31cbb828167782dc642ce0a2bf8c"
  end

  resource "openai" do
    url "https://files.pythonhosted.org/packages/16/83/0315bf2cfd75a2ce8a7e54188e9456c60cec6c0cf66728ed07bd9859ff26/openai-2.16.0-py3-none-any.whl"
    sha256 "5f46643a8f42899a84e80c38838135d7038e7718333ce61396994f887b09a59b"
  end

  resource "psycopg" do
    url "https://files.pythonhosted.org/packages/8c/51/2779ccdf9305981a06b21a6b27e8547c948d85c41c76ff434192784a4c93/psycopg-3.3.2-py3-none-any.whl"
    sha256 "3e94bc5f4690247d734599af56e51bae8e0db8e4311ea413f801fef82b14a99b"
  end

  resource "pydantic" do
    url "https://files.pythonhosted.org/packages/5a/87/b70ad306ebb6f9b585f114d0ac2137d792b48be34d732d60e597c2f8465a/pydantic-2.12.5-py3-none-any.whl"
    sha256 "e561593fccf61e8a20fc46dfc2dfe075b8be7d0188df33f221ad1f0139180f9d"
  end

  resource "pydantic-core" do
    url "https://files.pythonhosted.org/packages/94/02/abfa0e0bda67faa65fef1c84971c7e45928e108fe24333c81f3bfe35d5f5/pydantic_core-2.41.5-cp313-cp313-macosx_11_0_arm64.whl"
    sha256 "112e305c3314f40c93998e567879e887a3160bb8689ef3d2c04b6cc62c33ac34"
  end

  resource "python-dotenv" do
    url "https://files.pythonhosted.org/packages/14/1b/a298b06749107c305e1fe0f814c6c74aea7b2f1e10989cb30f544a1b3253/python_dotenv-1.2.1-py3-none-any.whl"
    sha256 "b81ee9561e9ca4004139c6cbba3a238c32b03e4894671e181b671e8cb8425d61"
  end

  resource "sniffio" do
    url "https://files.pythonhosted.org/packages/e9/44/75a9c9421471a6c4805dbf2356f7c181a29c1879239abab1ea2cc8f38b40/sniffio-1.3.1-py3-none-any.whl"
    sha256 "2f6da418d1f1e0fddd844478f41680e794e6051915791a034ff65e5f100525a2"
  end

  resource "starlette" do
    url "https://files.pythonhosted.org/packages/81/0d/13d1d239a25cbfb19e740db83143e95c772a1fe10202dda4b76792b114dd/starlette-0.52.1-py3-none-any.whl"
    sha256 "0029d43eb3d273bc4f83a08720b4912ea4b071087a3b48db01b7c839f7954d74"
  end

  resource "tqdm" do
    url "https://files.pythonhosted.org/packages/f5/e2/31eac96de2915cf20ccaed0225035db149dfb9165a9ed28d4b252ef3f7f7/tqdm-4.67.2-py3-none-any.whl"
    sha256 "9a12abcbbff58b6036b2167d9d3853042b9d436fe7330f06ae047867f2f8e0a7"
  end

  resource "typing_extensions" do
    url "https://files.pythonhosted.org/packages/18/67/36e9267722cc04a6b9f15c7f3441c2363321a3ea07da7ae0c0707beb2a9c/typing_extensions-4.15.0-py3-none-any.whl"
    sha256 "f0fa19c6845758ab08074a0cfa8b7aecb71c999ca73d62883bc25cc018c4e548"
  end

  resource "uvicorn" do
    url "https://files.pythonhosted.org/packages/3d/d8/2083a1daa7439a66f3a48589a57d576aa117726762618f6bb09fe3798796/uvicorn-0.40.0-py3-none-any.whl"
    sha256 "c6c8f55bc8bf13eb6fa9ff87ad62308bbbc33d0b67f84293151efe87e0d5f2ee"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/iqtoolkit-analyzer", "--version"
    assert_match "iqtoolkit-analyzer", shell_output("#{bin}/iqtoolkit-analyzer --help")
  end
end
