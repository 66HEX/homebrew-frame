cask "frame" do
  arch arm: "aarch64", intel: "x64"

  version "0.26.0"
  sha256 arm:   "bf0a2aa71b9c975f0307d81ff91928c67bc161593080445b8f116dcd7c4b9bac",
         intel: "c69ffa2a97dd38110dac686a62457ce0d262293340aa73c550708778dff0e745"

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
