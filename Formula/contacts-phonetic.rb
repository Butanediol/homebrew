class ContactsPhonetic < Formula
  desc "Add phonetic names to contacts. Crafted by Elethom originally."
  homepage "https://github.com/Butanediol/contacts-phonetic"
  url "https://github.com/Butanediol/contacts-phonetic/archive/0.3.tar.gz"
  sha256 "cf9d04b484fc41837a5f86cade99bb60834a39b08aafa6848d33b6b1f88f1a7d"

  depends_on :macos => :el_capitan

  def install
    system "make"
    bin.install "contacts-phonetic"
  end

  test do
    output = shell_output("contacts-phonetic -v")
    assert_equal "contacts-phonetic version #{version} Copyright (c) 2016 Elethom Hunter\n", output
  end
end
