class Sortcrab < Formula
  desc "File organizer CLI \u2014 sort your downloads into categorized folders"
  homepage "https://github.com/meyer-pidiache/sortcrab"
  version "0.1.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/meyer-pidiache/sortcrab/releases/download/v0.1.4/sortcrab-aarch64-apple-darwin.tar.gz"
      sha256 "28ec44c8ed58569043fc70297f67c17689af0c5242acc85b3a1bde3bab2ff216"
    else
      url "https://github.com/meyer-pidiache/sortcrab/releases/download/v0.1.4/sortcrab-x86_64-apple-darwin.tar.gz"
      sha256 "980b3b44a493c85dd7d939e20c0bfe239ac9b487537e3430a5dfe9d54824ed20"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/meyer-pidiache/sortcrab/releases/download/v0.1.4/sortcrab-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "006917383259a07c5408a0721a732952c73222acf4a0fd76dd1bdadc061d6b29"
    else
      url "https://github.com/meyer-pidiache/sortcrab/releases/download/v0.1.4/sortcrab-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f211bb71affc3e8ce474c4b3d4773593adaffd36b1bc8fa85dc27dd5e7d93394"
    end
  end

  def install
    bin.install "sortcrab"
  end
end
