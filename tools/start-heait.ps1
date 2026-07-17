$ErrorActionPreference = 'Stop'

$ProjectRoot = Split-Path -Parent (Split-Path -Parent $MyInvocation.MyCommand.Path)
$Python = 'D:\venvs\sapphire\Scripts\python.exe'

if (-not (Test-Path $Python)) {
    throw "Sapphire Python environment not found at $Python"
}

Set-Location $ProjectRoot
& $Python (Join-Path $ProjectRoot 'main.py') @args
