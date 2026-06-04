$b64 = [Convert]::ToBase64String([IO.File]::ReadAllBytes('d:\excel-logo\palette.jpg'))
$html = Get-Content 'd:\excel-logo\index.html' -Raw
$html = $html.Replace("texLoader.load('palette.jpg',", "texLoader.load('data:image/jpeg;base64," + $b64 + "',")
Set-Content 'd:\excel-logo\index.html' -Value $html -Encoding UTF8
