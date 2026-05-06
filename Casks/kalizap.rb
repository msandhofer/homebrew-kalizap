cask "kalizap" do
  version "0.1.0"
  sha256 "12dea12718c1e514295f51f685e242b3b562c872f4720f90c9cf60a8a1628957"

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
