#!/bin/sh

# Set computer name (as done via System Preferences → Sharing
MAC_NAME=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 32 | head -n 1)
sudo scutil --set ComputerName "$MAC_NAME"
sudo scutil --set HostName "$MAC_NAME"
sudo scutil --set LocalHostName "$MAC_NAME"
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "$MAC_NAME"

# Disable Notification Center and remove the menu bar icon
launchctl unload -w /System/Library/LaunchAgents/com.apple.notificationcenterui.plist 2> /dev/null
