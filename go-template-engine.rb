# This file was generated by GoReleaser. DO NOT EDIT.
class GoTemplateEngine < Formula
  desc "Go Template Engine (GTE) - Easy util to apply Go Templates in BAU jobs"
  homepage "https://marcelo.correia.io"
  url "https://github.com/marcelocorreia/go-template-engine/releases/download/3.3.3/go-template-engine-3.3.3-darwin-x86_64.tar.gz"
  version "3.3.3"
  sha256 "0866f93b9529d12a37a2b193e0599ee405d5374a6d1fff63ed0647923a724132"

  def install
    bin.install "go-template-engine"
  end

  test do
    system "#{bin}/go-template-engine --version"
  end
end
