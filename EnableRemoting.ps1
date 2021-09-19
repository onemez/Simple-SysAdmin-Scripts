#Review help for Enable-PSRemoting on administrative workstation
help Enable-PSRemoting

#View Help file for Enable-PSSession
help Enter-PSSession

help Enter-PSSession -Examples

help Invoke-Command

help Invoke-Command -Examples

##Find DHCP Lease on DHCP Server
Get-DhcpServerv4Lease -ComputerName DC1 -AllLeases -ScopeId 192.168.1.0

#Will Fail
Enter-PSSession -ComputerName 192.168.1.100 

#Set Trusted Hosts
Get-Item WSMan:\localhost\Client\TrustedHosts

Set-item WSMAN:\Localhost\Client\TrustedHosts -value *

#WillWork
Enter-PSSession -ComputerName 192.168.1.100 -Credential (get-credential) 
    #EnterHostname
    #Enter Exit



