<# 
    Script:                   Ops 201 Class 09 Ops Challenge Solution
    Author:                   Lilian Mburu
    Date of last revision:    Mar 13th 2023
    Purpose:                 Use scripted commands that retrieve system log information via Powershell

#>
 
# Main

# Output all events from the System event log that occurred in the last 24 hours to a file on your desktop named last_24.txt.
$filepath = '~\Desktop'
$start = (Get-Date).AddDays(-1)
$end = Get-Date
Get-EventLog -LogName System -After $start -Before $end | Out-File $filepath\last_24.txt

# Output all “error” type events from the System event log to a file on your desktop named errors.txt.

Get-EventLog -LogName System -EntryType Error | Out-File $filepath\errors.txt

# Print to the screen all events with ID of 16 from the System event log.

echo "**********Event ID 16 Logs ************"
Get-EventLog -LogName System | Where-Object {$_.EventID -eq 16}
# Print to the screen the most recent 20 entries from the System event log.

echo "*********20 Newest System Logs ************"
Get-EventLog -LogName System -Newest 20
 
# Print to the screen all sources of the 500 most recent entries in the System event log. Ensure that the full lines are displayed (get rid of the … and show the entire text).

# End 