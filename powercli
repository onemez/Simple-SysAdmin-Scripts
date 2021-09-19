# A collection of commonly used powercli cmdlets, is NOT using Best Practices (logging in ias root)

# pre server connect stuff
# Set-PowerCLIConfiguration -Scope User -ParticipateInCEIP $false
# set-PowerCLIConfiguration -Scope user -InvalidCertificateAction Ignore

# connect to the server

# install-module -Name vmware.powercli (needed run after switch to ps7.1)
$powercli = Get-Credential
Connect-VIServer -Server 192.168.1.201 -Protocol https -Credential $powercli

#Connect-VIServer -Server 192.168.1.201 -Protocol https -User root -Password xxxxxx
get-powercliversion
Get-VMHost
get-vm
start-vm DC1
start-vm APP1,CLIENT1,WEB1
get-vmguest -vm dc1 | Format-List -Property HostName,IPAddress,Nics,Disks
get-vmguestnetworkinterface
Get-VirtualSwitch -VM dc1

# open remote console (errors, not a valid cmdlet - this should opens webcon, but app is default, thus error?)
Open-VMConsoleWindow​​ -VM dc1 -FullScreen

# shutdown from within guestos (best way-needs vmwaretools)
shutdown-vmguest name -Confirm

# needs -force if vms running? maybe need -kill (this is not graceful!)
#stop-vmhost 192.168.1.101 -Confirm

set-VMHost -State Connected
set-VMHost -State Maintenance    
