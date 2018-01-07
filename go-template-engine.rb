require 'formula'

class GoTemplateEngine < Formula
  homepage 'https://github.com/marcelocorreia/go-template-engine'
  url 'https://github.com/marcelocorreia/go-template-engine/releases/download/2.1.0/go-template-engine-darwin-amd64-2.1.0.zip'
  version '2.1.0'
  sha256 '4246a05d39671269bc51061c817519eec4ae6ea2e3992ae07600e82e36bf98ca'

  depends_on :arch => :x86_64

  def install
    bin.install 'go-template-engine'
  end

  test do
    system "#{bin}/go-template-engine"
  end
end



