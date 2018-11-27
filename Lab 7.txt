$exitResponse = "n"
while($exitResponse -eq "n"){
    $ServerList = Import-Csv "serverlist.csv" | Select-Object "Servers"
    foreach ($server in $ServerList){
	$server = $server.Servers
        Start-Job -Name $server -ScriptBlock{
        Test-Connection $server -Quiet    
	write-host $server

        } #close start-job
    } #close foreach

    $exitResponse = Read-Host "Do you want to exit? y/n"

} #close while

write-host "Finished"