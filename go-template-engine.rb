require 'formula'

class GoTemplateEngine < Formula
  homepage 'https://github.com/marcelocorreia/go-template-engine'
  url 'https://github.com/marcelocorreia/go-template-engine/releases/download/1.56.0/go-template-engine-darwin-amd64-1.56.0.zip'
  version '1.56.0'
  sha256 '6e708fa1e308571f352dcc7e272c09a3169abd56490636978c558be6500a32d8'

  depends_on :arch => :x86_64

  def install
    bin.install 'go-template-engine'
  end

  test do
    system "#{bin}/go-template-engine"
  end
end



