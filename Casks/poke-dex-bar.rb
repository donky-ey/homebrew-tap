cask "poke-dex-bar" do
  version "1.0.0"
  sha256 :no_check

  url "https://github.com/leedg0831/PokeDexBar/releases/download/v#{version}/PokeDexBar.zip"
  name "PokeDexBar"
  desc "Menu bar app turning AI coding token usage into a Pokemon collection"
  homepage "https://github.com/leedg0831/PokeDexBar"

  depends_on macos: ">= :sonoma"

  app "PokeDexBar.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/PokeDexBar.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/PokeDexBar",
    "~/Library/Preferences/io.github.leedg0831.pokedexbar.plist",
    "~/Library/Logs/PokeDexBar.log",
    "~/Library/Logs/PokeDexBar.old.log",
    "~/Library/Logs/PokeDexBar.crash.log",
    "~/Library/Logs/PokeDexBar.running",
  ]
end
