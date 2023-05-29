$vmNames = "[Nama VM]"
$vmTemplate = Get-Template -Name "[Nama Template]"
$vmResourcePool = Get-ResourcePool -Name "[Nama Resource Pool]"
$vmHost = Get-VMHost -Name "[Nama Host]"
$vmDatastore = Get-Datastore -Name "[Nama Datastore]"
$vmNetwork = Get-VirtualPortGroup -Name "[Nama Network]"
foreach ($vmName in $vmNames) {
    New-VM -Name $vmName -Template $vmTemplate -ResourcePool $vmResourcePool -VMHost $vmHost -Datastore $vmDatastore -NetworkName $vmNetwork
}
