require 'formula'

class GoTemplateEngine < Formula
  homepage 'https://github.com/marcelocorreia/go-template-engine'
  url 'https://github.com/marcelocorreia/go-template-engine/releases/download/2.6.11/<no value>'
  version '2.6.11'
  sha256 'deb8c8bc8fabe80f66f3988bb8ebcf9d4d9922c5f4dc6098818b0b154116e466'

  depends_on :arch => :x86_64

  def install
    bin.install 'go-template-engine'
  end

  test do
    system "#{bin}/go-template-engine"
  end
end



