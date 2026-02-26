cask "frame" do
  arch arm: "aarch64", intel: "x64"

  version "0.25.2"
  sha256 arm:   "da38f0c414778a8bf0dfeab43ed646d86d5b1ee28019b65a992b1aa508e0a8c0",
         intel: "b8f2fb787b834926e1906a171c21d3ab728fa6c044e35ea5eac46e6137c550c2"

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
