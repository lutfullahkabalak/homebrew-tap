cask "prayer-times" do
  version "1.0.3"
  sha256 "03cb5eb0595ef3cdffd7e9737a727a4318304e375982489214db39b15580ee37"

  url "https://github.com/lutfullahkabalak/prayer-times-for-mac/releases/download/v#{version}/PrayerTimes-#{version}.zip"
  name "Prayer Times"
  desc "Menu bar prayer times using Diyanet data"
  homepage "https://lutfullahkabalak.github.io/prayer-times-for-mac/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "PrayerTimes.app"

  zap trash: [
    "~/Library/Containers/com.lutfullahkabalak.prayertimes",
    "~/Library/Preferences/com.lutfullahkabalak.prayertimes.plist",
  ]
end
