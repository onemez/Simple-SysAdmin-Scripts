#From Jeff Hicks, run these daily and explore what pwsh has to offer

Get-Command -Module Microsoft*,Cim*,PS* | Get-Random | Get-Help -ShowWindow
Get-Random -input (Get-Help about*) | Get-Help -ShowWindow

<#
The first command will pick a random cmdlet from what I consider the basic, out-of-the-box PowerShell set of commands,
and display the help for that cmdlet in a popup window. The second command does a similar thing for one of the conceptual about_* topics.
#>
