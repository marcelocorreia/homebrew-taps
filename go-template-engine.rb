require 'formula'

class GoTemplateEngine < Formula
  homepage 'https://github.com/marcelocorreia/go-template-engine'
  url 'https://github.com/marcelocorreia/go-template-engine/releases/download/1.55.0/go-template-engine-darwin-amd64-1.55.0.zip'
  version '1.55.0'
  sha256 '11f72cf09cfbf3a372e1cbc013a83ce04fde8a5a11b662875f0b4d2c4bbc03e4'

  depends_on :arch => :x86_64

  def install
    bin.install 'go-template-engine'
  end

  test do
    system "#{bin}/go-template-engine"
  end
end



