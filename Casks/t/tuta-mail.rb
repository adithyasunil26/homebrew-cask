cask "tuta-mail" do
  version "220.240403.0"
  sha256 "31f21833dfa199335cfbd070feecf33506b31c825ab9620aec173162ecba1c2f"

  url "https://github.com/tutao/tutanota/releases/download/tutanota-desktop-release-#{version}/tutanota-desktop-mac.dmg",
      verified: "github.com/tutao/tutanota/"
  name "Tuta Mail"
  desc "Email client"
  homepage "https://tuta.com/"

  livecheck do
    url "https://app.tuta.com/desktop/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Tuta Mail.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/de.tutao.tutanota.sfl*",
    "~/Library/Application Support/tutanota-desktop",
    "~/Library/Caches/de.tutao.tutanota",
    "~/Library/Caches/de.tutao.tutanota.ShipIt",
    "~/Library/Preferences/de.tutao.tutanota.plist",
  ]
end
