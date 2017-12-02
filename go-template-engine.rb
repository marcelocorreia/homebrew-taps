require 'formula'

class GoTemplateEngine < Formula
  homepage 'https://github.com/marcelocorreia/go-template-engine'
  url 'https://github.com/marcelocorreia/go-template-engine/releases/download/1.5.0/go-template-engine-darwin-amd64-1.5.0.tar.gz'
  version '1.5.0'
  sha256 'c4e8eba9547ccb0a33a380e5e058ba26bcdda2d18452c4d1d8848d1d8fb7c275

  depends_on :arch => :x86_64

  def install
    bin.install 'go-template-engine'
  end

  test do
    system "#{bin}/go-template-engine"
  end
end