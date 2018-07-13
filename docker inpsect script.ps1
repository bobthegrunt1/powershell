function inspectContainer{



write-host "welcome to inspect tool by Bob Pratt
"
$input =$false


do{

docker container ls
$container=Read-Host "please enter  of id container"

Write-Host "please enter your selection
    1.)get mac address 
    2.)get IP address
    3.)get gatweway
    4.)get image name
    5.)get IDs
        
    "
    $input = Read-Host "Selection:"   
    
    switch($input){
     1{ docker inspect -format='{{range .NetworkSettings.Networks}}{{.MacAddress}}{{end}}' $container}
     2{ docker inspect -format='{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $container}
     3{ docker network inspect -format='{{range .IPAM.Config}}{{.Gateway}}{{end}}'  myNet}
     4{ docker inspect -format='{{.Config.Image}}' $container}
      
    
    }
    
   $input=read-host "do you want to exit Y/N" 
    
    
    
     }while ($input -ne 'Y')
}#end function

#tAKE INPUT
