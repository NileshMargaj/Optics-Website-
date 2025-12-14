@echo off
cd /d "c:\Users\NILESH MARGAJ\Downloads\optics website-20251214T075846Z-3-001\optics website\pages"

for %%f in (*.html) do (
    if not "%%f"=="sunglasses.html" if not "%%f"=="eyeglass.html" if not "%%f"=="cateye.html" (
        echo Updating %%f...
        powershell -Command "(Get-Content '%%f') -replace 'href=\"([^\"]*\.css)\"', 'href=\"../assets/css/$1\"' | Set-Content '%%f'"
        powershell -Command "(Get-Content '%%f') -replace 'src=\"logo\.png\"', 'src=\"../assets/images/logo.png\"' | Set-Content '%%f'"
        powershell -Command "(Get-Content '%%f') -replace 'href=\"index\.html\"', 'href=\"../index.html\"' | Set-Content '%%f'"
        powershell -Command "(Get-Content '%%f') -replace 'src=\"([^\"]*\.(png|jpg|jpeg|webp))\"', 'src=\"../assets/images/$1\"' | Set-Content '%%f'"
    )
)

echo All HTML files updated!
pause