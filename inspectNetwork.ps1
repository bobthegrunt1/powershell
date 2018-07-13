function inspectNetwork{

Write-Host ""
$respone = $false

docker network ls
$container=Read-Host "please enter  of network name"

do{

Write-Host "please enter your selection
    1.)get mac addresses 
    2.)get connected container ids
    3.)get gateway
    4.)get image name
      
    "

$input=Read-Host "selection"
switch($input){
    1{ docker network inpsect -format='{{range .conatainers.}}'}
    2{
    #enter a funct
    $a=docker container ls 
    foreach($item in $a){$string =$_.split(" ");$string[0] }
    docker network inspect -format='{{range }}'}
    3{docker network inspect -format='{{range .IPAM.Config}}{{.Gateway}}{{end}}'  $container}
    4{}

    



}#end switch




}while ($respone -eq $false)



}


inspectNetwork