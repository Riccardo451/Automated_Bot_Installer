#!/usr/bin/env bash 

## Riccardo Montaguti 05/2021

# Github link to download bot
url=https://github.com/Hari-Nagarajan/fairgame

# Directory where you store the bots on your pc
dir=/Users/USERNAME/Documents/GPU_BOTS

# Names for bots folders (they will be renames like: fairgame_IT)
declare -a bots_names=("IT" "UK" "DE" "FR" "ES" )



#### Start of script ####


# Iterate over all bots_names
for val in ${bots_names[@]}; do

cd $dir

#Create the Bot folder name 
folder_name="fairgame_"
folder_name="${folder_name}$val"

git clone $url $folder_name

cd $folder_name

#pipenv shell
pipenv install

done