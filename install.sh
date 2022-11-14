#!/bin/bash
sudo apt --no-install-recommends install bash bats curl jq -y
wget -O discord.sh-1.6.1.zip https://codeload.github.com/ChaoticWeg/discord.sh/zip/refs/tags/v1.6.1
unzip discord.sh-1.6.1.zip
rm discord.sh-1.6.1.zip