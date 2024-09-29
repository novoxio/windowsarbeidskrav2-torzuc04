# windowsarbeidskrav2-torzuc04

Project Overview
This repository contains the PowerShell scripts and other relevant files used to implement High Availability for the infrastructure. The project is focused on setting up a redundant Active Directory (AD) environment, DNS and DHCP redundancy, and monitoring solutions.

Repository Contents
Export-DHCPLeases.ps1:
This PowerShell script exports all DHCP leases from the DHCP server to a CSV file. The CSV includes the following fields:

ScopeId
IPAddress
HostName
ClientID
AddressState
DHCP_Leases.csv:
This CSV file contains the DHCP lease information extracted from the server using the Export-DHCPLeases.ps1 script. It lists the current leases, including active and inactive reservations.


How to Use
Export-DHCPLeases.ps1:
To run the script, execute the following command in PowerShell:
./Export-DHCPLeases.ps1
The output will be saved as a CSV file, which can be used to review DHCP leases across the network.
