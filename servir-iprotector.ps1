# IPROTECTOR — servidor HTTP local (evita erro 153 do YouTube em file://)
$ErrorActionPreference = 'Stop'
$root = $PSScriptRoot
Set-Location $root
$port = 8844
$url = "http://127.0.0.1:$port/iprotector.html"

function Find-PythonLauncher {
    foreach ($name in @('py', 'python', 'python3')) {
        $cmd = Get-Command $name -ErrorAction SilentlyContinue
        if ($cmd) { return $name }
    }
    return $null
}

$py = Find-PythonLauncher
if ($null -ne $py) {
    Write-Host "A iniciar servidor com: $py -m http.server $port"
    $proc = Start-Process -FilePath $py -ArgumentList @('-m', 'http.server', "$port") -WorkingDirectory $root -PassThru -WindowStyle Hidden
    Start-Sleep -Seconds 2
    Start-Process $url
    Write-Host ""
    Write-Host "Aberto no browser: $url"
    Write-Host "Servidor em segundo plano (PID $($proc.Id))."
    Write-Host "Prima ENTER para tentar encerrar o servidor."
    Read-Host | Out-Null
    try { Stop-Process -Id $proc.Id -Force -ErrorAction SilentlyContinue } catch {}
    exit 0
}

Write-Host "Python nao encontrado no PATH."
Write-Host "Instala Python em https://www.python.org/downloads/ (marca 'Add to PATH')"
Write-Host "OU na pasta da Area de trabalho corre manualmente:"
Write-Host "  npx --yes serve@14 . -l $port"
Write-Host ""
pause
