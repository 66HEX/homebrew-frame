cask "frame" do
  arch arm: "aarch64", intel: "x64"

  version "0.10.0"
  sha256 arm:   "771fdc64338fa41bf2cc0f8e43bbbb7f0008e00b8e977bfe2d038ae423907aeb",
         intel: "a1dd720892dbb9996642bfe0a81e8ac92813a47928ecb155c792547bbfa17e25"

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
