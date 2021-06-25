# Prerequisite installations
  * [PowerShell Core](https://aka.ms/powershell-release?tag=stable)
  * [Install Caskaydia Cove Nerd Font](https://www.nerdfonts.com/font-downloads)
  
# Steps after installations
* Run the command below 👇🏼 or manually download [PowerShell Core Profile](PowerShell/Microsoft.PowerShell_profile.ps1) into *Documents\PowerShell* folder.
```powershell
Start-BitsTransfer -Source "https://raw.githubusercontent.com/RezaJooyandeh/device-setup/main/PowerShell/Microsoft.PowerShell_profile.ps1" -Destination ([Environment]::GetFolderPath("MyDocuments") + "\PowerShell")
```
* Start/Restart PowerShell 7 and run `Complete-FirstTime-Setup` command 
* Run `Windows Terminal` and have fun!

![image](https://user-images.githubusercontent.com/6832601/123356371-785b9300-d51c-11eb-8f84-aace30831c51.png)

# Other tools to install
  * [Visual Studio](https://visualstudio.microsoft.com/downloads/)
  * [Visual Studio Code](https://visualstudio.microsoft.com/downloads/)
  * [Windows Terminal](https://aka.ms/terminal)
  * [7-zip](https://www.7-zip.org/)
  * TODO: Update the instructions once [winget](https://github.com/microsoft/winget-cli) is generally available.
