# python script.py

# Get the current date in the desired format
$date = "PowerShell: $(Get-Date)"

# Specify the file path
$file = "C:\Users\Bethany\OneDrive - BYU-Idaho\Documents\GitRepos\exploratory_space\time_log.txt"

# Append the date to the file
Add-Content -Path $file -Value $date