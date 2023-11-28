Import-Module Terminal-Icons
Import-Module posh-git
Import-Module PSReadline

oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/thecyberden.omp.json" | Invoke-Expression

Set-Alias -Name vscode -Value code # Make sure vscode dir is in your PATH environment variable

function codedir {
    param ()
    Set-Location C:\Users\rhydon\Desktop
}

function unzip {
    param ([string]$filePath)
    $trimmedPath = $filePath.TrimEnd(".zip")
    Start-Process "C:\Program Files\7-Zip\7z.exe" -ArgumentList "x", "-r", "$filePath", "-o`"$trimmedPath`""
}

function search {
    param ([string]$filePath="")
    if ($filePath.Length) {
        Start-Process "C:\Program Files\Everything\Everything.exe" -ArgumentList "-s", "$filePath"
    }
    else {
        Start-Process "C:\Program Files\Everything\Everything.exe"
    }
}

# Git commands
function commit {
    param (
        [Parameter(Mandatory=$true)]$commitMessage,
        [Parameter(Mandatory=$false)]$extended
    )
    Invoke-Expression -Command "git add . ; git commit -m `"$commitMessage`" $extended"
}

function status { git status }
function push { git push }