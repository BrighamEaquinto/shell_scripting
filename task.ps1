# Define the path to your PowerShell script
$scriptPath = "C:\Users\Bethany\OneDrive - BYU-Idaho\Documents\GitRepos\exploratory_space\first.ps1"

# Create the action to run PowerShell with your script
$action = New-ScheduledTaskAction -Execute "powershell.exe" -Argument "-File $scriptPath"

# Create the trigger to run the task every minute
$trigger = New-ScheduledTaskTrigger -Once -RepetitionInterval (New-TimeSpan -Minutes 1) -RepetitionDuration ([System.TimeSpan]::MaxValue)

# Create the settings for the task
$settings = New-ScheduledTaskSettingsSet -AllowStartIfOnBatteries -DontStopIfGoingOnBatteries -DontStopOnIdleEnd -StartWhenAvailable

# Create the scheduled task with the action and trigger
$task = Register-ScheduledTask -TaskName "AppendTimeTask" -Action $action -Trigger $trigger -Settings $settings

# Run the task immediately
Start-ScheduledTask -TaskName "AppendTimeTask"
