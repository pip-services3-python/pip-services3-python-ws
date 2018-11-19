task Init {
    Invoke-Task -Task Clone -Path . -Workspace
    Invoke-Task -Task RestoreDep -Path . -All
}