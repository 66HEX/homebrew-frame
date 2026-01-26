cask "frame" do
  arch arm: "aarch64", intel: "x64"

  version "0.4.0"
  sha256 arm:   "e0142565c6856346a626be1fd3a274a400af1702fd15276ed4b8447f515cea76",
         intel: "7e1b8cca55fef54c78d70c91888bdf68d7e199490eb9d6fc72a611bb63b2ce36"

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
