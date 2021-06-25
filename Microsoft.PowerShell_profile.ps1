# Windows powershell profile
# To be placed in the Documents\PowerShell folder

set-alias please     git # Let's be polite to our machines, we never know when AI is going to take over 😜

Import-Module posh-git # Helps with auto complete in PowerShell. Run First-Time-Setup if the module is not installed

Import-Module -Name Terminal-Icons # Pretty icons for some commands like ls, https://github.com/devblackops/Terminal-Icons

Set-PoshPrompt -Theme morphism # Set custom theme for OhMyPosh. Run First-Time-Setup if the module is not installed or the theme is not downloaded

function gfa { git fetch --all -p }
function gpa { git checkout master; git pull --prune; git branch -D $(git branch --merged).trim(); }

function First-Time-Setup {
	function Setup-PoshGit {
		Write-Host "Installing Posh Git PowerShell module, allowing auto-completion and status check for git..."
		Install-Module posh-git -Scope CurrentUser
	}

	function Setup-OhMyPosh {
		function Download-Morphism-OhMyPosh-Theme {
			Write-Host "Downloading Morphism theme for Oh My Posh..."
			$themeAddress = "https://gist.githubusercontent.com/RezaJooyandeh/65fdd431ab3aab0f9a7874632c1646f5/raw/a941f6267e1fb1b845d4ccfd69907585d5d575c2/morphism.omp.json"
			$ohMyPoshThemeFolder = [Environment]::GetFolderPath("MyDocuments") + "\PowerShell\Modules\oh-my-posh\3.158.4\themes"
			Start-BitsTransfer -Source $themeAddress -Destination $ohMyPoshThemeFolder
		}

		Write-Host "Installing Oh My Posh PowerShell module, allowing customization of the command layouts..."
		Install-Module oh-my-posh -Scope CurrentUser
	
		Download-Morphism-OhMyPosh-Theme
	}

	function Setup-WindowsTerminal {
		Write-Host "Downloading Windows Terminal settings..."
		$terminalSettingsAddress = "https://gist.githubusercontent.com/RezaJooyandeh/65fdd431ab3aab0f9a7874632c1646f5/raw/26b9dca6b8fada7e92a4019979184fb4133bcd6b/settings.json"
		$windowsTerminalSettingsFolder = [Environment]::GetEnvironmentVariable("LOCALAPPDATA") + "\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState"

		Write-Host "**Manual Action Required**: Download and install Caskaydia Cove NF for Windows Terminal Theme"
		Start-Process "https://www.nerdfonts.com/"

		Write-Host "Installing Terminal Icons PowerShell module, making some commands like ls, use fancy icons..."
		Install-Module -Name Terminal-Icons -Repository PSGallery
	}

	Setup-PoshGit
	Setup-OhMyPosh
	Setup-WindowsTerminal
}
