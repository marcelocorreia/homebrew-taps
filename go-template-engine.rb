require 'formula'

class GoTemplateEngine < Formula
  homepage 'https://github.com/marcelocorreia/go-template-engine'
  url 'https://github.com/marcelocorreia/go-template-engine/releases/download/3.0.4/go-template-engine-darwin-amd64-3.0.4.zip'
  version '3.0.4'
  sha256 'ef39e8621d3428c8ca3240d1f78b76ec9a34c5170c1204ce8b1be24a42f93bce'

  depends_on :arch => :x86_64

  def install
    bin.install 'go-template-engine'
  end

  test do
    system "#{bin}/go-template-engine"
  end
end



