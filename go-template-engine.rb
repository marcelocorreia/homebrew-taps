require 'formula'

class GoTemplateEngine < Formula
  homepage 'https://github.com/marcelocorreia/go-template-engine'
  url 'https://github.com/marcelocorreia/go-template-engine/releases/download/1.1.0/go-template-engine-darwin-amd64-1.1.0.tar.gz'
  version '1.1.0'
  sha256 '24c75fc123410d822fdc3b09d18ac4a11c128f2686b80fec50340c5e9a7d1b23'

  depends_on :arch => :x86_64

  def install
    bin.install 'go-template-engine'
  end

  test do
    system "#{bin}/go-template-engine"
  end
end