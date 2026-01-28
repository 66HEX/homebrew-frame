cask "frame" do
  arch arm: "aarch64", intel: "x64"

  version "0.8.0"
  sha256 arm:   "70bef0bf21bebf006e5e5ca603d6999f5192e45d46b497246f3e2654724c8602",
         intel: "fbe2f8a4d3a4feb81e4ae618f5d3a25647df2df41fa7bf3f065914650389d8a1"

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
