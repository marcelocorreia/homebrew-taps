require 'formula'

class GoTemplateEngine < Formula
  homepage 'https://github.com/marcelocorreia/go-template-engine'
  url 'https://github.com/marcelocorreia/go-template-engine/releases/download/3.1.3/go-template-engine-darwin-amd64-3.1.3.zip'
  version '3.1.3'
  sha256 '0b445a69179bb9741462c2350629b6c373f2c0faaa2efbbb930894b889c8adf4'

  depends_on :arch => :x86_64

  def install
    bin.install 'go-template-engine'
  end

  test do
    system "#{bin}/go-template-engine"
  end
end



