cask "frame" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.35.0"
  sha256 arm:   "51ac044f87861c977baf7bdb21936bcc0b0b0e88dffe8f0657e09683fc246e3f",
         intel: "2252da7d6e54f44359e22671390ab7bebe6cfbc772d8ec0f1ab7975914121597"

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
