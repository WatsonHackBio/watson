#!/bin/bash 

# This command helps us to clone the repository whose link is provided in the Command.
git clone https://github.com/WatsonHackBio/watson

# Entering into the repository.
cd ./Script

# Before running these file, we have to make them executable, this command give the file executable rights.
chmod +x Script*

# Looping through all the scripts one-by-one
for i in $(ls Script*)
do
	# ./$i represents the file to be executed at each loop.
	# "|" this command passes the output of first command as arguments to the next command.
	# awk command helps us manipulate text and pattern occuring in them.
	# Here ",' seprates each output and "\t" moves cursor to the next column in csv file to print output.
	# $1 .. $6 represents different fields which are name, email, username and so on.
	# which are then printed out to watson.csv
	./$i | awk -F ',' '{ OFS="\t";print $1,$2,$3,$4,$5,$6}' >> watson.csv
done


#!/bin/bash
echo "***Starting...***"
echo "***Cloning repo...***"

git clone https://github.com/thevalueadder/lovelace
cd lovelace

echo "***Mixing personal info...***"
echo "Name,email,slack_username,biostack,twitter_handle,hamming_distance">>team_lovelace.csv
node stage_0_JuanmaGarcia.js >>team_lovelace.csv
node stage_0_ToheebAmoo.js >>team_lovelace.csv
node stage_0_oluwadamife.js >>team_lovelace.csv
node stage_0_SalmaElShafie.js >>team_lovelace.csv
python stage_0_EstherOpone.py >>team_lovelace.csv
python stage_0_SamAdeneye.py >>team_lovelace.csv
python stage_0_ukaegbuDaniel.py >>team_lovelace.csv

echo "***CSV generated!***"
