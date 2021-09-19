#UserSetup
$SetPass = read-host -assecurestring
$Users =Import-CSV "C:\shares\scripts\UsersList.csv" 
$cred = Get-Credential
#get-aduser -Filter * -Properties *| gm
ForEach ($user in $users){ 
    
    New-ADUser `
        -Credential $cred `
        -Path $user.DistinguishedName `
        -department $user.Department `
        -SamAccountName $user.SamAccountName `
        -Name $user.Name `
        -Surname $user.Surname `
        -GivenName $user.GivenName `
        -UserPrincipalName $user.UserPrincipalName `
        -City $user.city `
        -ChangePasswordAtLogon $False `
        -AccountPassword $SetPass `
        -Enabled $False -Verbose
        }
#Set accounts as enabled
    Set-ADUser -Identity 'mmtest' -Enabled $True
    set-aduser -Identity 'mmadmin' -enable $true

#Add mbadmin account to Admin Groups
Add-ADGroupMember -Identity 'Domain Admins' -Members 'mmadmin'
Add-ADGroupMember -Identity 'Enterprise Admins' -Members 'mmadmin'
Add-ADGroupMember -Identity 'Schema Admins' -Members 'mmadmin'