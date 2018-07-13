Write-Host ""
$input = $false



do{

Write-Host "please enter your selection
    1.)container information 
    2.)network information
    3.)image information
      "

$input=Read-Host "Selection"
switch($input){
    1{inspectContainer}
    2{inspectNetwork}  #need to finsh this
    3{inspectImage}
    4{}

    



}




}while ($respone -eq $false)