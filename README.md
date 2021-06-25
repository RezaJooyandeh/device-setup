# Prerequisite installations
  * [PowerShell Core](https://aka.ms/powershell-release?tag=stable)
  
# Steps after installations
* Run the command below 👇🏼 or manually download [PowerShell Core Profile](PowerShell/Microsoft.PowerShell_profile.ps1) into *Documents\PowerShell* folder.
```powershell
Start-BitsTransfer -Source "https://raw.githubusercontent.com/RezaJooyandeh/device-setup/main/PowerShell/Microsoft.PowerShell_profile.ps1" -Destination ([Environment]::GetFolderPath("MyDocuments") + "\PowerShell")
```
* Start/Restart PowerShell Core and run `Complete-FirstTime-Setup` command 

# Other tools to install
  * [Visual Studio](https://visualstudio.microsoft.com/downloads/)
  * [Visual Studio Code](https://visualstudio.microsoft.com/downloads/)
  * [Windows Terminal](https://aka.ms/terminal)
  * [7-zip](https://www.7-zip.org/)
  * TODO: Update the instructions once [winget](https://github.com/microsoft/winget-cli) is generally available.
