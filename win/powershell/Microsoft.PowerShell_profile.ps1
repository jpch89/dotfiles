Import-Module "Oh-My-Posh" -DisableNameChecking -NoClobber

# Git aliases
function Get-GitStatus { & git status $args }
New-Alias -Name gst -Value Get-GitStatus -Force -Option AllScope

function Get-GitAddAll{ & git add --all $args }
New-Alias -Name gaa -Value Get-GitAddAll -Force -Option AllScope

function Get-GitCommit { & git commit -m $args }
New-Alias -Name gcm -Value Get-GitCommit -Force -Option AllScope

function Get-GitPush { & git push --follow-tags $args }
New-Alias -Name gps -Value Get-GitPush -Force -Option AllScope

function Get-GitPullRebase { & git pull --rebase $args }
New-Alias -Name gpr -Value Get-GitPullRebase -Force -Option AllScope

function Get-GitCheckout{ & git checkout $args }
New-Alias -Name gco -Value Get-GitCheckout -Force -Option AllScope

function Get-GitCheckoutBranch { & git checkout -b $args }
New-Alias -Name gcb -Value Get-GitCheckoutBranch -Force -Option AllScope

function Get-GitLog{ & git log $args }
New-Alias -Name glg -Value Get-GitLog -Force -Option AllScope