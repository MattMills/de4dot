$ErrorActionPreference = 'Stop'

#
# dotnet build isn't used because it can't build net35 tfms
#

msbuild -v:m -restore -t:Build -p:Configuration=Release -p:TargetFramework=net45 de4dot.netframework.sln
if ($LASTEXITCODE) { exit $LASTEXITCODE }
Remove-Item Release\net45\*.pdb, Release\net45\*.xml, Release\net45\Test.Rename.*
