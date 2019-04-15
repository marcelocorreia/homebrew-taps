require 'formula'

class GoTemplateEngine < Formula
  homepage 'https://github.com/marcelocorreia/go-template-engine'
  url 'https://github.com/marcelocorreia/go-template-engine/releases/download/3.0.8/go-template-engine-darwin-amd64-3.0.8.zip'
  version '3.0.8'
  sha256 'd4aec283769afca5ef2d79a9082de2231e7dc865cd0140d9f78d85ae72280e5b'

  depends_on :arch => :x86_64

  def install
    bin.install 'go-template-engine'
  end

  test do
    system "#{bin}/go-template-engine"
  end
end



