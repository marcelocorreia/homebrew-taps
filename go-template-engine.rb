require 'formula'

class GoTemplateEngine < Formula
  homepage 'https://github.com/marcelocorreia/go-template-engine'
  url 'https://github.com/marcelocorreia/go-template-engine/releases/download/2.2.0/go-template-engine-darwin-amd64-2.2.0.zip'
  version '2.2.0'
  sha256 'e96f71ee27ffa449c63c21e95483f79ca12e9e42e97bd975a04fb51d2118a9bf'

  depends_on :arch => :x86_64

  def install
    bin.install 'go-template-engine'
  end

  test do
    system "#{bin}/go-template-engine"
  end
end



