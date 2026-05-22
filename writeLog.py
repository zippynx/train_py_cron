from datetime import datetime

with open('/home/zippynx/training_python_cron/data.txt', 'a') as log_file:
    log_file.write(f"Cron job executed at: {datetime.now()}\n")
