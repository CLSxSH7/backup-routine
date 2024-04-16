## Usage

1. Modify the `backup_files` variable to specify the files and directories you want to back up.
2. Ensure that the destination directory (`/mnt/backup` by default) exists before running the script.
3. Run the script using the command `./backup.sh`.
4. Monitor the terminal for progress updates and confirmation messages.
5. Optionally, integrate the script with Cron using the provided instructions to automate backups at scheduled intervals.

## Cron Integration

To automate the backup process using Cron, follow these steps:

1. Open the Cron configuration using the command `crontab -e`.
2. Add a new entry specifying the desired backup schedule. For example, to perform a backup every week at 5 AM, add the following line:
`0 5 * * 1 cd /home/user && ./backup.sh`
Replace `/home/user` with the path to the directory containing the script.
3. Save and exit the Cron configuration. The backup routine will now execute according to the specified schedule.

For more information on Cron scheduling syntax and options, refer to [Crontab Guru](https://crontab.guru/).
