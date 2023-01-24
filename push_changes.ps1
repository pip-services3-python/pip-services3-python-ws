#!/usr/bin/env pwsh

## This script pushes all updated repos with same commit.

param
(
    [Parameter(Mandatory=$true, Position=0)]
    [string] $Commit
)

$repos = $(Get-ChildItem "$PSScriptRoot/.." -directory).Name
foreach ($repo in $repos) {
    Write-Host "Processing '$PSScriptRoot/../$repo'"
    Set-Location "$PSScriptRoot/../$repo"

    $gitStatus = git status
    if ($gitStatus -Contains "nothing to commit, working tree clean") {
        Write-Host "    Nothing to commit."
        continue
    }

    Write-Host "    Pushing changes..."
    git add .
    git commit -m $Commit
    git push
}