cask "frame" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.30.0"
  sha256 arm:   "f707908273f0e1c86fc4d83e36e7ddbf81ea9a867d62aabff7befdd52951c6ac",
         intel: "ab39bf9505880a98116d125805cc156f851b22b805085ebedcb597fba670adba"

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
