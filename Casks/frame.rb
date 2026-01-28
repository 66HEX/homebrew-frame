cask "frame" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.0"
  sha256 arm:   "29865da078cdf958e711d9a171985d8074636aa3739f5d0f09a8f20281e3ea4b",
         intel: "a416ac73b7f39d567bad40f8e2704653717400d831b4cbfd791eb028785ba54e"

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
