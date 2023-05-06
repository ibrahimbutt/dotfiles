#!/bin/sh

JETBRAINS_BASE_PATH="/Users/ibrahim/Applications/JetBrains Toolbox"

dockutil --no-restart --remove all
dockutil --no-restart --add "/Applications/Google Chrome.app"
dockutil --no-restart --add "/Applications/Figma.app"
dockutil --no-restart --add "/Applications/Obsidian.app"
dockutil --no-restart --add "/Applications/Things3.app"
dockutil --no-restart --add "$JETBRAINS_BASE_PATH/Intellij IDEA Ultimate.app"
dockutil --no-restart --add "$JETBRAINS_BASE_PATH/GoLand.app"
dockutil --no-restart --add "$JETBRAINS_BASE_PATH/WebStorm.app"
dockutil --no-restart --add "$JETBRAINS_BASE_PATH/DataGrip.app"
dockutil --no-restart --add "$JETBRAINS_BASE_PATH/.app"
dockutil --no-restart --add "/System/Applications/Utilities/Terminal.app"

killall Dock
