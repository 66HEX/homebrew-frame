cask "frame" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.31.1"
  sha256 arm:   "f85ee5756b26b7569f99a2e3ddbbce6ee2781c5ef82cf4be2468f373dbf6c4c4",
         intel: "642cb0fba6b6ee548473f4b29f2ae8338d3d8266fb8869a4c89281177cd92a90"

  url "https://github.com/66HEX/frame/releases/download/#{version}/Frame-#{arch}.dmg"
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
