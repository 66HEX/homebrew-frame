cask "frame" do
  arch arm: "aarch64", intel: "x64"

  version "0.14.0"
  sha256 arm:   "5f22c6d457f68eccb2fc345ce4cdcc626112c91c86292fc2a83e43f5ab37e3e3",
         intel: "7509f375fb02318c42c8b3541260f6be6492807fe048b8150ec8808f3f9ef36c"

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
