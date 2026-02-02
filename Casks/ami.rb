cask "ami" do
  version "0.0.6"
  sha256 "84583d27055d3dbf9feb06dfdfecdfca6e6b4e1fdcbe9c8220daccca56fd982f"

  url "https://github.com/millionco/ami-releases/releases/download/v#{version}/ami-macos-arm64-#{version}.zip"
  name "Ami"
  desc "Ami Desktop"
  homepage "https://github.com/millionco/ami-releases"

  depends_on arch: :arm64

  app "Ami.app"

  zap trash: [
    "~/Library/Application Support/Ami",
    "~/Library/Caches/Ami",
    "~/Library/Preferences/com.ami.app.plist",
  ]
end
