cask "frame" do
  arch arm: "aarch64", intel: "x64"

  version "0.27.0"
  sha256 arm:   "2f821a8a9ec675335ef7f16122ad13ee6af9119384aa91fd377ada3904a0728d",
         intel: "b312feb28b29fb9cbd7c73d80bdabca9a0826989d84b9ca4289ac3bfc30f69cc"

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
