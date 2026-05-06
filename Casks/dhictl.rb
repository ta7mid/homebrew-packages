cask "dhictl" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.0.3"
  sha256 arm:          "e88ef3518d827eb2c529a09cbeff3e3243862c88a86cc97021178364bfa23a3a",
         intel:        "beee713bcf54ef4e3a0195d576fb1c65798daceb50bf67d314ded9f38820b560",
         arm64_linux:  "f81037f1efa2999bd15599079962cd0627e6211815c2335575ab7530573218f7",
         x86_64_linux: "7bf49639777d9db7c937d4039db2b4e46de408936b03e9a38ae0ceee2e4cfad7"

  url "https://github.com/docker-hardened-images/dhictl/releases/download/v#{version}/dhictl-#{os}-#{arch}"
  name "dhictl"
  desc "Command-line tool for managing Docker Hardened Images"
  homepage "https://github.com/docker-hardened-images/dhictl"

  binary "dhictl-#{os}-#{arch}", target: "dhictl"

  # No zap stanza required
end
