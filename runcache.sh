#/bin/bash
ENDPOINT=https://sa-korona-api.herokuapp.com/cache/set/smittetall
status_code=$(curl --write-out %{http_code} --silent --output /dev/null $ENDPOINT)

if [[ "$status_code" -ne 200 ]] ; then
  echo "$ENDPOINT status $status_code"
  exit 1
else
  echo "$ENDPOINT OK"
  exit 0
fi
