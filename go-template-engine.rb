# This file was generated by GoReleaser. DO NOT EDIT.
class GoTemplateEngine < Formula
  desc "Go Template Engine (GTE) - Easy util to apply Go Templates in BAU jobs"
  homepage "https://marcelo.correia.io"
  url "https://github.com/marcelocorreia/go-template-engine/releases/download/3.3.6/go-template-engine-3.3.6-darwin-x86_64.tar.gz"
  version "3.3.6"
  sha256 "1220f2065951d9facfaa826251ebf25c7a74c5fb23379b78938d49ca4b662cab"

  def install
    bin.install "go-template-engine"
    system "ln","-s","/usr/local/bin/go-template-engine","/usr/local/bin/gte"
  end

  test do
    system "#{bin}/go-template-engine --version"
  end
end
