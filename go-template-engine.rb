require 'formula'

class GoTemplateEngine < Formula
  homepage 'https://github.com/marcelocorreia/go-template-engine'
  url 'https://github.com/marcelocorreia/go-template-engine/releases/download/3.1.6/go-template-engine-darwin-amd64-3.1.6.zip'
  version '3.1.6'
  sha256 '79619da07cfc9881f8830e7d54eea5608ae0d86fae7ab2a13427ad84a923041b'

  depends_on :arch => :x86_64

  def install
    bin.install 'go-template-engine'
  end

  test do
    system "#{bin}/go-template-engine"
  end
end



