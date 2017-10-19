#!/bin/bash

# Päivitetään Ubuntun sovellusvalikoima
sudo apt update

# Asennetaan apache www palvelin
sudo apt install apache2

# Asennetaan MySQL palvelin
sudo apt install mysql-server

# Asennetaan PHP
sudo apt install php libapache2-mod-php

# Sammutetaan apache
sudo systemctl stop apache2

# Käynnistetään apache, jotta uudet asetukset tulevat voimaan
sudo systemctl start apache2

# Näytetään apache tila
sudo systemctl status apache2

# Testaan PHP:n toimivuus
php -r 'echo "\n\nYour PHP installation is working fine.\n\n\n";'
