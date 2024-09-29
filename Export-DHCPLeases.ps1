# Define the CSV file path where the leases will be exported
$csvFilePath = "C:\Users\torzuc04\Documents\DHCPLeases.csv"

# Get all DHCP leases
$leases = Get-DhcpServerv4Lease

# Create an array to store lease data with required fields
$leaseData = @()

# Loop through each lease and store the relevant information
foreach ($lease in $leases) {
    $leaseData += New-Object PSObject -Property @{
        "ScopeId"      = $lease.ScopeId
        "IPAddress"    = $lease.IPAddress
        "HostName"     = $lease.HostName
        "ClientID"     = $lease.ClientId
        "AddressState" = $lease.AddressState
    }
}

# Export the lease data to a CSV file with semicolon as the delimiter
$leaseData | Export-Csv -Path $csvFilePath -Delimiter ';' -NoTypeInformation

Write-Host "DHCP leases have been exported to $csvFilePath."