cask "frame" do
  arch arm: "aarch64", intel: "x64"

  version "0.25.3"
  sha256 arm:   "fffea02a8c32273b5f052bcffd8f1ee6caa538ed36331befad5f7bd8b2799c34",
         intel: "b91ad267882ffcc16a2d045cc2283cc58d1a0d8a935e451a6da825d88be70d2e"

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
