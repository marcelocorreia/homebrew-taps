require 'formula'

class GoTemplateEngine < Formula
  homepage 'https://github.com/marcelocorreia/go-template-engine'
  url 'https://github.com/marcelocorreia/go-template-engine/releases/download/3.0.3/go-template-engine-darwin-amd64-3.0.3.zip'
  version '3.0.3'
  sha256 'c1b38402632ad2fe3ba0349e7c6866aa844f8d5400e28321919a10da9cbda58d'

  depends_on :arch => :x86_64

  def install
    bin.install 'go-template-engine'
  end

  test do
    system "#{bin}/go-template-engine"
  end
end



