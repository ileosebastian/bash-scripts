#!/bin/bash

# ---- Foler creation in loop ---
# in this case, for my subject called Data Mining

echo "----------------- MAKE N FOLDERS -----------------"
echo "Please, enter the folder name"
read name_folder

echo "Please, enter the number of folders (n)"
echo "These folders start with the name '<Folder-name> 1. <Folder-name> 2, ..., <Folder-name> n'"
read n_folders

if  [ "`echo $name_folder*`" != "$name_folder*" ]; then
    echo "The directory to make already exist"
else
    for ((i = 1; i <= $n_folders; i++))
    do
        `mkdir "$name_folder $i"`
    done
    echo "Directories has been create"
fi