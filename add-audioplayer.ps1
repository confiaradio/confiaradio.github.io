# index - file where to add audio player
$filePath = "index.html"

# Get line number of tilte to add audio player before
$lineNumber = Select-String -Path index.html -Pattern "A RADIO</strong>" | Select-Object LineNumber -ExpandProperty LineNumber

# Check if audio player already exists
$audioLineNumber = Select-String -Path index.html -Pattern "https://stream.zeno.fm/h4cwrur8uwzuv" | Select-Object LineNumber -ExpandProperty LineNumber

if($audioLineNumber-1 -eq -1 ){
    # Audio player script
    $textToAdd = '<div class="mb-4"><audio controls><source src="https://stream.zeno.fm/h4cwrur8uwzuv" type="audio/ogg">Your browser does not support the audio element.</audio></div>'
    
    # Append content to line number
    $fileContent = Get-Content $filePath
    $fileContent[$lineNumber-2] += $textToAdd
    $fileContent | Set-Content $filePath
}