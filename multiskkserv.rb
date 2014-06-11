require "formula"

class Multiskkserv < Formula
  homepage "http://www3.big.or.jp/~sian/linux/products/"
  url "http://www3.big.or.jp/~sian/linux/products/multiskkserv-20100128.tar.xz"
  sha1 "b8c0602707c3cdb7851d7f07f6d893dd4d1e7c5c"

  def install
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make", "install"
  end
end
