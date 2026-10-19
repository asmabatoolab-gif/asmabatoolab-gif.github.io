# Asma Batool Portfolio - Built-in Local Development Preview Server
# Runs directly on Windows PowerShell without requiring Node.js, Python, or Git!

$port = 8080
$prefix = "http://localhost:$port/"
$folder = $PSScriptRoot

if (-not (Test-Path $folder)) {
    $folder = Get-Location
}

$listener = New-Object System.Net.HttpListener
$listener.Prefixes.Add($prefix)

try {
    $listener.Start()
    Write-Host "============================================================" -ForegroundColor Cyan
    Write-Host " Asma Batool Portfolio - Local Preview Server Running" -ForegroundColor Green
    Write-Host "============================================================" -ForegroundColor Cyan
    Write-Host " Local URL: $prefix" -ForegroundColor Yellow
    Write-Host " Root Dir : $folder" -ForegroundColor Gray
    Write-Host " Press Ctrl+C in this window to stop the server." -ForegroundColor White
    Write-Host "============================================================" -ForegroundColor Cyan

    # Open default web browser
    Start-Process $prefix

    while ($listener.IsListening) {
        $context = $listener.GetContext()
        $request = $context.Request
        $response = $context.Response

        $localPath = $request.Url.LocalPath
        if ($localPath -eq "/" -or $localPath -eq "") {
            $localPath = "/index.html"
        }

        $filePath = Join-Path $folder ($localPath.TrimStart('/').Replace('/', [System.IO.Path]::DirectorySeparatorChar))

        if (Test-Path $filePath -PathType Leaf) {
            $ext = [System.IO.Path]::GetExtension($filePath).ToLower()
            $contentType = switch ($ext) {
                ".html" { "text/html; charset=utf-8" }
                ".css"  { "text/css; charset=utf-8" }
                ".js"   { "application/javascript; charset=utf-8" }
                ".json" { "application/json; charset=utf-8" }
                ".svg"  { "image/svg+xml" }
                ".png"  { "image/png" }
                ".jpg"  { "image/jpeg" }
                ".jpeg" { "image/jpeg" }
                ".pdf"  { "application/pdf" }
                ".ico"  { "image/x-icon" }
                default { "application/octet-stream" }
            }

            $bytes = [System.IO.File]::ReadAllBytes($filePath)
            $response.ContentType = $contentType
            $response.ContentLength64 = $bytes.Length
            $response.StatusCode = 200
            $response.OutputStream.Write($bytes, 0, $bytes.Length)
        } else {
            # 404 handler
            $notFoundPath = Join-Path $folder "404.html"
            if (Test-Path $notFoundPath) {
                $bytes = [System.IO.File]::ReadAllBytes($notFoundPath)
                $response.ContentType = "text/html; charset=utf-8"
                $response.ContentLength64 = $bytes.Length
                $response.StatusCode = 404
                $response.OutputStream.Write($bytes, 0, $bytes.Length)
            } else {
                $response.StatusCode = 404
                $msg = [System.Text.Encoding]::UTF8.GetBytes("404 - File Not Found")
                $response.OutputStream.Write($msg, 0, $msg.Length)
            }
        }
        $response.OutputStream.Close()
    }
} catch {
    Write-Host "Server stopped: $_" -ForegroundColor Red
} finally {
    $listener.Stop()
    $listener.Close()
}
