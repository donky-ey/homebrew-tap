cask "poke-dex-bar" do
  version "1.18.3"
  sha256 "e17b07cd8dd08e13d2cac565df38bb9768922673c4119a94cf8d1eecc9155d32"

  url "https://github.com/donky-ey/PokeDexBar/releases/download/v#{version}/PokeDexBar.zip"
  name "PokeDexBar"
  desc "Menu bar app turning AI coding token usage into a Pokemon collection"
  homepage "https://github.com/donky-ey/PokeDexBar"

  depends_on macos: :sonoma

  app "PokeDexBar.app"

  zap trash: [
    "~/Library/Application Support/PokeDexBar",
    "~/Library/Preferences/io.github.donky-ey.pokedexbar.plist",
    "~/Library/Logs/PokeDexBar.log",
    "~/Library/Logs/PokeDexBar.old.log",
    "~/Library/Logs/PokeDexBar.crash.log",
    "~/Library/Logs/PokeDexBar.running",
  ]
end
