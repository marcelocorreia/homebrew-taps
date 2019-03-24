require 'formula'

class GoTemplateEngine < Formula
  homepage 'https://github.com/marcelocorreia/go-template-engine'
  url 'https://github.com/marcelocorreia/go-template-engine/releases/download/2.6.12/go-template-engine-darwin-amd64-2.6.12.zip'
  version '2.6.12'
  sha256 'b85ebc7e4bd206348e9449f0c9254d983e68463f2725e8bd0d14da1d6434ef1d'

  depends_on :arch => :x86_64

  def install
    bin.install 'go-template-engine'
  end

  test do
    system "#{bin}/go-template-engine"
  end
end



