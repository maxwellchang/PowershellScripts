Write-host "`n"
Write-host "Let's play rock, paper, scissors!"
Write-host "`n"
Write-host "	1: Rock"
Write-host "	2: Paper"
Write-host "	3: Scissors"
Write-host "`n"


[int]$player = read-host "Please enter your choice, 1-3"
[int]$computer = Get-Random -minimum 1 -maximum 3



If ($player -eq 1) { $playerstring="ROCK" }
ElseIf ($player -eq 2) { $playerstring="PAPER" }
ElseIf ($player -eq 3) { $playerstring="SCISSORS" }
Else { "`nThat was not a valid choice!" }



If ($computer -eq 1) { $computerstring="ROCK" }
If ($computer -eq 2) { $computerstring="PAPER" }
If ($computer -eq 3) { $computerstring="SCISSORS" }


If ($player -gt 3) { "Try again with a valid choice!" }
ElseIf ($player -lt 1) { "Try again with a valid choice!" }

ElseIf ($player -eq $computer) { "`nYou chose $playerstring and the computer chose $computerstring! It's a draw!" } # Draw scenario

ElseIf ($player - $computer -eq 1 -Or $player - $computer -eq -2) { "`nYou chose $playerstring and the computer chose $computerstring! You win!" } # Player wins scenario

Else { "`nYou chose $playerstring and the computer chose $computerstring! You lose!" } # Computer wins scenario