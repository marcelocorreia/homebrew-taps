require 'formula'

class GoTemplateEngine < Formula
  homepage 'https://github.com/marcelocorreia/go-template-engine'
  url 'https://github.com/marcelocorreia/go-template-engine/releases/download/1.36.0/go-template-engine-darwin-amd64-1.36.0.zip'
  version '1.36.0'
  sha256 '4dac2ba8dff8bb2b886a6bdc02fea58869229f723901f1e8a884c129ee6067fe'

  depends_on :arch => :x86_64

  def install
    bin.install 'go-template-engine'
  end

  test do
    system "#{bin}/go-template-engine"
  end
end