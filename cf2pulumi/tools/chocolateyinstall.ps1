$ErrorActionPreference = 'Stop';

$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = "cf2pulumi"
  unzipLocation  = $toolsDir
  file64         = "$toolsDir\cf2pulumi.exe-vX.X.X-windows-amd64.zip"
}

Install-ChocolateyZipPackage  @packageArgs

