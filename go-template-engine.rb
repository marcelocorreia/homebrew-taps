require 'formula'

class GoTemplateEngine < Formula
  homepage 'https://github.com/marcelocorreia/go-template-engine'
  url 'https://github.com/marcelocorreia/go-template-engine/releases/download/3.0.7/go-template-engine-darwin-amd64-3.0.7.zip'
  version '3.0.7'
  sha256 'f07ad69ca06f9ea0139d31b851e482caee8e0a242658b436e805ec89296a9590'

  depends_on :arch => :x86_64

  def install
    bin.install 'go-template-engine'
  end

  test do
    system "#{bin}/go-template-engine"
  end
end



