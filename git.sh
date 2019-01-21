#!/bin/bash

git add .
read -p "Message du commit : "  var_msg
git commit -m "$var_msg"
git push
