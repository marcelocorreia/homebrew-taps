require 'formula'

class GoTemplateEngine < Formula
  homepage 'https://github.com/marcelocorreia/go-template-engine'
  url 'https://github.com/marcelocorreia/go-template-engine/releases/download/3.0.0/go-template-engine-darwin-amd64-3.0.0.zip'
  version '3.0.0'
  sha256 '078a7b2b0827b9d5da4e34716b976a2deb71b4dd1b86815413a024dbeaaff040'

  depends_on :arch => :x86_64

  def install
    bin.install 'go-template-engine'
  end

  test do
    system "#{bin}/go-template-engine"
  end
end



