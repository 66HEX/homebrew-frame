cask "frame" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.32.0"
  sha256 arm:   "8fa9f3e2dc0fe06cc21072d78b5d58903c418e6f1a57db2bf575ee6dc561a6ef",
         intel: "8e1b9f5794a20a6bed68d4ba24f3d9d4ad715c8e34a4618ef587b89263fc7fb6"

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

end
