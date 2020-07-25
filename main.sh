#!/bin/bash

[ -f /etc/passwd ] && bash bin/dimensions/launch.sh "bin/php7/bin/php" "stacks/pocketmine/PocketMine-MP.phar" || bash bin/dimensions/setup.sh