require 'formula'

class GoTemplateEngine < Formula
  homepage 'https://github.com/marcelocorreia/go-template-engine'
  url 'https://github.com/marcelocorreia/go-template-engine/releases/download/2.3.0/go-template-engine-darwin-amd64-2.3.0.zip'
  version '2.3.0'
  sha256 'b7f2ab0df50dffd8d6d93336554ad135bf1cab0b1a114374ff08d3aa3d94fa4f'

  depends_on :arch => :x86_64

  def install
    bin.install 'go-template-engine'
  end

  test do
    system "#{bin}/go-template-engine"
  end
end



