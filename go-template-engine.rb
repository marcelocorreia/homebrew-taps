require 'formula'

class GoTemplateEngine < Formula
  homepage 'https://github.com/marcelocorreia/go-template-engine'
  url 'https://github.com/marcelocorreia/go-template-engine/releases/download/1.60.0/go-template-engine-darwin-amd64-1.60.0.zip'
  version '1.60.0'
  sha256 '424e81758ccdb03a87eedea056ebd6a5415822ad527e02e415034b57eaa0089f'

  depends_on :arch => :x86_64

  def install
    bin.install 'go-template-engine'
  end

  test do
    system "#{bin}/go-template-engine"
  end
end



