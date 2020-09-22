$ErrorActionPreference = 'Stop';

$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = "tf2pulumi"
  unzipLocation  = $toolsDir
  file64         = "$toolsDir\tf2pulumi-vX.X.X-windows-x64.zip"
}

Install-ChocolateyZipPackage  @packageArgs

