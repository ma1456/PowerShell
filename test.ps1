$SourceDirectory = "C:\Users\ManojKumarBalaraju\Music\JFrog"
$TargetDirectory = "https://github.com/ma1456/JFrog.git"
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
Copy-Item "C:\Users\ManojKumarBalaraju\Music\JFrog" -Destination "$SourceDirectory"
cd $SourceDirectory
git pull
git add . 
git commit -m "Files moved from Windows machine to GitHubb $Test"
git push -u origin main
}
else {
Write-Output "The source directory does not exist."
}


