$root = "$([Environment]::GetFolderPath('Desktop'))\antigo-testamento"

$missing = @(
  # Books that have 5/6, missing cap-5
  @{Dir="10-2-samuel";File="cap-5.jpg";Prompt="David last words, mighty men of David gathered, kingdom established, legacy of faith, throne promised forever, biblical farewell scene"}
  @{Dir="12-2-reis";File="cap-5.jpg";Prompt="Gedaliah governor, remnant in Judah, hope after exile, rebuilding, Jeremiah lament, biblical restoration scene"}
  @{Dir="13-1-cronicas";File="cap-5.jpg";Prompt="David census and plague, altar on threshing floor of Araunah, sacrifice, mercy, temple site chosen, biblical scene"}
  @{Dir="14-2-cronicas";File="cap-5.jpg";Prompt="Manasseh repentance, Josiah passover celebration, last days of Judah, fall of Jerusalem, biblical judgment scene"}
  @{Dir="15-esdras";File="cap-5.jpg";Prompt="Ezra leading prayer of confession, weeping before temple, covenant renewal ceremony, revival among people, biblical reformation scene"}
  @{Dir="16-neemias";File="cap-5.jpg";Prompt="Nehemiah dedication of walls, two choirs procession, great celebration, Jerusalem restored, covenant signed, biblical dedication scene"}
  @{Dir="23-isaias";File="cap-5.jpg";Prompt="New heavens and new earth, Jerusalem rejoicing, wolf and lamb together, child playing, peaceable kingdom, biblical restoration scene"}

  # Books 30-39: all missing (6 each)
  @{Dir="30-amos";File="capa.jpg";Prompt="Amos the shepherd prophet, fig trees, staff, wild landscape, justice theme scale, biblical prophetic scene"}
  @{Dir="30-amos";File="cap-1.jpg";Prompt="Shepherd called to be prophet, Amos leaving flock, divine call, wilderness setting, simple man, biblical prophetic calling scene"}
  @{Dir="30-amos";File="cap-2.jpg";Prompt="Plumb line against crooked wall, divine standard of justice, measuring righteousness, Amos vision, biblical judgment illustration"}
  @{Dir="30-amos";File="cap-3.jpg";Prompt="Oppression of poor, dishonest scales, luxury and injustice, wealthy trampling needy, social injustice, biblical protest scene"}
  @{Dir="30-amos";File="cap-4.jpg";Prompt="Justice rolling like waters, righteousness like mighty stream, river scene, divine justice flow, biblical prophetic scene"}
  @{Dir="30-amos";File="cap-5.jpg";Prompt="Amos final vision, restoration of David tent, blessing and plenty, harvest and peace, biblical restoration scene"}

  @{Dir="31-obadias";File="capa.jpg";Prompt="Obadiah prophecy scroll, Edom mountains falling, pride brought low, eagle nest among stars, judgment scene"}
  @{Dir="31-obadias";File="cap-1.jpg";Prompt="Prophet Obadiah receiving vision, divine message, scroll and hand from heaven, prophetic calling, biblical scene"}
  @{Dir="31-obadias";File="cap-2.jpg";Prompt="Edom in rock fortress, eagle nest high in cliffs, proud city of Petra, seemingly invincible, biblical pride scene"}
  @{Dir="31-obadias";File="cap-3.jpg";Prompt="Day of the Lord cosmic judgment, nations drinking wrath, fire consuming Edom, divine justice, apocalyptic scene"}
  @{Dir="31-obadias";File="cap-4.jpg";Prompt="Israel restored, Mount Zion deliverance, kingdom of God established, peace and blessing, biblical restoration scene"}
  @{Dir="31-obadias";File="cap-5.jpg";Prompt="Obadias prophecy fulfilled, saviors on Mount Zion, kingdom belongs to Lord, final victory, biblical triumph scene"}

  @{Dir="32-jonas";File="capa.jpg";Prompt="Great fish swallowing Jonah, stormy sea, ships, dramatic biblical scene, divine intervention, repentance theme"}
  @{Dir="32-jonas";File="cap-1.jpg";Prompt="Jonas fleeing to Tarshish, ship leaving Joppa port, storm clouds gathering, disobedience, biblical flight scene"}
  @{Dir="32-jonas";File="cap-2.jpg";Prompt="Jonah inside great fish, surrounded by seaweed, praying, darkness, three days, repentance, biblical deliverance scene"}
  @{Dir="32-jonas";File="cap-3.jpg";Prompt="Jonah preaching in Nineveh, large ancient city, people repenting in sackcloth and ashes, king on throne, biblical revival scene"}
  @{Dir="32-jonas";File="cap-4.jpg";Prompt="Jonah under withered vine, hot sun, angry prophet, God teaching compassion, Nineveh spared, biblical mercy scene"}
  @{Dir="32-jonas";File="cap-5.jpg";Prompt="God compassion for Nineveh, children and animals spared, mercy triumphing judgment, biblical grace scene"}

  @{Dir="33-miqueias";File="capa.jpg";Prompt="Prophet Micah scroll, scales of justice, mercy and humility, Bethlehem in background, biblical prophetic scene"}
  @{Dir="33-miqueias";File="cap-1.jpg";Prompt="Micah prophesying judgment, mountains melting, valleys splitting, divine coming, biblical theophany scene"}
  @{Dir="33-miqueias";File="cap-2.jpg";Prompt="Corrupt leaders and priests, injustice in society, scheming against poor, darkness and oppression, biblical social justice scene"}
  @{Dir="33-miqueias";File="cap-3.jpg";Prompt="Bethlehem birthplace prophecy, shepherd town, star above, Messiah predicted, biblical messianic prophecy scene"}
  @{Dir="33-miqueias";File="cap-4.jpg";Prompt="What does the Lord require, doing justice loving mercy walking humbly with God, three pillars, biblical ethics scene"}
  @{Dir="33-miqueias";File="cap-5.jpg";Prompt="Micah final hope, God pardons iniquity, compassion and victory, restoration promise, biblical hope scene"}

  @{Dir="34-naum";File="capa.jpg";Prompt="Nineveh falling, city destruction, war chariots, fire and sword, divine judgment, biblical prophecy fulfillment scene"}
  @{Dir="34-naum";File="cap-1.jpg";Prompt="Prophet Nahum, powerful message against Nineveh, scroll, storm clouds, divine wrath and love, biblical prophetic scene"}
  @{Dir="34-naum";File="cap-2.jpg";Prompt="Nineveh the bloody city, violence and lies, lion prey, rich plunder, judgment coming, biblical condemnation scene"}
  @{Dir="34-naum";File="cap-3.jpg";Prompt="Chariots charging through Nineveh streets, siege towers, walls breached, soldiers fighting, biblical battle scene"}
  @{Dir="34-naum";File="cap-4.jpg";Prompt="Good tidings of peace, messenger on mountain, feet beautiful, salvation announced, biblical good news scene"}
  @{Dir="34-naum";File="cap-5.jpg";Prompt="Nineveh destruction complete, desolation and ruins, God just in judgment, biblical fulfillment scene"}

  @{Dir="35-habacuque";File="capa.jpg";Prompt="Prophet Habakkuk on watchtower, looking for answer, faith and questions, night sky, watchman scene, biblical faith"}
  @{Dir="35-habacuque";File="cap-1.jpg";Prompt="Habakkuk questioning God, violence and injustice, hands raised in complaint, honest prayer, biblical lament scene"}
  @{Dir="35-habacuque";File="cap-2.jpg";Prompt="Vision written on tablets, running messenger, appointed time, prophecy waiting, biblical patience scene"}
  @{Dir="35-habacuque";File="cap-3.jpg";Prompt="Babylonian army advancing, Chaldeans rising, horses and soldiers, divine instrument of judgment, biblical conquest scene"}
  @{Dir="35-habacuque";File="cap-4.jpg";Prompt="The righteous shall live by faith, foundation stone, faith pillar, standing firm, biblical faith declaration scene"}
  @{Dir="35-habacuque";File="cap-5.jpg";Prompt="Though fig tree does not blossom, yet I will rejoice in Lord, joy in suffering, praise despite circumstances, biblical faith scene"}

  @{Dir="36-sofonias";File="capa.jpg";Prompt="Great Day of the Lord approaching, darkness and gloom, trumpet sound, judgment and restoration, biblical apocalyptic scene"}
  @{Dir="36-sofonias";File="cap-1.jpg";Prompt="Day of wrath, darkness and gloom, trumpet warning, cosmic disturbance, judgment approaching, biblical prophetic scene"}
  @{Dir="36-sofonias";File="cap-2.jpg";Prompt="Seek the Lord all humble of earth, seeking righteousness and humility, shelter in day of wrath, biblical refuge scene"}
  @{Dir="36-sofonias";File="cap-3.jpg";Prompt="Jerusalem restored, singing and rejoicing, God rejoicing over his people with singing, biblical restoration joy scene"}
  @{Dir="36-sofonias";File="cap-4.jpg";Prompt="Remnant purified, humble and lowly, trusting in God, gathered home, restored people, biblical remnant scene"}
  @{Dir="36-sofonias";File="cap-5.jpg";Prompt="Zephaniah final joy, God in midst of Zion, salvation and restoration, biblical celebration scene"}

  @{Dir="37-ageu";File="capa.jpg";Prompt="Temple rebuilding in Jerusalem, Zerubbabel and Joshua, workers laying stones, second temple construction, biblical scene"}
  @{Dir="37-ageu";File="cap-1.jpg";Prompt="Prophet Haggai preaching to people, consider your ways, paneled houses while temple lies in ruins, biblical rebuke scene"}
  @{Dir="37-ageu";File="cap-2.jpg";Prompt="Temple foundation shaken, glory of latter temple greater than former, divine promise, prophetic encouragement scene"}
  @{Dir="37-ageu";File="cap-3.jpg";Prompt="Unclean people touching holy things, defiled offerings, Haggai teaching about holiness, biblical purity lesson"}
  @{Dir="37-ageu";File="cap-4.jpg";Prompt="Zerubbabel as signet ring, chosen by God, kingdoms overthrown, divine election, biblical promise scene"}
  @{Dir="37-ageu";File="cap-5.jpg";Prompt="Haggai final message, God will shake heavens and earth, blessing promised, biblical hope scene"}

  @{Dir="38-zacarias";File="capa.jpg";Prompt="Prophet Zechariah visions, golden lampstand olive trees, flying scroll, horses and chariots, apocalyptic biblical scene"}
  @{Dir="38-zacarias";File="cap-1.jpg";Prompt="Zechariah night visions, angelic messengers, horsemen among myrtle trees, divine revelation, biblical prophetic scene"}
  @{Dir="38-zacarias";File="cap-2.jpg";Prompt="Joshua high priest in filthy garments, Satan accusing, angel clothing in clean robes, cleansing and restoration scene"}
  @{Dir="38-zacarias";File="cap-3.jpg";Prompt="Branch and King, priest and ruler united, Messiah coming, humble and riding on donkey, Zechariah prophecy scene"}
  @{Dir="38-zacarias";File="cap-4.jpg";Prompt="Shepherd struck, sheep scattered, thirty pieces of silver, pierced one, mourning, messianic prophecy scene"}
  @{Dir="38-zacarias";File="cap-5.jpg";Prompt="Lord will be King over all the earth, living waters from Jerusalem, holy to the Lord, millennial kingdom scene"}

  @{Dir="39-malaquias";File="capa.jpg";Prompt="Malachi prophecy scroll, messenger preparing way, refiner fire, sun of righteousness rising, bridge between testaments scene"}
  @{Dir="39-malaquias";File="cap-1.jpg";Prompt="God love for Israel shown, Jacob and Esau contrasted, divine election, father honoring children, biblical love declaration scene"}
  @{Dir="39-malaquias";File="cap-2.jpg";Prompt="Corrupt priests offering blind and lame animals, defective sacrifices, temple scene, Malaquias rebuke, biblical confrontation"}
  @{Dir="39-malaquias";File="cap-3.jpg";Prompt="Storehouse tithing, windows of heaven open, abundant blessing, faithful stewardship, biblical prosperity scene"}
  @{Dir="39-malaquias";File="cap-4.jpg";Prompt="Sun of righteousness rising with healing in wings, light dawning, hope and restoration, biblical messianic scene"}
  @{Dir="39-malaquias";File="cap-5.jpg";Prompt="Prophet Elijah returning before great day, hearts of fathers turned to children, reconciliation, Malachi final promise scene"}
)

$total = $missing.Count
Write-Output "=== GERANDO $total IMAGENS FALTANTES ==="
$ok = 0

for ($i = 0; $i -lt $total; $i++) {
  $img = $missing[$i]
  $dir = "$root\$($img.Dir)\imagens"
  if (-not (Test-Path $dir)) { New-Item -ItemType Directory -Path $dir -Force | Out-Null }
  $outPath = "$dir\$($img.File)"
  $pct = "{0:N1}" -f (($i / $total) * 100)
  Write-Output "[$($i+1)/$total - $pct%] $($img.Dir)/$($img.File)"

  $prompt = [System.Uri]::EscapeDataString($img.Prompt)
  $url = "https://utku.berkaykoc.net/api/entertainment/text2image?prompt=$prompt&lang=en"

  $success = $false
  for ($attempt = 1; $attempt -le 3; $attempt++) {
    try {
      $r = Invoke-WebRequest -Uri $url -TimeoutSec 300 -UseBasicParsing
      $resp = $r.Content | ConvertFrom-Json
      $bytes = [Convert]::FromBase64String($resp.base64Image)
      [System.IO.File]::WriteAllBytes($outPath, $bytes)
      $sizeKB = [math]::Round($bytes.Count / 1024, 1)
      Write-Output "  OK - $sizeKB KB"
      $success = $true; $ok++
      break
    } catch {
      if ($attempt -lt 3) {
        $wait = 30 * $attempt
        Write-Output "  ERRO tentativa $attempt/3, aguardando ${wait}s..."
        Start-Sleep -Seconds $wait
      } else {
        Write-Output "  FALHOU apos 3 tentativas"
      }
    }
  }

  if ($i -lt ($total - 1) -and $success) { Start-Sleep -Seconds 8 }
}

Write-Output "`n=== CONCLUIDO: $ok/$total geradas ==="
if ($ok -lt $total) { Write-Output "Falhas: $($total - $ok). Execute fallback Pollinations para estas." }
