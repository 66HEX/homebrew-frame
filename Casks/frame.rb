cask "frame" do
  arch arm: "aarch64", intel: "x64"

  version "0.13.0"
  sha256 arm:   "d42792e0e1218f34ee8cfe3d7f4caec6f35930edae3f36445f6e5a89c2f98b7e",
         intel: "8d684cbdbd7171ca390e445313ac7b03465a54a698a5098179d5566d5bfa0e09"

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
