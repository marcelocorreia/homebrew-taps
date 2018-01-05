require 'formula'

class GoTemplateEngine < Formula
  homepage 'https://github.com/marcelocorreia/go-template-engine'
  url 'https://github.com/marcelocorreia/go-template-engine/releases/download/1.60.0/go-template-engine-darwin-amd64-1.62.0.zip'
  version '1.62.0'
  sha256 '026df6edd153798ef0a1e6d649a13048f5feec10285df2df42288be3c91363ad'

  depends_on :arch => :x86_64

  def install
    bin.install 'go-template-engine'
  end

  test do
    system "#{bin}/go-template-engine"
  end
end



