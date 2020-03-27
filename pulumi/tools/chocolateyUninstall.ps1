$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$bindir   = Join-Path -Path $toolsDir -ChildPath "Pulumi\bin"

$unPath = Join-Path $toolsPath 'Uninstall-ChocolateyPath.psm1'
Import-Module $unPath
Uninstall-ChocolateyPath $bindir 'Machine'

$pulumiDir = Join-Path -Path $toolsDir -ChildPath "Pulumi"

if (Test-Path $pulumiDir) {
    Remove-Item $pulumiDir -Recurse -Force
}

Update-SessionEnvironment
