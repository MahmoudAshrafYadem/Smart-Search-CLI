param(
  [string]$Query,
  [int]$Option
)

# Base URL and search modifiers
$BaseUrl = "https://www.google.com/search?q="
$Modifier = ""

switch ($Option) {
  1 {
    $Modifier = "filetype:pdf "
    Write-Host "[+] Searching for PDFs..." -ForegroundColor Green
  }
  2 {
    $Url = "https://www.youtube.com/results?search_query=" + [System.Uri]::EscapeDataString($Query)
    Write-Host "[+] Searching YouTube..." -ForegroundColor Green
    Start-Process $Url
    return
  }
  3 {
    $Modifier = "images "
    Write-Host "[+] Searching for images..." -ForegroundColor Green
  }
  4 {
    $Modifier = "book "
    Write-Host "[+] Searching for books..." -ForegroundColor Green
  }
  5 {
    $Modifier = "article "
    Write-Host "[+] Searching articles..." -ForegroundColor Green
  }
  6 {
    Write-Host "[+] Default Google search..." -ForegroundColor Green
  }
  default {
    Write-Host "[!] Invalid option" -ForegroundColor Red
    return
  }
}

# Build the full query with modifiers
$FullQuery = ($Modifier + $Query).Trim()
$FinalUrl = $BaseUrl + [System.Uri]::EscapeDataString($FullQuery)

# Launch browser
Write-Host "[*] Opening results in browser..." -ForegroundColor Cyan
Start-Process $FinalUrl
