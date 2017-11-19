require 'formula'

class GoTemplateEngine < Formula
  homepage 'https://github.com/marcelocorreia/go-template-engine'
  url 'https://github.com/marcelocorreia/go-template-engine/releases/download/1.0.0/go-template-engine-darwin-amd64-1.0.0.tar.gz'
  version '1.0.0'
  sha256 '342eab5330f5d82599bf7216696ca04eaf804bc5196e7deb841305a8d01e65c4'

  depends_on :arch => :x86_64

  def install
    bin.install 'go-template-engine'
  end

  test do
    system "#{bin}/go-template-engine"
  end
end