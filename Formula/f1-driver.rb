class F1Driver < Formula
  desc "Top-down F1 racing simulator with signed lap times"
  homepage "https://github.com/Ekansh38/f1-driver"
  version "1.3.0"

  on_macos do
    on_arm do
      url "https://github.com/Ekansh38/f1-driver/releases/download/v1.3.0/f1-driver-macos-arm64.tar.gz"
      sha256 "164a69153891e1eca753cfd1e0cc2238abdbe7c8f764b69f10b071bd09cc6e35"
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
