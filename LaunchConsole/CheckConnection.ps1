$ping = Test-Connection -ComputerName mastera -Count 1 -Quiet

while($ping -eq $false){
    Write-Output "it no work"
    $ping = Test-Connection -ComputerName mastera -Count 1 -Quiet
   
}

if($ping -eq $true){
    Write-Output "it work"
    Start-Process -FilePath "WinQtConsole" -WorkingDirectory "C:\Program Files\Penta\NTConsol"
}
