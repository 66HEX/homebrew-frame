cask "frame" do
  arch arm: "aarch64", intel: "x64"

  version "0.21.0"
  sha256 arm:   "38ca5df9ed99fe02d229e0a468a9e3793cad700cd1c0fea1c51f06e5bb24f58d",
         intel: "061455b1623566fcd86063c02eafdb9bbb796ae6163f9ac8b7fb3cc51a88f2a2"

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
