require 'formula'

class GoTemplateEngine < Formula
  homepage 'https://github.com/marcelocorreia/go-template-engine'
  url 'https://github.com/marcelocorreia/go-template-engine/releases/download/1.48.0/go-template-engine-darwin-amd64-1.51.0.zip'
  version '1.51.0'
  sha256 '0fdf5e5318a315c2f889243a93c05ca598132aa88f504ba1dc135cbd1b43d101'

  depends_on :arch => :x86_64

  def install
    bin.install 'go-template-engine'
  end

  test do
    system "#{bin}/go-template-engine"
  end
end



