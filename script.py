from datetime import datetime

timestamp = datetime.now().strftime("%Y-%m-%d %H:%M:%S")

with open("C:\\Users\\Bethany\\OneDrive - BYU-Idaho\\Documents\\GitRepos\\exploratory_space\\time_log.txt", "a") as file:
    file.write(f"Python: {timestamp}")
