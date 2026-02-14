cask "frame" do
  arch arm: "aarch64", intel: "x64"

  version "0.24.0"
  sha256 arm:   "4393a180a4015d304825ff17f2ad92506c231e071ce5f2635b2a1ce58f03577d",
         intel: "54114104bb9acde33f6b4eb5fe3e30a332c32fc7a3f5790f0d0e0e9b9298d92e"

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
