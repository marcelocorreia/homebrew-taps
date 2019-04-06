require 'formula'

class GoTemplateEngine < Formula
  homepage 'https://github.com/marcelocorreia/go-template-engine'
  url 'https://github.com/marcelocorreia/go-template-engine/releases/download/3.0.5/go-template-engine-darwin-amd64-3.0.5.zip'
  version '3.0.5'
  sha256 '85d71f316999e7d982d87c6fd9e81156b14ac14090872033b9ceeb4647fc6e45'

  depends_on :arch => :x86_64

  def install
    bin.install 'go-template-engine'
  end

  test do
    system "#{bin}/go-template-engine"
  end
end



