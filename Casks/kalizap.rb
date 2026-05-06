cask "kalizap" do
  version "0.1.0"
  sha256 "12dea12718c1e514295f51f685e242b3b562c872f4720f90c9cf60a8a1628957"

  url "https://github.com/msandhofer/Kalizap/releases/download/v#{version}/Kalizap-#{version}.zip"
  name "Kalizap"
  desc "macOS Voice-to-Text mit Apple SpeechAnalyzer und Claude-Haiku-Korrektur"
  homepage "https://github.com/msandhofer/Kalizap"

  app "Kalizap.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Kalizap.app"],
                   sudo: false,
                   must_succeed: false
  end

  caveats <<~EOS
    Kalizap ist self-signed und nicht Apple-notarized (bewusste Entscheidung,
    kein Apple Developer Program — siehe README im Tap-Repo). Dieser Cask
    entfernt das Quarantine-Flag beim Install automatisch, damit die App ohne
    Gatekeeper-Bypass startet. Wer das nicht möchte, sollte den Tap nicht
    nutzen und stattdessen den Direct-Download-Workflow aus dem Hauptrepo
    wählen.

    Die TCC-Permissions (Mikrofon, Bedienungshilfen) bleiben über
    `brew upgrade --cask kalizap` hinweg erhalten, weil die App mit einer
    stabilen Self-Signed-Identity signiert ist.
  EOS

  zap trash: [
    "~/Library/Application Support/Kalizap",
    "~/Library/Preferences/com.sandhofer.kalizap.plist",
  ]
end
