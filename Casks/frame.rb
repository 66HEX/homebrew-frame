cask "frame" do
  arch arm: "aarch64", intel: "x64"

  version "0.25.3"
  sha256 arm:   "5b7a8ed42edbb9df48649d28f5186df3583357c3d282b58df8b3d8b0b1a131bc",
         intel: "5dc72fd7ddb6bc5e0bcfbb89109d934fa514f226dd18962f6223f008e0a78f2b"

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
