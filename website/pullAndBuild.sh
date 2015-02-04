git pull
npm install
node cronjobs/cron.hourly/*-cron.js
node cronjobs/cron.daily/*-cron.js
echo "Deleting all old session data"
rm sub-projects/wave/data/schedule-data/*.json
echo "Don't forget to restart the server"
