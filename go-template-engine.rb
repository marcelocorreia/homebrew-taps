require 'formula'

class GoTemplateEngine < Formula
  homepage 'https://github.com/marcelocorreia/go-template-engine'
  url 'https://github.com/marcelocorreia/go-template-engine/releases/download/1.48.0/dist/go-template-engine-darwin-amd64-1.48.0.zip'
  version '1.48.0'
  sha256 'f069117438d308c41d075821cfc2c0eebdcf8a387b42b609c30cc8fb043ebbc7'

  depends_on :arch => :x86_64

  def install
    bin.install 'go-template-engine'
  end

  test do
    system "#{bin}/go-template-engine"
  end
end



