class F1Driver < Formula
  desc "Top-down F1 racing simulator with signed lap times"
  homepage "https://github.com/Ekansh38/f1-driver"
  version "1.2.0"

  on_macos do
    on_arm do
      url "https://github.com/Ekansh38/f1-driver/releases/download/v1.2.0/f1-driver-macos-arm64.tar.gz"
      sha256 "11b8e0b2a7bb3cb293e3f155a7c17e01f53ffdb562dd81a0882ecdeb70a78ec9"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"f1-driver"
  end

  test do
    assert_predicate bin/"f1-driver", :exist?
  end
end
