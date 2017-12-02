require 'formula'

class GoTemplateEngine < Formula
  homepage 'https://github.com/marcelocorreia/go-template-engine'
  url 'https://github.com/marcelocorreia/go-template-engine/releases/download/1.6.0/go-template-engine-darwin-amd64-1.6.0.tar.gz'
  version '1.6.0'
  sha256 '8335009a8f76346afffd36b5c75a42e1d1458f4376f8d60e622b09447eac2416'

  depends_on :arch => :x86_64

  def install
    bin.install 'go-template-engine'
  end

  test do
    system "#{bin}/go-template-engine"
  end
end
