from crontab import CronTab

cron = CronTab(user=True)

job = cron.new(
    command='/usr/bin/python3 /home/zippynx/training_python_cron/writeLog.py',
    comment='Cron pertama'
)

job.minute.every(1)

cron.write()

print("Cron job berhasil ditambahkan.")
