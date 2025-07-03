oh-my-posh init pwsh --config ~/powerlevel10k_rainbow.omp.json | Invoke-Expression

# Git aliases
function Get-GitStatus { & git status -sb $args }
New-Alias -Name gst -Value Get-GitStatus

function Get-GitAddAll { & git add --all $args }
New-Alias -Name gaa -Value Get-GitAddAll

Remove-Item -Path Alias:\gcm -Force -ErrorAction SilentlyContinue
function Get-GitCommit { & git commit -m $args }
New-Alias -Name gcm -Value Get-GitCommit

Remove-Item -Path Alias:\gps -Force -ErrorAction SilentlyContinue
function Get-GitPush { & git push --follow-tags $args }
New-Alias -Name gps -Value Get-GitPush

function Get-GitPullRebase { & git pull --rebase $args }
New-Alias -Name gpr -Value Get-GitPullRebase

function Get-GitCheckout { & git checkout $args }
New-Alias -Name gco -Value Get-GitCheckout

Remove-Item -Path Alias:\gcb -Force -ErrorAction SilentlyContinue
function Get-GitCheckoutBranch { & git checkout -b $args }
New-Alias -Name gcb -Value Get-GitCheckoutBranch

function Get-GitLog { & git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit $args }
New-Alias -Name glg -Value Get-GitLog