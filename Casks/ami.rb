cask "ami" do
  version "0.0.8"
  sha256 "4574cf0339d16c85c79a4fa497c59f9e4a7e0e22c7e7e16f7578bdf09eca290a"

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
