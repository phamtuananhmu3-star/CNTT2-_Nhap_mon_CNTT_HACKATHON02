# Script: tong_hop.ps1
# Tac gia: Pham Tuan Anh
# Ngay tao: 11/11/2026
Write-Host "Dang tao bao cao..." > logs/tong_hop.txt
Get-content logs/request.log | Select-String "status=500" >> logs/tong_hop.txt
Get-content logs/request.log | Select-String "status=404" | Measure-Object >> logs/tong_hop.txt
Write_Host "Hoan thanh!"