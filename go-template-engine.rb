require 'formula'

class GoTemplateEngine < Formula
  homepage 'https://github.com/marcelocorreia/go-template-engine'
  url 'https://github.com/marcelocorreia/go-template-engine/releases/download/3.0.6/go-template-engine-darwin-amd64-3.0.6.zip'
  version '3.0.6'
  sha256 'fa6f30b8ed3d68ad51ef36104c29b935e4aedf373a6d26ed0364e9f0216062c0'

  depends_on :arch => :x86_64

  def install
    bin.install 'go-template-engine'
  end

  test do
    system "#{bin}/go-template-engine"
  end
end



