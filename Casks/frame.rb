cask "frame" do
  arch arm: "aarch64", intel: "x64"

  version "0.23.0"
  sha256 arm:   "95f917c4c6e88968f05e9c9969c6a9f8986b6ac7fa6d254befcd0cf93485eb13",
         intel: "ef3e73cdb70ad347d5eae1d8616992fd956c505463551aff37cf645b0d841f7a"

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
