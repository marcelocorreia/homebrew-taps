require 'formula'

class GoTemplateEngine < Formula
  homepage 'https://github.com/marcelocorreia/go-template-engine'
  url 'https://github.com/marcelocorreia/go-template-engine/releases/download/1.12.0/go-template-engine-darwin-amd64-1.12.0.zip'
  version '1.12.0'
  sha256 '7d2c5976606a945fcb2180b5949fdbe19778b000aa00f4f9fca57e1ee75b2fd0'

  depends_on :arch => :x86_64

  def install
    bin.install 'go-template-engine'
  end

  test do
    system "#{bin}/go-template-engine"
  end
end



