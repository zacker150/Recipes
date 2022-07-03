New-Item Recipes -ItemType Directory 
$folders = Get-ChildItem -Directory
foreach ($folder in $folders){
    If (Test-Path $folder/recipe.pdf){
        Move-Item $folder/recipe.pdf -Destination "Recipes/$($folder.Name)".pdf
    }
}