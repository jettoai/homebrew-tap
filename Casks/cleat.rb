cask "cleat" do
  version "0.1.0"
  sha256 "6a795ecd7520185d4d37ab78f9019e53bae5d903316e8bac4b4f0ca833c13a9f"

  url "https://github.com/jettoai/cleat/releases/download/v#{version}/Cleat-#{version}.zip"
  name "Cleat"
  desc "Keeps audio devices where you declared them"
  homepage "https://github.com/jettoai/cleat"

  depends_on macos: :sonoma

  app "Cleat.app"
  # The app bundle is the CLI too: `cleat status` and `cleat log` are the same binary with a
  # subcommand, so there is nothing else to install.
  binary "#{appdir}/Cleat.app/Contents/MacOS/Cleat", target: "cleat"

  uninstall quit: "ai.jetto.cleat"

  zap trash: [
    "~/Library/Application Support/Cleat",
    "~/Library/Logs/Cleat",
  ]
end
