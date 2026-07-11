cask "frame" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.31.0"
  sha256 arm:   "8077885fd662b7dabc4a6b269602542de2b4d2d7fe8b619deb8703fab8d4a3ed",
         intel: "96facc8e8ca0bd1a9fad023eb5f8ded4813fae2fd9ebcb942f77d5f5a095ed1f"

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
