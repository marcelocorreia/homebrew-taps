require 'formula'

class GoTemplateEngine < Formula
  homepage 'https://github.com/marcelocorreia/go-template-engine'
  url 'https://github.com/marcelocorreia/go-template-engine/releases/download/3.1.5/go-template-engine-darwin-amd64-3.1.5.zip'
  version '3.1.5'
  sha256 '9a58f3cd2c1868975306eda59bda96bb292296bc1e20d0e085822cbe1e57ad33'

  depends_on :arch => :x86_64

  def install
    bin.install 'go-template-engine'
  end

  test do
    system "#{bin}/go-template-engine"
  end
end



