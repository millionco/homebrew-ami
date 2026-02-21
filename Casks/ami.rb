cask "ami" do
  version "0.0.15"
  sha256 "0e228c0d0c7d33ac3b89303c1f08ec2b1faca0b313530f9a842b0be89ec78c20"

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
