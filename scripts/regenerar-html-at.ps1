$baseDir = "$env:USERPROFILE\Desktop\antigo-testamento"

function Get-BookName {
    param($dirName)
    $raw = ($dirName -split '-', 2)[1]
    if ($raw -match '^\d+-(.+)') { $raw = $matches[1] }
    switch ($raw) {
        'genesis'     { return 'G' + [char]0xEA + 'nesis' }
        'exodo'       { return [char]0xCA + 'xodo' }
        'levitico'    { return 'Lev' + [char]0xED + 'tico' }
        'numeros'     { return 'N' + [char]0xFA + 'meros' }
        'deuteronomio' { return 'Deuteron' + [char]0xF4 + 'mio' }
        'josue'       { return 'Josu' + [char]0xE9 }
        'juizes'      { return 'Ju' + [char]0xED + 'zes' }
        'rute'        { return 'Rute' }
        'samuel'      { return 'Samuel' }
        'reis'        { return 'Reis' }
        'cronicas'    { return 'Cr' + [char]0xF4 + 'nicas' }
        'esdras'      { return 'Esdras' }
        'neemias'     { return 'Neemias' }
        'ester'       { return 'Ester' }
        'jo'          { return 'J' + [char]0xF3 }
        'salmos'      { return 'Salmos' }
        'proverbios'  { return 'Prov' + [char]0xE9 + 'rbios' }
        'eclesiastes' { return 'Eclesiastes' }
        'cantares'    { return 'Cantares' }
        'isaias'      { return 'Isa' + [char]0xED + 'as' }
        'jeremias'    { return 'Jeremias' }
        'lamentacoes' { return 'Lamenta' + [char]0xE7 + [char]0xF5 + 'es' }
        'ezequiel'    { return 'Ezequiel' }
        'daniel'      { return 'Daniel' }
        'oseias'      { return 'Oseias' }
        'joel'        { return 'Joel' }
        'amos'        { return 'Am' + [char]0xF3 + 's' }
        'obadias'     { return 'Obadias' }
        'jonas'       { return 'Jonas' }
        'miqueias'    { return 'Miqueias' }
        'naum'        { return 'Naum' }
        'habacuque'   { return 'Habacuque' }
        'sofonias'    { return 'Sofonias' }
        'ageu'        { return 'Ageu' }
        'zacarias'    { return 'Zacarias' }
        'malaquias'   { return 'Malaquias' }
        default       { return $raw.Substring(0,1).ToUpper() + $raw.Substring(1) }
    }
}

function Get-PrefixoNum {
    param($dirName)
    $num = ($dirName -split '-', 2)[0]
    switch ($num) {
        '09' { return '1 ' }
        '10' { return '2 ' }
        '11' { return '1 ' }
        '12' { return '2 ' }
        '13' { return '1 ' }
        '14' { return '2 ' }
        default { return '' }
    }
}

function Get-Accent {
    param($text)
    $text = $text.ToLower()
    $text = $text -replace "[\xE0\xE1\xE2\xE3\xE4\xE5]", 'a'
    $text = $text -replace "[\xE8\xE9\xEA\xEB]", 'e'
    $text = $text -replace "[\xEC\xED\xEE\xEF]", 'i'
    $text = $text -replace "[\xF2\xF3\xF4\xF5\xF6]", 'o'
    $text = $text -replace "[\xF9\xFA\xFB\xFC]", 'u'
    $text = $text -replace "\xE7", 'c'
    return $text
}

$css = @'
@import url('https://fonts.googleapis.com/css2?family=Merriweather:wght@300;400;700;900&family=Open+Sans:wght@400;600;700&display=swap');
* { margin: 0; padding: 0; box-sizing: border-box; }
body { font-family: 'Merriweather', Georgia, serif; background: #1a1a1a; color: #2c2c2c; line-height: 1.8; }
.container { max-width: 800px; margin: 0 auto; background: #faf8f5; box-shadow: 0 0 40px rgba(0,0,0,0.5); }
.cover { position: relative; min-height: 100vh; display: flex; align-items: center; justify-content: center; text-align: center; overflow: hidden; color: #fff; }
.cover-bg { position: absolute; top: 0; left: 0; width: 100%; height: 100%; object-fit: cover; z-index: 0; }
.cover-overlay { position: absolute; top: 0; left: 0; width: 100%; height: 100%; background: linear-gradient(180deg, rgba(0,0,0,0.6) 0%, rgba(0,0,0,0.4) 50%, rgba(0,0,0,0.7) 100%); z-index: 1; }
.cover-content { position: relative; z-index: 2; padding: 40px 30px; max-width: 700px; }
.cover h1 { font-size: clamp(1.6em, 4.5vw, 3em); font-weight: 900; margin-bottom: 15px; text-shadow: 2px 4px 20px rgba(0,0,0,0.5); line-height: 1.3; word-break: break-word; }
.cover .subtitle { font-size: clamp(1em, 2.2vw, 1.3em); font-weight: 300; font-family: 'Open Sans', sans-serif; text-shadow: 1px 2px 10px rgba(0,0,0,0.4); margin-bottom: 10px; }
.cover .meta { margin-top: 30px; font-size: 0.9em; opacity: 0.8; font-family: 'Open Sans', sans-serif; letter-spacing: 2px; text-transform: uppercase; }
.cover-divider { width: 80px; height: 3px; background: #fff; margin: 20px auto; }
.content { padding: 40px 50px 60px; }
h2 { font-size: 1.8em; font-weight: 900; color: #1a3c34; margin: 40px 0 20px; padding-bottom: 10px; border-bottom: 3px solid #2d6a4f; }
h3 { font-size: 1.3em; font-weight: 700; color: #2d6a4f; margin: 25px 0 15px; }
p { margin-bottom: 15px; text-align: justify; }
.img-container { margin: 25px 0; text-align: center; }
.img-container img { max-width: 100%; height: auto; border-radius: 8px; box-shadow: 0 4px 20px rgba(0,0,0,0.15); }
.img-container .caption { margin-top: 8px; font-size: 0.85em; color: #666; font-family: 'Open Sans', sans-serif; font-style: italic; }
blockquote { margin: 20px 0; padding: 15px 20px; background: #e8f5e9; border-left: 4px solid #2d6a4f; border-radius: 0 6px 6px 0; font-style: italic; color: #1a3c34; }
ul, ol { margin: 10px 0 15px 25px; }
li { margin-bottom: 6px; }
.footer { text-align: center; padding: 30px; color: #888; font-size: 0.85em; font-family: 'Open Sans', sans-serif; border-top: 1px solid #e0e0e0; }
.divider { border: none; border-top: 1px solid #ddd; margin: 30px 0; }
'@

function Get-ChapterNum {
    param($heading)
    $h = Get-Accent $heading
    if ($h -match '^capitulo\s+(\d+)') { return [int]$matches[1] }
    if ($h -match '^cap\.?\s*(\d+)') { return [int]$matches[1] }
    if ($h -match '^(\d+)[\)\.]') { return [int]$matches[1] }
    return $null
}

function Get-ChapterTitle {
    param($heading)
    if ($heading -match '^Cap[i\xCD]tulo\s+\d+:\s*(.+)') { return $matches[1] }
    if ($heading -match '^[Cc]ap\.?\s*\d+[\.:]\s*(.+)') { return $matches[1] }
    if ($heading -match '^\d+[\)\.]\s*(.+)') { return $matches[1] }
    return $heading
}

function Get-SectionId {
    param($text)
    $id = Get-Accent $text
    $id = $id -replace '[^a-z0-9\s-]', ''
    $id = $id -replace '\s+', '-'
    $id = $id -replace '-+', '-'
    $id = $id.Trim('-')
    return $id
}

function Get-HtmlTitle {
    param($heading)
    $num = Get-ChapterNum $heading
    $title = Get-ChapterTitle $heading
    if ($num) { return "$num) $title" }
    return $heading
}

function Convert-MdToHtml {
    param($mdFile, $bookName)

    $lines = Get-Content -Path $mdFile.FullName -Encoding UTF8
    $mainTitle = ""
    $sections = @()
    $curHeading = $null
    $curLines = @()

    foreach ($line in $lines) {
        if ($line -match '^# (.+)' -and $line -notmatch '^##') {
            $mainTitle = $matches[1]
        } elseif ($line -match '^#{2,3} (.+)') {
            if ($curHeading) {
                $sections += @{Heading=$curHeading; Lines=$curLines}
            }
            $curHeading = $matches[1]
            $curLines = @()
        } elseif ($line -match '^---') {
        } else {
            $curLines += $line
        }
    }
    if ($curHeading) {
        $sections += @{Heading=$curHeading; Lines=$curLines}
    }

    $introHtml = ""
    $chapterHtml = @()
    $conclusionHtml = ""
    $chapterImgs = @{}

    foreach ($sec in $sections) {
        $heading = $sec.Heading
        $contentLines = $sec.Lines

        $imgLine = $null
        $textLines = @()
        foreach ($l in $contentLines) {
            if ($l -match '^!\[.*\]\((.+)\)') {
                $imgLine = $matches[1]
                if ($imgLine -match 'cap-(\d+)') {
                    $chapterImgs[[int]$matches[1]] = $imgLine
                }
            } elseif ($l.Trim() -ne "" -and -not ($l -match '^[\d.\[\]\(\) ]+$')) {
                $textLines += $l
            }
        }

        $paragraphs = @()
        $buf = ""
        foreach ($l in $textLines) {
            if ($l.Trim() -eq "") {
                if ($buf.Trim() -ne "" -and $buf.Trim() -notmatch '^\d+\s*\.?\s*\[') {
                    $paragraphs += $buf.Trim()
                }
                $buf = ""
            } else {
                $buf += " $($l.Trim())"
            }
        }
        if ($buf.Trim() -ne "" -and $buf.Trim() -notmatch '^\d+\s*\.?\s*\[') {
            $paragraphs += $buf.Trim()
        }

        if ($paragraphs.Count -eq 0) { continue }

        $hl = Get-Accent $heading
        if ($hl -eq 'indice') { continue }

        $isIntro = $hl -match '^introduc'
        $isConclusion = $hl -match '^conclus'
        $chapNum = Get-ChapterNum $heading

        $bodyHtml = ""
        foreach ($p in $paragraphs) {
            $bodyHtml += "<p>$p</p>`n"
        }

        if ($isIntro) {
            $introHtml = $bodyHtml
        } elseif ($isConclusion) {
            $conclusionHtml = $bodyHtml
        } elseif ($chapNum -ge 1 -and $chapNum -le 5) {
            $displayTitle = Get-HtmlTitle $heading
            $secId = Get-SectionId $displayTitle
            $imgSrc = $chapterImgs[$chapNum]
            if (-not $imgSrc) { $imgSrc = "imagens/cap-$chapNum.jpg" }
            $ch = @"
<h2 id="$secId">$displayTitle</h2>
<div class="img-container"><img src="$imgSrc" alt="$displayTitle"><p class="caption">$displayTitle</p></div>
$bodyHtml
"@
            $chapterHtml += $ch
        }
    }

    $allChapters = ""
    $count = $chapterHtml.Count
    for ($i = 0; $i -lt $count; $i++) {
        $allChapters += $chapterHtml[$i]
        if ($i -lt $count - 1) { $allChapters += "<hr class=`"divider`">`n" }
    }

    $a = [char]0xE7
    $b = [char]0xE3
    $c = [char]0xE3
    $introSection = ""
    if ($introHtml) {
        $introSection = "<h2>Introdu$($a)$($b)o</h2>`n$introHtml<hr class=`"divider`">`n"
    }

    $conclusionSection = ""
    if ($conclusionHtml) {
        $conclusionSection = "<h2>Conclus$($c)o</h2>`n$conclusionHtml"
    }

    $html = @"
<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>$mainTitle</title>
<style>
$css
</style>
</head>
<body>
<div class="container">
  <div class="cover">
    <img class="cover-bg" src="imagens/capa.jpg" alt="$mainTitle">
    <div class="cover-overlay"></div>
    <div class="cover-content">
      <h1>$mainTitle</h1>
      <div class="cover-divider"></div>
      <p class="subtitle">$bookName</p>
      <p class="meta">Antigo Testamento</p>
    </div>
  </div>
  <div class="content">

$introSection
$allChapters
$conclusionSection

  </div>
  <div class="footer">$mainTitle &bull; $bookName</div>
</div>
</body>
</html>
"@
    return $html
}

$dirs = Get-ChildItem "$baseDir" -Directory
foreach ($dir in $dirs) {
    $mdFile = Get-ChildItem "$($dir.FullName)\*.md" | Select-Object -First 1
    if (-not $mdFile) { continue }

    $prefixo = Get-PrefixoNum $dir.Name
    $baseName = Get-BookName $dir.Name
    $bookName = $prefixo + $baseName

    $htmlContent = Convert-MdToHtml -mdFile $mdFile -bookName $bookName

    $htmlPath = [System.IO.Path]::ChangeExtension($mdFile.FullName, ".html")
    $utf8NoBom = New-Object System.Text.UTF8Encoding $false
    [System.IO.File]::WriteAllText($htmlPath, $htmlContent, $utf8NoBom)
    Write-Output "Generated: $htmlPath"
}

Write-Output ""
Write-Output "Done!"
