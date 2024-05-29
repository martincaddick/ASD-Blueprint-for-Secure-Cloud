# Copy asd*.txt to asd*.ps1

# copy configuration.txt to configuration.psd1

$files = Get-ChildItem -Filter asd*.ps1

foreach ($file in $files)
{
    $inputPath = $file.FullName
#    $outputPath = $inputPath.Replace(".ps1",".xlsx") 
    New-M365DSCReportFromConfiguration -Type Excel -ConfigurationPath $inputPath -OutputPath $inputPath.Replace(".ps1",".xlsx")
    New-M365DSCReportFromConfiguration -Type Markdown -ConfigurationPath $inputPath -OutputPath $inputPath.Replace(".ps1",".md")
    New-M365DSCReportFromConfiguration -Type HTML -ConfigurationPath $inputPath -OutputPath $inputPath.Replace(".ps1",".html")
    New-M365DSCReportFromConfiguration -Type JSON -ConfigurationPath $inputPath -OutputPath $inputPath.Replace(".ps1",".json")
}
