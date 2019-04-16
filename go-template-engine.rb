require 'formula'

class GoTemplateEngine < Formula
  homepage 'https://github.com/marcelocorreia/go-template-engine'
  url 'https://github.com/marcelocorreia/go-template-engine/releases/download/3.1.4/go-template-engine-darwin-amd64-3.1.4.zip'
  version '3.1.4'
  sha256 '44b49f427ea270cbaeecde72a27db89caebaee7277b3bd9ed6cfae580558c80d'

  depends_on :arch => :x86_64

  def install
    bin.install 'go-template-engine'
  end

  test do
    system "#{bin}/go-template-engine"
  end
end



