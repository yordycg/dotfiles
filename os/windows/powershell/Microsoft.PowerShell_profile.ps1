# set PowerShell to  UTF-8
[console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding

oh-my-posh init pwsh | Invoke-Expression

# Import-Module
Import-Module posh-git
$omp_config = Join-Path $PSScriptRoot ".\Themes\pure.omp.json"
oh-my-posh --init --shell pwsh --config $omp_config | Invoke-Expression

Import-Module -Name Terminal-Icons

# PSReadLine
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -BellStyle None
Set-PSReadLineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView

# Fzf
Import-Module PSFzf
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl+r'

# Alias
# Set-Alias nv nvim
Set-Alias ll ls
Set-Alias g git
Set-Alias grep findstr
Set-Alias tig 'C:\Program Files\Git\usr\bin\tig.exe'
Set-Alias less 'C:\Program Files\Git\usr\bin\less.exe'

# Utilities
function which ($command) {
  Get-Command -Name $command -ErrorAction SilentlyContinue |
    Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}

function lsa {
    Get-ChildItem -Force
}

## agregar alias a wsl.exe
function ub {
    param (
        [string]$argument
    )
    
    # Verifica si se proporcionó un argumento
    if ($argument) {
        # Ejecuta el comando con el argumento
        wsl.exe $argument
    } else {
        # Ejecuta el comando con la ubicación predeterminada
        wsl.exe ~
    }
}

## Node Alias
Set-Alias -Name pn -Value pnpm
function pnd { 
	pnpm run dev
}
function npmd {
	npm run dev	
}

# Useful shortcuts for traversing directories
function .. { cd ..\ }
function ... { cd ..\.. }
function .... { cd ..\..\.. }
function ..... { cd ..\..\..\.. }
function ...... { cd ..\..\..\..\.. }

function touch($file) {
	"" | Out-FIle $file -Encoding ASCII
}

fnm env --use-on-cd | Out-String | Invoke-Expression

# Load Starship
Invoke-Expression (&starship init powershell)

# Import the Chocolatey Profile that contains the necessary code to enable
# tab-completions to function for `choco`.
# Be aware that if you are missing these lines from your profile, tab completion
# for `choco` will not function.
# See https://ch0.co/tab-completion for details.
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}
