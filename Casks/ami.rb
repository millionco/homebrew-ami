cask "ami" do
  version "0.0.3"
  sha256 "f6e31a9b1539f3804faa45eb65a8728e6aa288fc5db230f41a3d3c12e8ced15b"

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
