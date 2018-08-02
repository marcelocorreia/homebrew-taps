require 'formula'

class GoTemplateEngine < Formula
  homepage 'https://github.com/marcelocorreia/go-template-engine'
  url 'https://github.com/marcelocorreia/go-template-engine/releases/download/2.5.0/go-template-engine-darwin-amd64-2.5.0.zip'
  version '2.5.0'
  sha256 'c2a700ca40ae4b451e3daf4b32f42bc59ed8a5f85ea15907db78f68e93ecf175'

  depends_on :arch => :x86_64

  def install
    bin.install 'go-template-engine'
  end

  test do
    system "#{bin}/go-template-engine"
  end
end



