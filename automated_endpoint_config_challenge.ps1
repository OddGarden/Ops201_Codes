<# 
    Script:                   Ops 201 Class 10 Ops Challenge Solution
    Author:                   Lilian Mburu
    Date of last revision:    Mar 20th 2023
    Purpose:                 A script that automates the configuration of a new Windows 10 endpoint

#>
# Main

# Enable File and Printer Sharing
Set-NetFirewallRule -DisplayGroup "File And Printer Sharing" -Enabled True
netsh advfirewall firewall add rule name="Allow incoming ping requests IPv4" dir=in action=allow protocol=icmpv4
# Allow ICMP traffic
# Enable Remote management
# Remove bloatware
# Enable Hyper-V
# Disable SMBv1, an insecure protocol

# End