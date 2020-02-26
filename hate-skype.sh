# SFBMac uninstall script v. 1.1
#!/bin/sh -e
sudo rm -rf /Applications/Skype\ for\ Business.app
sudo rm -rf /Library/Internet\ Plug-Ins/MeetingJoinPlugin.plugin

defaults delete com.microsoft.SkypeForBusiness || true
rm -rf ~/Library/Containers/com.microsoft.SkypeForBusiness
rm -rf ~/Library/Logs/DiagnosticReports/Skype\ for\ Business_*
rm -rf ~/Library/Saved\ Application\ State/com.microsoft.SkypeForBusiness.savedState
rm -rf ~/Library/Preferences/com.microsoft.SkypeForBusiness.plist
rm -rf ~/Library/Application\ Support/CrashReporter/Skype\ for\ Business_*
rm -rf ~/Library/Application\ Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.microsoft.skypeforbusiness*
rm -rf ~/Library/Cookies/com.microsoft.SkypeForBusiness*

sudo rm -rf /private/var/db/receipts/com.microsoft.SkypeForBusiness*
rmdir ~/Library/Application\ Scripts/com.microsoft.SkypeForBusiness
find -f /private/var/db/BootCaches/* -name "app.com.microsoft.SkypeForBusiness*" -exec sudo rm -rf {} +

 while security delete-generic-password -l 'Skype for Business' ~/Library/Keychains/login.keychain; do :; done
killall cfprefsd
