# This file was generated by GoReleaser. DO NOT EDIT.
class GoTemplateEngine < Formula
  desc "Go Template Engine (GTE) - Easy util to apply Go Templates in BAU jobs"
  homepage "https://marcelo.correia.io"
  url "https://github.com/marcelocorreia/go-template-engine/releases/download/3.3.2/go-template-engine-3.3.2-darwin-x86_64.tar.gz"
  version "3.3.2"
  sha256 "151aa857a49103b979db5d4fc616933367b24ec69ec7993747416554c3d72ce3"

  def install
    bin.install "go-template-engine"
  end

  test do
    system "#{bin}/go-template-engine --version"
  end
end
