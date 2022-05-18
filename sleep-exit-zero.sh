trap on_int INT
trap on_term TERM

on_int() {
  echo "Trapped INT signal"
  echo "Exiting 0"
  exit 0
}

on_term() {
  echo "Trapped TERM signal"
  echo "Exiting 0"
  exit 0
}

echo "Sleeping for an hour"
sleep 3600
