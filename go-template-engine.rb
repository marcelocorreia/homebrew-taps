require 'formula'

class GoTemplateEngine < Formula
  homepage 'https://github.com/marcelocorreia/go-template-engine'
  url 'https://github.com/marcelocorreia/go-template-engine/releases/download/2.6.21/go-template-engine-darwin-amd64-2.6.21.zip'
  version '2.6.21'
  sha256 '573002d3541ea312e92b001f315ddb65a3cf6d7c93581c60d27f0ffccbdff456'

  depends_on :arch => :x86_64

  def install
    bin.install 'go-template-engine'
  end

  test do
    system "#{bin}/go-template-engine"
  end
end



