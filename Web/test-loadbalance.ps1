for ($i = 1; $i -le 20; $i++) {
    Write-Host "`n[$i] Requête envoyée..."
    try {
        $response = Invoke-WebRequest -Uri "http://figaro.localhost/" -UseBasicParsing
        $ip = $response.RawContent.Split("`n") | Select-String -Pattern "Server|Address|IP|172." | Select-Object -First 1
        Write-Host "Réponse reçue. IP possible : $($ip.Line)"
    }
    catch {
        Write-Host "Erreur de connexion à figaro.localhost"
    }
    Start-Sleep -Milliseconds 500
}