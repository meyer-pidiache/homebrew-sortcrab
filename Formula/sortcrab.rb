class Sortcrab < Formula
  desc "File organizer CLI \u2014 sort your downloads into categorized folders"
  homepage "https://github.com/meyer-pidiache/sortcrab"
  version "0.1.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/meyer-pidiache/sortcrab/releases/download/v0.1.3/sortcrab-aarch64-apple-darwin.tar.gz"
      sha256 "a1e1f74cf18b63d5303a1075d12093c12697e208d4718b787d3d85341b30ddc7"
    else
      url "https://github.com/meyer-pidiache/sortcrab/releases/download/v0.1.3/sortcrab-x86_64-apple-darwin.tar.gz"
      sha256 "33fc966bbd6a821ea962545e977f1af2d07f337005bafc4c97a1fd8958025190"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/meyer-pidiache/sortcrab/releases/download/v0.1.3/sortcrab-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "932af5c5719c288c096beb4c925c426bab12e210a88232a41b373dde4ca47a97"
    else
      url "https://github.com/meyer-pidiache/sortcrab/releases/download/v0.1.3/sortcrab-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fe61939dfddbd2c91eea0bfc4b8ba9d228eccc3f0a54c1a098bf97f84cc9985f"
    end
  end

  def install
    bin.install "sortcrab"
  end
end
