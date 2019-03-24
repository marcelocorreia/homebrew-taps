require 'formula'

class GoTemplateEngine < Formula
  homepage 'https://github.com/marcelocorreia/go-template-engine'
  url 'https://github.com/marcelocorreia/go-template-engine/releases/download/3.0.2/go-template-engine-darwin-amd64-3.0.2.zip'
  version '3.0.2'
  sha256 '34cf49a25f4a97025bcc644a345965ae1794047974718d43646759c12573694e'

  depends_on :arch => :x86_64

  def install
    bin.install 'go-template-engine'
  end

  test do
    system "#{bin}/go-template-engine"
  end
end



