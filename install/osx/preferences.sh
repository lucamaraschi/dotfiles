#!/bin/sh

# Set computer name (as done via System Preferences → Sharing)
sudo scutil --set ComputerName "0x6D746873"
sudo scutil --set HostName "0x6D746873"
sudo scutil --set LocalHostName "0x6D746873"
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "0x6D746873"

# Disable Notification Center and remove the menu bar icon
launchctl unload -w /System/Library/LaunchAgents/com.apple.notificationcenterui.plist 2> /dev/null
