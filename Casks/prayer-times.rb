cask "prayer-times" do
  version "1.0.2"
  sha256 "d8d8582fa1193667cf73ca24d2f10e03035187fc01092c7ea659718a3d2eade8"

  url "https://github.com/lutfullahkabalak/prayer-times-for-mac/releases/download/v#{version}/PrayerTimes-#{version}.zip"
  name "Prayer Times"
  desc "Menu bar prayer times using Diyanet data"
  homepage "https://lutfullahkabalak.github.io/prayer-times-for-mac/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "PrayerTimes.app"

  zap trash: [
    "~/Library/Containers/com.lutfullahkabalak.prayertimes",
    "~/Library/Preferences/com.lutfullahkabalak.prayertimes.plist",
  ]
end
