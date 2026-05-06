cask "kalizap" do
  version "0.1.0"
  sha256 "2864fb870217485b811ffdde7603275e3c2c15b240f91dc3b143665a79a4ef6f"

  url "https://github.com/msandhofer/Kalizap/releases/download/v#{version}/Kalizap-#{version}.zip"
  name "Kalizap"
  desc "macOS Voice-to-Text mit Apple SpeechAnalyzer und Claude-Haiku-Korrektur"
  homepage "https://github.com/msandhofer/Kalizap"

  app "Kalizap.app"

  zap trash: [
    "~/Library/Application Support/Kalizap",
    "~/Library/Preferences/com.sandhofer.kalizap.plist",
  ]
end
