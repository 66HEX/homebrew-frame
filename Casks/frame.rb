cask "frame" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.33.1"
  sha256 arm:   "c1f1efc22da31f293cbe3bdc2f0adfb6ab22b73a058ad71de58342ecf74f8458",
         intel: "e9b6df8bb9752010b9e91532a974c3d49bce50493ff9493443b2bf89bc64e4ae"

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
