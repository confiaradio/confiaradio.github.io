# index - file where to add audio player
$filePath = "index.html"

# Get line number of tilte to add audio player before
$lineNumber = Select-String -Path index.html -Pattern "A RADIO</strong>" | Select-Object LineNumber -ExpandProperty LineNumber

# Check if audio player already exists
$audioLineNumber = Select-String -Path index.html -Pattern "https://node-22.zeno.fm/s8n4kur8uwzuv" | Select-Object LineNumber -ExpandProperty LineNumber

if($audioLineNumber-1 -eq -1 ){
    # Audio player script
    $textToAdd = '<div class="mb-4"><audio controls autoplay><source src="https://node-22.zeno.fm/s8n4kur8uwzuv.aac?rj-ttl=4&amp;aw_0_req_lsid=5125a29e5dfaf2ec1ce51ed00f37f38d&amp;bsw-uid=bad8ffdb-01fb-4a57-9d19-68bfae59ce84&amp;cto-uid=ee4b40de-78b2-48d8-8ac7-6c18a375abbe-5cef0087-5553&amp;adt-uid=cuid_c216f7f1-aa55-11ec-87fe-121a6d1d7927&amp;amb-uid=7405063137136975609&amp;rj-tok=AAABgZyMbBcAVgzwp-FnTwc4vA&amp;aw-uid=5125a29e5dfaf2ec1ce51ed00f37f38d&amp;dyn-uid=384_5cba5a851df96&amp;dbm-uid=CAESECN73aP-FY7CXrqs6igkKaU&amp;triton-uid=cookie%3Afe7937f3-e402-4cc6-8fb5-bf7d450e0e94&amp;zs=tcz2SkzRRVuQFh4Q20mKug&amp;an-uid=7704404713328887359" type="audio/ogg"><source src="https://node-22.zeno.fm/s8n4kur8uwzuv.aac?rj-ttl=4&amp;aw_0_req_lsid=5125a29e5dfaf2ec1ce51ed00f37f38d&amp;bsw-uid=bad8ffdb-01fb-4a57-9d19-68bfae59ce84&amp;cto-uid=ee4b40de-78b2-48d8-8ac7-6c18a375abbe-5cef0087-5553&amp;adt-uid=cuid_c216f7f1-aa55-11ec-87fe-121a6d1d7927&amp;amb-uid=7405063137136975609&amp;rj-tok=AAABgZyMbBcAVgzwp-FnTwc4vA&amp;aw-uid=5125a29e5dfaf2ec1ce51ed00f37f38d&amp;dyn-uid=384_5cba5a851df96&amp;dbm-uid=CAESECN73aP-FY7CXrqs6igkKaU&amp;triton-uid=cookie%3Afe7937f3-e402-4cc6-8fb5-bf7d450e0e94&amp;zs=tcz2SkzRRVuQFh4Q20mKug&amp;an-uid=7704404713328887359" type="audio/mpeg">Your browser does not support the audio element.</audio></div>'
    
    # Append content to line number
    $fileContent = Get-Content $filePath
    $fileContent[$lineNumber-2] += $textToAdd
    $fileContent | Set-Content $filePath
}