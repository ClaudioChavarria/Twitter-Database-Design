# This PowerShell script adds the PostgreSQL binary path to the system's `PATH` variable if it's not already included.
# It allows PostgreSQL commands to be run from any terminal without specifying the full path.
# If the path is already in the `PATH`, it notifies that no changes are needed.

# Define the path to PostgreSQL bin directory
$pgsqlPath = "C:\Program Files\PostgreSQL\17\bin"

# Get the current value of the PATH environment variable
$currentPath = [System.Environment]::GetEnvironmentVariable("Path", [System.EnvironmentVariableTarget]::Machine)

# Check if PostgreSQL path is already in the PATH variable
if ($currentPath -notlike "*$pgsqlPath*") {
    # Add PostgreSQL bin directory to PATH if it's not already there
    [System.Environment]::SetEnvironmentVariable("Path", "$currentPath;$pgsqlPath", [System.EnvironmentVariableTarget]::Machine)
    Write-Host "PostgreSQL path added to the system PATH."
} else {
    Write-Host "PostgreSQL path is already in the system PATH."
}
