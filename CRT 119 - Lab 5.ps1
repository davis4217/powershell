$EmployeeList = Import-Csv "employeelist.csv"
New-Item -Path C:\ -ItemType directory -Name "EmployeeList"
foreach ($employee in $EmployeeList){
    $name = $employee.Name.Replace(' ','').ToLower()
    New-Item -Path C:\EmployeeList -ItemType directory -Name $name
}
$NewEmployee = Read-Host "Enter new employee name:"
$confirmEmployee = Read-Host "Are you sure? Y/N"
if ($confirmEmployee = "Y"){
        New-Item -Path C:\EmployeeList -ItemType directory -Name $NewEmployee
}
else{
    Write-Host "File not created."
}
$multiple = read-host "Enter a number:"
$num = 5,50,50,3,1
foreach ($entry in $num){
    $entry = $entry * $multiple
    Write-Host $entry
}

$server = Import-Csv "serverlist.csv" | Select-Object "Servers" 
foreach ($serv in $server){
    $serv = $serv.Servers
    Test-Connection $serv -Quiet
    Write-Host "Connected to "$serv
    
}
