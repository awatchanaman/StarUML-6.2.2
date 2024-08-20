$ErrorActionPreference = 'Stop';
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://staruml.io/api/download/releases-v6/StarUML%20Setup%206.2.2.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  softwareName  = 'staruml'
  checksum      = '22708C65298371C2DCAF84CA19616116A9AC0543DA0F7ECBD3E7425E7B731369'
  checksumType  = 'sha256'
  silentArgs='/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
