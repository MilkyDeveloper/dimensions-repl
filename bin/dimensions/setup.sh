#!/bin/bash
echo "Seems like this isn't your first time running Dimensions... Downloading PocketMine-MP.phar:"

# Download Latest Release of PocketMine
curl -s https://api.github.com/repos/pmmp/PocketMine-MP/releases/latest \
    | grep "browser_download_url.*phar" \
    | cut -d '"' -f 4 \
    | wget -P "../../stacks/pocketmine" -qi -

bash launch.sh "../php7/bin/php" "../../stacks/pocketmine/PocketMine-MP.phar"