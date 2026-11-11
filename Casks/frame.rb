cask "frame" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.34.0"
  sha256 arm:   "16d1d01602507900e67e9c7b79b16564c936dddd632dd639736c0bb92513a2a7",
         intel: "a67780b632c27df52c82dc6ddc31379a578f569dbe0a19854d53f56b0902be73"

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
