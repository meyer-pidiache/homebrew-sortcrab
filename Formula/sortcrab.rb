class Sortcrab < Formula
  desc "File organizer CLI \u2014 sort your downloads into categorized folders"
  homepage "https://github.com/meyer-pidiache/sortcrab"
  version "0.1.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/meyer-pidiache/sortcrab/releases/download/v0.1.7/sortcrab-aarch64-apple-darwin.tar.gz"
      sha256 "2e786783908a558d74f1487385ebef9a709d3733f2f039eabefbf6aeed1d5bbc"
    else
      url "https://github.com/meyer-pidiache/sortcrab/releases/download/v0.1.7/sortcrab-x86_64-apple-darwin.tar.gz"
      sha256 "a7feb99ee79b8e1c92370d2f967f740071a628c26a12df40c98d43a6ed78f01f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/meyer-pidiache/sortcrab/releases/download/v0.1.7/sortcrab-aarch64-unknown-linux-musl.tar.gz"
      sha256 "efdb1ea9200fac89203c268eb7133a88cbb65cbd0ef58c98d01931d977c5df21"
    else
      url "https://github.com/meyer-pidiache/sortcrab/releases/download/v0.1.7/sortcrab-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5d7185a0bf4633756ade1ac0b2d378d3f5d50109a8c1c7b962f6d95a8e227178"
    end
  end

  def install
    bin.install "sortcrab"
  end
end
