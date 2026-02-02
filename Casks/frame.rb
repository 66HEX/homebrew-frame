cask "frame" do
  arch arm: "aarch64", intel: "x64"

  version "0.18.0"
  sha256 arm:   "5e8cdc8ce180ee41bb7714c656ddcf0b853d2eb4bdede37782d196d5cc7d1a2b",
         intel: "f11a043437591725ec01ec4884932a0280cc804871abce7045ddf95860e459d8"

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
