cask "frame" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "dmg", linux: "AppImage"

  version "0.35.0"
  sha256 arm:          "51ac044f87861c977baf7bdb21936bcc0b0b0e88dffe8f0657e09683fc246e3f",
         intel:        "2252da7d6e54f44359e22671390ab7bebe6cfbc772d8ec0f1ab7975914121597",
         arm64_linux:  "1beae9a2e935b0dd278c44dcb6fb3379c90d3d939a9b326ea3f611ab324e99fb",
         x86_64_linux: "5c17762d5a197e8b95a93bef75419955fc4f235f0a222400669921b9493b1081"

  on_macos do
    auto_updates true

    app "Frame.app"

    postflight_steps do
      run "/usr/bin/xattr",
          args: ["-rd", "com.apple.quarantine", "{{appdir}}/Frame.app"]
    end

    zap trash: [
      "~/Library/Application Support/com.66hex.frame",
      "~/Library/Caches/com.66hex.frame",
      "~/Library/Preferences/com.66hex.frame.plist",
      "~/Library/Saved Application State/com.66hex.frame.savedState",
    ]
  end
  on_linux do
    app_image "Frame-#{arch}.AppImage", target: "Frame.AppImage"

    zap trash: [
      "~/.cache/frame",
      "~/.config/frame",
    ]
  end

  url "https://github.com/66HEX/frame/releases/download/#{version}/Frame-#{arch}.#{os}"
  name "Frame"
  desc "High-performance media conversion utility"
  homepage "https://github.com/66HEX/frame"
end
