

#!/bin/bash
echo "***Starting...***"
echo "***Cloning repo...***"

git clone https://github.com/WatsonHackBio/watson/tree/main/Script
cd lovelace

echo "***Mixing personal info...***"
echo "Name,email,slack_username,biostack,twitter_handle,hamming_distance">>team_watson.csv
node atif-hackbio.php >>team_watson.csv
node hackbio.py >>team_watson.csv
node stage_0_prem_py.py >>team_watson.csv
node stage_0_yissa.py >>team_watson.csv

echo "***CSV generated!***"
