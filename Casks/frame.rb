cask "frame" do
  arch arm: "aarch64", intel: "x64"

  version "0.7.0"
  sha256 arm:   "a5044c689e7a25942b5bbbad7bccfecf8b1da8e67d6b00d709174bd6c92fcf2d",
         intel: "7afe0f12272d58c2e87538b45a2fd3c401ce552f182cd6d91583d4c8c4da2506"

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
