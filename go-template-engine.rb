require 'formula'

class GoTemplateEngine < Formula
  homepage 'https://github.com/marcelocorreia/go-template-engine'
  url 'https://github.com/marcelocorreia/go-template-engine/releases/download/2.0.0/go-template-engine-darwin-amd64-2.0.0.zip'
  version '1.62.0'
  sha256 '6f7049646377b4d3c05645f67f3009e64acc3a19a51f1bffa9f01ac568923e74'

  depends_on :arch => :x86_64

  def install
    bin.install 'go-template-engine'
  end

  test do
    system "#{bin}/go-template-engine"
  end
end



