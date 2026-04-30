cask "frame" do
  arch arm: "aarch64", intel: "x64"

  version "0.29.2"
  sha256 arm:   "09d7bb26f56b7fa71ab37305021021d9a2e67c833141c9ade7e1b1a20040b93d",
         intel: "a7dbd45fdc9a302f642f067843bc75be9618a6465e207758e64617be9c9dcb2d"

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
