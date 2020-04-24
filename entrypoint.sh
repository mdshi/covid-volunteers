export SECRET_KEY_BASE=`bundle exec rake secret`
echo "Hello $SECRET_KEY_BASE"
# make sure to cleanup pid file
rm -f /app/tmp/pids/server.pid
bundle exec rails db:setup
bundle exec rails s -p 3000 -b '0.0.0.0'