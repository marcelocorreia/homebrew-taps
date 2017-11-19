require 'formula'

class GoTemplateEngine < Formula
  homepage 'https://github.com/marcelocorreia/go-template-engine'
  url 'https://github.com/marcelocorreia/go-template-engine/releases/download/1.0.0/go-template-engine-darwin-amd64-1.0.0.tar.gz'
  version '1.0.0'
  sha256 '5cae6fa8c2e66ed05ace2b21f5504bc3025a582f1193db753fa2e3ce078e12e7'

  depends_on :arch => :x86_64

  def install
    bin.install 'go-template-engine'
  end

  test do
    system "#{bin}/go-template-engine"
  end
end