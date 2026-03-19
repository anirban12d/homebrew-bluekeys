class Bluekeys < Formula
  desc "A feature-rich terminal typing test inspired by Monkeytype"
  homepage "https://github.com/anirban12d/bluekeys"
  version "1.3.2"
  license "GPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/anirban12d/bluekeys/releases/download/v#{version}/bluekeys-darwin-arm64.tar.gz"
      sha256 "1976d062c94000efbaaa7cbc766fff7bf273d774ab5f017eb1136c8aca778628"
    else
      url "https://github.com/anirban12d/bluekeys/releases/download/v#{version}/bluekeys-darwin-x64.tar.gz"
      sha256 "ef6cfecf637b2c8e8934a7bdca5b40f78c17f0c1f516e2ed74c9c6cdf3ee315e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/anirban12d/bluekeys/releases/download/v#{version}/bluekeys-linux-arm64.tar.gz"
      sha256 "bbf3027d51e07b12044421037d4774b2c0ae5e8b56f67d4ed0cf95ec17480b1c"
    else
      url "https://github.com/anirban12d/bluekeys/releases/download/v#{version}/bluekeys-linux-x64.tar.gz"
      sha256 "fd040f2e3df4e1018fa7a47834b8aba9ab43007883d1a160a9225a5e2a4b9f41"
    end
  end

  def install
    bin.install "bluekeys"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bluekeys --version")
  end
end
