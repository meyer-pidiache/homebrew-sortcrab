class Sortcrab < Formula
  desc "File organizer CLI \u2014 sort your downloads into categorized folders"
  homepage "https://github.com/meyer-pidiache/sortcrab"
  version "0.1.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/meyer-pidiache/sortcrab/releases/download/v0.1.6/sortcrab-aarch64-apple-darwin.tar.gz"
      sha256 "36a3226678e1f540606272325d1c378c0e6b00d6de0cb009d25807494469ce39"
    else
      url "https://github.com/meyer-pidiache/sortcrab/releases/download/v0.1.6/sortcrab-x86_64-apple-darwin.tar.gz"
      sha256 "f21ae50d47fe54c6451d6e6282384cdd174cf166f46fd8af79e3fe25efeafef8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/meyer-pidiache/sortcrab/releases/download/v0.1.6/sortcrab-aarch64-unknown-linux-musl.tar.gz"
      sha256 "631e16faf9280b62a6b0cd16f0055c95b8fd5f71250f8a19213b413e2112f6d6"
    else
      url "https://github.com/meyer-pidiache/sortcrab/releases/download/v0.1.6/sortcrab-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9c9c5db92d9cc5e2d4be9f2f1180a0edfcd724313cea72e6bdcb8a24d97c45cf"
    end
  end

  def install
    bin.install "sortcrab"
  end
end
