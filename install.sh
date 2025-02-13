#!/bin/bash

set -e

for computer_dir in ~/.local/share/PrismLauncher/instances/CC-\ Islands/.minecraft/saves/*/computercraft/computer/*/; do
	echo "copying to $computer_dir"
	rsync -a --include '*.lua' ./ "$computer_dir"
	rsync -a --include '*.goo' ./ "$computer_dir"
done
