class ContactsPhonetic < Formula
  desc "Add phonetic names to contacts."
  homepage "https://github.com/Elethom/contacts-phonetic"
  url "https://github.com/Elethom/contacts-phonetic/archive/0.3.tar.gz"
  sha256 "7d08bbfebabc3d1992d6bd66d452228b66ffec570e0250c0f659fd33f836908e"

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
