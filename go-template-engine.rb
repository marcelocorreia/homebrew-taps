require 'formula'

class GoTemplateEngine < Formula
  homepage 'https://github.com/marcelocorreia/go-template-engine'
  url 'https://github.com/marcelocorreia/go-template-engine/releases/download/1.54.0/go-template-engine-darwin-amd64-1.54.0.zip'
  version '1.54.0'
  sha256 '790162aba24e59b83d2d9c78af9075da5f7176d56149e597f9c317633c811633'

  depends_on :arch => :x86_64

  def install
    bin.install 'go-template-engine'
  end

  test do
    system "#{bin}/go-template-engine"
  end
end



