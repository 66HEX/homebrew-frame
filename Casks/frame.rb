cask "frame" do
  arch arm: "aarch64", intel: "x64"

  version "0.22.0"
  sha256 arm:   "d71f923639605f7848a9da6d2af5a2ef8f12f4782eb6be95bd80b9b6b7260177",
         intel: "5e0f63d8bb768135bb3675ba15dfc71c8f20d1d37eb5b37390563307ab1c2997"

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
