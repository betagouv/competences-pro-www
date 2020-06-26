#! /bin/bash

hugo
rsync -avce ssh public/ competences-pro@ssh-competences-pro.alwaysdata.net:www/prod
