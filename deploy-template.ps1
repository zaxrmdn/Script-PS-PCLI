# Connect to the vCenter Server
$vCenterServer = "ip/host vcenter"
$credential = Get-Credential
Connect-VIServer -Server $vCenterServer -Credential $credential

# Template and deployment details
$templateName = "Template VM"
$baseVmName = "Nama VM"  # Base name for VMs
$datastore = "datastore"
$networkName = "portgroup vm"
$hostName = "host esxi"  # Specific host for deployment

for ($i = 1; $i -le 10; $i++) {
    $vmName = "${baseVmName}${i}"
    New-VM -Name $vmName `
           -Template $templateName `
           -Datastore $datastore `
           -NetworkName $networkName `
           -VMHost $hostName `
}

# Disconnect from the vCenter Server
Disconnect-VIServer -Server $vCenterServer -Confirm:$false
