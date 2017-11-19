require 'formula'

class GoTemplateEngine < Formula
  homepage 'https://github.com/marcelocorreia/go-template-engine'
  url 'https://github.com/marcelocorreia/go-template-engine/releases/download/1.2.0/go-template-engine-darwin-amd64-1.2.0.tar.gz'
  version '1.2.0'
  sha256 'a9295bc95fe9042ed0b5dd046127f67a7d09f68522bd3f798bb2a101a5aecd99'

  depends_on :arch => :x86_64

  def install
    bin.install 'go-template-engine'
  end

  test do
    system "#{bin}/go-template-engine"
  end
end