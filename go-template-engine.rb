require 'formula'

class GoTemplateEngine < Formula
  homepage 'https://github.com/marcelocorreia/go-template-engine'
  url 'https://github.com/marcelocorreia/go-template-engine/releases/download/0.7.0/go-template-engine-linux-amd64.tar.gz'
  version '0.7.0'
  sha256 '969aff74d169d72cf117d7a0e83f5f86019ed72f477ac1b0f9d69fa8845caac2'

  depends_on :arch => :x86_64

  def install
    bin.install 'go-template-engine'
  end

  test do
    system "#{bin}/go-template-engine"
  end
end