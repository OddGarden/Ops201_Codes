<# 
    Script:                   Ops 201 Class 12 Ops Challenge Solution
    Author:                   Lilian Mburu
    Date of last revision:    Mar 23th 2023
    Purpose:                 Use Select-String cmdlet for regular expression matching to search for text patterns in input strings and files

#>
#Main
# Create a local file called network_report.txt that holds the contents of an ipconfig /all command.
cd "~\Desktop"
ipconfig /all > network.report.txt

# Use Select-String to search network_report.txt and return only the IP version 4 address.
# Select-String -Path "network.report.txt"


$results= Select-String -Path "network.report.txt" -Pattern "IPv4 Address"

function Parse-Results {
    param (
        [string[]]$results
    )
    $ipList = $results[1].line -split "(:)" 

    $ipArr = $ipList[2] -split "[(]" 

    $ip = $ipArr[0]

    echo $ip
}

Parse-Results($results)

# Remove the network_report.txt when you are finished searching it.
#End