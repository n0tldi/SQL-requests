Get-ChildItem -Path "C:\Users\Yana\Desktop\SQL EDUCATION" -Recurse -Filter *.md | 
    ForEach-Object {Rename-Item $_.FullName -NewName "Readme.md" -Force}