New-Item Recipes -ItemType Directory 
$folders = Get-ChildItem -Directory
foreach ($folder in $folders){
    Write-Output $folder
    If (Test-Path "$folder/recipe.pdf"){
        Write-Host "Recipes/$($folder.Name).pdf"
        Move-Item $folder/recipe.pdf -Destination "Recipes/$($folder.Name).pdf"
    }
}