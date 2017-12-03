require 'formula'

class GoTemplateEngine < Formula
  homepage 'https://github.com/marcelocorreia/go-template-engine'
  url 'https://github.com/marcelocorreia/go-template-engine/releases/download/1.34.0/go-template-engine-darwin-amd64-1.34.0.zip'
  version '1.34.0'
  sha256 'dfa59be933378b5569f48985b7e4065b403bdb0fa9e0160e9cf9624f3a4208cf'

  depends_on :arch => :x86_64

  def install
    bin.install 'go-template-engine'
  end

  test do
    system "#{bin}/go-template-engine"
  end
end