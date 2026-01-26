cask "ami" do
  version "0.0.4"
  sha256 "98e7898815de2e31867208e04b3b9788f05ddf49f46eb17dcaae7f76773553b9"

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
