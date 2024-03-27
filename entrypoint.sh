#!/bin/bash
# exit if none of the scripts are enabled
if ! [[ PLANET_ENABLED -ne 1 || DONATE_ENABLED -ne 1 ]]; then
  echo "Either PLANET_ENABLED or DONATE_ENABLED should be set to '1', exiting."
  exit 1
fi

# run scripts indefinitely
while true; do
  if [[ PLANET_ENABLED -eq 1 ]]; then
    php update_nfkplanet.php
  fi

  if [[ DONATE_ENABLED -eq 1 ]]; then
    php update_donate.php
  fi

  sleep $UPDATE_PERIOD
done
