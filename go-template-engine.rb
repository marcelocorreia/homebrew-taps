require 'formula'

class GoTemplateEngine < Formula
  homepage 'https://github.com/marcelocorreia/go-template-engine'
  url 'https://github.com/marcelocorreia/go-template-engine/releases/download/1.33.0/go-template-engine-darwin-amd64-1.33.0.zip'
  version '1.33.0'
  sha256 'f3f2b2ee1360980f827f7b60f62bed56af4914779dd926858f109bdb52676cfa'

  depends_on :arch => :x86_64

  def install
    bin.install 'go-template-engine'
  end

  test do
    system "#{bin}/go-template-engine"
  end
end