$developmentPath = "F:\Documents\Code_Hub\network_tech"
$packagesPath = "C:\Users\mmwel\AppData\Roaming\Sublime Text 3\Installed Packages"

$tempName = "temp.zip"
$pluginName = "ztest.sublime-package"

$zipPath = Join-Path $packagesPath $tempName

Remove-Item (Join-Path $packagesPath $pluginName)
Compress-Archive -Path $developmentPath -DestinationPath $zipPath
mv (Join-Path $packagesPath $tempName) (Join-Path $packagesPath $pluginName) 
