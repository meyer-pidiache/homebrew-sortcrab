class Sortcrab < Formula
  desc "File organizer CLI \u2014 sort your downloads into categorized folders"
  homepage "https://github.com/meyer-pidiache/sortcrab"
  version "0.1.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/meyer-pidiache/sortcrab/releases/download/v0.1.5/sortcrab-aarch64-apple-darwin.tar.gz"
      sha256 "57ddeb53f1cf8fbca8c49faceced3972de563b440af85ed564d6c3e27f322ded"
    else
      url "https://github.com/meyer-pidiache/sortcrab/releases/download/v0.1.5/sortcrab-x86_64-apple-darwin.tar.gz"
      sha256 "e0291fed64d0e84a826ec8b6104ea081659b9d56bed68ca640e335b094bbd171"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/meyer-pidiache/sortcrab/releases/download/v0.1.5/sortcrab-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a8637da5e24340b28ed17bd98fd90af907238f623e3293878913d38e681552fa"
    else
      url "https://github.com/meyer-pidiache/sortcrab/releases/download/v0.1.5/sortcrab-x86_64-unknown-linux-musl.tar.gz"
      sha256 "819adce010d4a4a349c95da3b46b1ecc870a7c12e5e718d0ee5442fcc0085c5d"
    end
  end

  def install
    bin.install "sortcrab"
  end
end
