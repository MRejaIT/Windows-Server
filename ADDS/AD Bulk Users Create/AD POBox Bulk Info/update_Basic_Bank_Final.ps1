# Import AD Module
Import-Module ActiveDirectory
 
write-Host 'Starting to update AD Attributes.......' -NoNewline -ForegroundColor Yellow
# Import CSV into variable $users
 
$users = Import-Csv -Path "C:\Test\updateusersinformation_Final.csv"
# Loop through CSV and update users if the exist in CVS file
 
foreach ($user in $users) 
{Get-ADUser -Filter "userPrincipalName -eq '$($user.userPrincipalName)'" | 
Set-ADUser -POBox $($User.POBox)
}