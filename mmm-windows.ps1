$MINUTES = ""

function Clean {
    Write-Host "Cleaning..."
    Remove-Item -Path "__pycache__" -Recurse -Force -ErrorAction SilentlyContinue
}

function CreateVirtualEnvironment {
    Write-Host "Creating virtual environment..."
    & python -m venv venv
}

function ActivateVirtualEnvironment {
    Write-Host "Activating virtual environment..."
    & .\venv\Scripts\Activate.ps1
}

function Install {
    if (-not (Test-Path ".\venv")) {
        CreateVirtualEnvironment
        ActivateVirtualEnvironment
    }

    Write-Host "Installing dependencies..."
    & pip install -r requirements.txt
}

function Run {
    Write-Host "Running program..."
    & python main.py "-m" $MINUTES
}

function Help {
    Write-Host "Displaying help..."
    & Write-Host "Use command 'clean' to remove pycache."
    & Write-Host "Use command 'install' for create the venv and run the install over requirements.txt."
    & Write-Host "Use command 'run X' where X is the number of minutes that the program will run."
    & Write-Host "Use command 'help' to show this message (have you ever heard about repercussion?)"
}

function CheckPythonInstallation {
    $pythonExecutable = "python"
    $pythonVersionCommand = "$pythonExecutable --version"
    $pythonVersion = Invoke-Expression -Command $pythonVersionCommand -ErrorAction SilentlyContinue

    if (-not $pythonVersion) {
        Write-Host "Python is not installed. Please install Python and ensure it's accessible via the 'python' command."
        exit 1
    }
}

Write-Host "=== Mousemove - Windows Edition ==="

CheckPythonInstallation

$target = $args[0]

if ($target -eq "run" -and $args.Length -gt 1) {
    $MINUTES = $args[1]
}

switch ($target) {
    "clean" {
        Clean
    }
    "install" {
        Install
    }
    "run" {
        Run
    }
    "help" {
        Help
    }
    default {
        Write-Host "Unknown target: $target"
        exit 1
    }
}