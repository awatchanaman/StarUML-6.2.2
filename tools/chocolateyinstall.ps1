$ErrorActionPreference = 'Stop';
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://staruml.io/api/download/releases-v7/StarUML%20Setup%207.0.0.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  softwareName  = 'staruml'
  checksum      = 'B4ED98E72AEF70296F61F80E8C5319F6C3842E6D47E404CDCC3CA3EF79C44F00'
  checksumType  = 'sha256'
  silentArgs='/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
