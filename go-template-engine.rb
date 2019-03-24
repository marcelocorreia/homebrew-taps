require 'formula'

class GoTemplateEngine < Formula
  homepage 'https://github.com/marcelocorreia/go-template-engine'
  url 'https://github.com/marcelocorreia/go-template-engine/releases/download/2.7.1/go-template-engine-darwin-amd64-2.7.1.zip'
  version '2.7.1'
  sha256 '2e9f3613aa3286b9b62bbc3383ac399d031d352198f064b3ed980e2da674ced0'

  depends_on :arch => :x86_64

  def install
    bin.install 'go-template-engine'
  end

  test do
    system "#{bin}/go-template-engine"
  end
end



