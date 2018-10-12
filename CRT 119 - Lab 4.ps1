$EmployeeList = Import-Csv "employeelist.csv"
New-Item -Path C:\ -ItemType directory -Name "EmployeeList"
foreach ($employee in $EmployeeList){
    $name = $employee.Name.Replace(' ','').ToLower()
    New-Item -Path C:\EmployeeList -ItemType directory -Name $name
}