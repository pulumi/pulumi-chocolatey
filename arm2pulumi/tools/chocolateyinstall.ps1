$ErrorActionPreference = 'Stop';

$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = "arm2pulumi"
  unzipLocation  = $toolsDir
  file64         = "$toolsDir\arm2pulumi.exe-vX.X.X-windows-amd64.zip"
}

Install-ChocolateyZipPackage  @packageArgs

