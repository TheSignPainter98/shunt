#!/bin/bash

set -e

for computer_dir in ~/.local/share/PrismLauncher/instances/CC-\ Islands/.minecraft/saves/*/computercraft/computer/*/; do
	rsync -a --exclude "*.lua.packed" ./bin "$computer_dir"
	mv "$computer_dir"/bin/* "$computer_dir"
	rmdir "$computer_dir"/bin/
done
