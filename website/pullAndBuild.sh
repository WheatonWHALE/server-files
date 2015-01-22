git pull
npm install
node cronjobs/cron.hourly/*-cron.js
node cronjobs/cron.daily/*-cron.js
echo "Don't forget to restart the server"
