<# 
    Script:                   Ops 201 Class 10 Ops Challenge Solution
    Author:                   Lilian Mburu
    Date of last revision:    Mar 16th 2023
    Purpose:                 Analyze, initialize, and terminate processes (programs) using Powershell commands

#>
# Main

# Print to the terminal screen all active processes ordered by highest CPU time consumption at the top.
Get-Process | Sort CPU -Descending

# Print to the terminal screen all active processes ordered by highest Process Identification Number at the top.
Get-Process | Sort-Object -Property Id -Descending

# Print to the terminal screen the top five active processes ordered by highest Working Set (WS(K)) at the top.
Get-Process | Sort-Object -Property WorkingSet -Descending | Select-Object -First 5

# Start the process Internet Explorer (iexplore.exe) and have it open https://owasp.org/www-project-top-ten/.
# <-- Since IE is no longer supported, opting to use msedge for the remaining part of this challenge --<
Start-Process  -FilePath "msedge.exe" -ArgumentList "https://owasp.org/www-project-top-ten/" -PassThru

# Start the process Internet Explorer (iexplore.exe) ten times using a for loop. Have each instance open https://owasp.org/www-project-top-ten/.
function openBrowser {
    for ($i = 0; $i -lt 10; $i++) {
        Start-Process -FilePath "msedge.exe" -ArgumentList "https://owasp.org/www-project-top-ten/" -PassThru
    }
}
openBrowser

# Close all Internet Explorer windows.
Stop-Process -Name msedge -PassThru

# Kill a process by its Process Identification Number. Choose a process whose termination won’t destabilize the system, such as Internet Explorer or MS Edge.
openBrowser
$pidList = Get-Process msedge | Select -ExpandProperty Id
for($i = 0; $i -lt $pidList.Length; $i++) {
    Stop-Process -ID $pidList[$i] -Force
}

# End