cask "frame" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.0"
  sha256 arm:   "6f4a0f56d08851f464a53ad943b021d8ef8297341b8fc614e438f433f27b8b05",
         intel: "b788f9be8381b97177c580cc7a61bce7e3ee2cc0936555e8a558e14d24a8cace"

  url "https://github.com/66HEX/frame/releases/download/#{version}/Frame_#{version}_#{arch}.dmg"
  name "Frame"
  desc "High-performance media conversion utility"
  homepage "https://github.com/66HEX/frame"

  auto_updates true
  depends_on macos: ">= :high_sierra"

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
