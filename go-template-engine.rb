require 'formula'

class GoTemplateEngine < Formula
  homepage 'https://github.com/marcelocorreia/go-template-engine'
  url 'https://github.com/marcelocorreia/go-template-engine/releases/download/1.9.0/go-template-engine-darwin-amd64-1.9.0.tar.gz'
  version '1.9.0'
  sha256 'edf38d04f4cf22a216e90f53378b634488e802358ed6baa3c24944e2bc8986f9'

  depends_on :arch => :x86_64

  def install
    bin.install 'go-template-engine'
  end

  test do
    system "#{bin}/go-template-engine"
  end
end