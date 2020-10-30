Write-Host ""
$userInput = $false



do{

Write-Host "please enter your selection
    1.)container information 
    2.)network information
    3.)image information
      "

$userInput=Read-Host "Selection"
switch($userInput){
    1{inspectContainer}
    2{inspectNetwork}  #need to finsh this
    3{inspectImage}
    4{}

    



}




}while ($respone -eq $false)