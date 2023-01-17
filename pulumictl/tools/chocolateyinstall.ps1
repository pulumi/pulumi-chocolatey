$ErrorActionPreference = 'Stop';

$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = "pulumictl"
  unzipLocation  = $toolsDir
  file64         = "$toolsDir\pulumictl-vX.X.X-windows-amd64.zip"
}

Install-ChocolateyZipPackage  @packageArgs

