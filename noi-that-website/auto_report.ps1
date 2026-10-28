# Script: auto_report.ps1

# Tac gia: Duy Thanh

# Ngay tao:28/10/2026

 

Write-Host "Dang loc log"


"=== Bao cao loi ===" | set-content logs/report.txt


 (gc logs/furniture.log | sls "ERROR" | Measure-Object).Count | add-content logs/report.txt
 gc logs/furniture.log | sls "ERROR"| add-content logs/report.txt

Write-Host "Da loc xong..."