$SourceDirectory = "C:\Users\ManojKumarBalaraju\Music\sample-maven"
$TargetDirectory = "https://github.com/ma1456/sample-maven.git"
$Test =Get-date

if (Test-Path $SourceDirectory) {
 if (!(Test-Path "$SourceDirectory\.git")) {

git clone $TargetDirectory $SourceDirectory

$username = "ma1456"
$pat = "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"
git config  user.email "manojkumar.balaraju@gmail.com"
git config user.name "ma1456"
$authHeader = "Authorization: token $pat"
 } 
Copy-Item "C:\Users\ManojKumarBalaraju\Music\sample-maven" -Destination "$SourceDirectory"
cd $SourceDirectory
git pull
git add . 
git commit -m "Files moved from Windows machine to GitHubb $Test"
git push -u origin main
}
else {
Write-Output "The source directory does not exist."
}


