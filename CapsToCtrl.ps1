# Get the startup folder path
$startupFolder = [System.Environment]::GetFolderPath('Startup')

# Define the source file path
$sourceFile = Join-Path -Path $PSScriptRoot -ChildPath "CapsToCtrl.exe"

# Define the destination path in the startup folder
$destinationFile = Join-Path $startupFolder (Split-Path $sourceFile -Leaf)

# Copy the file to the startup folder
Copy-Item -Path $sourceFile -Destination $destinationFile -Force

# Confirm the file was copied
if (Test-Path $destinationFile) {
    Write-Host "File copied to $destinationFile"
} else {
    Write-Host "Failed to copy the file."
}
