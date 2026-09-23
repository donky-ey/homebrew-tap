cask "poke-dex-bar" do
  version "1.18.2"
  sha256 "adc15011835896a1d6c6908f3d51d9990ffad67d1d69019ae5f781a3ecab693a"

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
