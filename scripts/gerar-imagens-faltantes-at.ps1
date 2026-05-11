$root = "$([Environment]::GetFolderPath('Desktop'))\antigo-testamento"

Write-Output "=== VERIFICANDO IMAGENS FALTANTES ==="
Write-Output ""

$missing = @()
$dirs = Get-ChildItem $root -Directory
foreach ($dir in $dirs) {
    $imgDir = "$($dir.FullName)\imagens"
    if (-not (Test-Path $imgDir)) { continue }
    foreach ($jpg in Get-ChildItem "$imgDir\*.jpg") {
        if ($jpg.Length -le 5000) {
            $missing += @{Dir=$dir.Name; File=$jpg.Name; Prompt=""}
        }
    }
}

if ($missing.Count -eq 0) {
    Write-Output "Nenhuma imagem faltante encontrada."
    exit
}

Write-Output "Encontradas $($missing.Count) imagens para regenerar via Pollinations..."

$prompts = @{}
Get-ChildItem $root -Directory | ForEach-Object {
    $dir = $_.Name
    $md = Get-ChildItem "$($_.FullName)\*.md" | Select-Object -First 1
    if ($md) {
        $content = Get-Content $md.FullName -Raw
        if ($content -match '# (.+)') {
            $title = $matches[1]
            $prompts[$dir] = $title
        }
    }
}

foreach ($img in $missing) {
    $dir = $img.Dir
    $file = $img.File
    $outPath = "$root\$dir\imagens\$file"
    
    $bookTitle = $prompts[$dir]
    $chapterName = "Biblical scene from $bookTitle"
    if ($file -match 'capa') { $chapterName = "Book cover for $bookTitle" }
    
    $fullPrompt = [System.Uri]::EscapeDataString("$chapterName, detailed biblical illustration, cinematic lighting, religious art, high quality")
    $seed = 42
    if ($file -match 'cap-(\d+)') { $seed = 42 + [int]$matches[1] }
    
    $url = "https://image.pollinations.ai/prompt/$fullPrompt`?model=flux&enhance=true&width=1024&height=1024&seed=$seed"
    
    Write-Output "Gerando: $dir/$file (seed=$seed)"
    try {
        Invoke-WebRequest -Uri $url -OutFile $outPath -TimeoutSec 120 -UseBasicParsing
        $size = (Get-Item $outPath).Length
        if ($size -gt 5000) {
            Write-Output "  OK - $([math]::Round($size/1KB)) KB"
        } else {
            Write-Output "  ERRO: imagem muito pequena ($size bytes)"
        }
    } catch {
        Write-Output "  ERRO: $_"
    }
    Start-Sleep -Seconds 10
}

Write-Output ""
Write-Output "=== CONCLUIDO ==="
