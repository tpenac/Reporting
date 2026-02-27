$path = 'C:\Users\tpena\OneDrive - AGROSANA\Documents\Trabajo\CLAUDE\Reporting\Reporting AGROSANA 01_2026 v4.1 POST SENT CLAUDE.xlsx'
$excel = New-Object -ComObject Excel.Application
$excel.Visible = $false
$excel.DisplayAlerts = $false
$wb = $excel.Workbooks.Open($path, 0, $true)  # ReadOnly

Write-Host "Hojas:" ($wb.Sheets | ForEach-Object { $_.Name } | Join-String -Separator " | ")

$norecSheet = $null
foreach ($s in $wb.Sheets) {
    if ($s.Name -match "recur") { $norecSheet = $s; break }
}

if ($norecSheet) {
    Write-Host "--- Hoja: $($norecSheet.Name) ---"
    for ($r = 1; $r -le 60; $r++) {
        $row = @()
        for ($c = 1; $c -le 16; $c++) {
            $v = $norecSheet.Cells.Item($r, $c).Value2
            $row += if ($v -ne $null) { "$v" } else { "" }
        }
        $line = $row -join "|"
        if (($line -replace "\|","").Trim() -ne "") { Write-Host "R${r}|$line" }
    }
} else {
    Write-Host "No encontrada hoja NoRec"
}

$wb.Close($false)
$excel.Quit()
[System.Runtime.InteropServices.Marshal]::ReleaseComObject($excel) | Out-Null
