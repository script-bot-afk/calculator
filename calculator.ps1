Clear-Host
function Show-Menu {
    Write-Host "==========================="
    Write-Host "   PowerShell Calculator"
    Write-Host "==========================="
    Write-Host "1. Add"
    Write-Host "2. Subtract"
    Write-Host "3. Multiply"
    Write-Host "4. Divide"
    Write-Host "5. Exit"
}

while ($true) {
    Show-Menu
    $choice = Read-Host "Choose an option"

    if ($choice -eq "5") {
        break
    }

    $a = [double](Read-Host "Enter first number")
    $b = [double](Read-Host "Enter second number")

    switch ($choice) {
        "1" { $result = $a + $b }
        "2" { $result = $a - $b }
        "3" { $result = $a * $b }
        "4" { 
            if ($b -eq 0) {
                Write-Host "Cannot divide by zero!" -ForegroundColor Red
                continue
            }
            $result = $a / $b 
        }
        default {
            Write-Host "Invalid choice!" -ForegroundColor Yellow
            continue
        }
    }

    Write-Host "Result: $result" -ForegroundColor Green
    Write-Host ""
    Pause
    Clear-Host
}
