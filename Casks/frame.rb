cask "frame" do
  arch arm: "aarch64", intel: "x64"

  version "0.24.1"
  sha256 arm:   "0e7321f3294009cbf8db8277a90f2775b875412fb07cab8e1b5d7aad6f87d1a5",
         intel: "1ae028f61086aa0d4f8eea32ffc85fba179c356fb3b0cbb0c0eb5d0de3073d4a"

  url "https://github.com/66HEX/frame/releases/download/#{version}/Frame_#{version}_#{arch}.dmg"
  name "Frame"
  desc "High-performance media conversion utility"
  homepage "https://github.com/66HEX/frame"

  auto_updates true

  app "Frame.app"

  zap trash: [
    "~/Library/Application Support/com.66hex.frame",
    "~/Library/Caches/com.66hex.frame",
    "~/Library/Preferences/com.66hex.frame.plist",
    "~/Library/Saved Application State/com.66hex.frame.savedState",
  ]

  caveats <<~EOS
    Frame is not notarized. On first launch, you may need to:
    1. Right-click the app and select "Open".
    2. Click "Open" in the security dialog.

    Alternatively, you can run:
      xattr -dr com.apple.quarantine /Applications/Frame.app
  EOS
end
