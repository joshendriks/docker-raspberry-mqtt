$PSScriptRoot
$template = Join-Path $PSScriptRoot "Dockerfile.template"
$configfile = Join-Path $PSScriptRoot "build.json"
$config = (Get-Content $configfile) -join "`n" | ConvertFrom-Json

foreach ($tag in $config.tags) {
   Write-Host "Writing Dockerfile.$tag"
   (Get-Content $template).replace("{{baseimage}}", $config.baseimage).replace("{{tag}}", $tag) | Set-Content "Dockerfile.$tag"
}

foreach ($tag in $config.tags) {
   $imagename = $config.image + ":" + $tag
   docker build -t $imagename -f (Join-Path $PSScriptRoot "Dockerfile.$tag") .
}