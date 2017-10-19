#!/bin/bash

# Asennetaan Linux, Apache, MySQL, PHP (LAMP) stack

# Päivitetään Ubuntun sovellusvalikoima
sudo apt update

# Asennetaan apache www palvelin
sudo apt install apache2

# Asennetaan MySQL palvelin
sudo apt install mysql-server

# Asennetaan PHP
sudo apt install php php-cli libapache2-mod-php php-mcrypt php-mysql

# Sammutetaan apache
sudo systemctl stop apache2

# Käynnistetään apache, jotta uudet asetukset tulevat voimaan
sudo systemctl start apache2

# Näytetään apache tila
sudo systemctl status apache2

# Testaan PHP:n toimivuus
php -r 'echo "\n\nYour PHP installation is working fine.\n\n\n";'

# Luodaan PHP info skripti www-palvelimelle
sudo echo "
<?php
phpinfo();
?>
" >/var/www/html/info.php

echo "Katso selaimella tarkempia tietoja palvelimesta:\n
http://localhost/info.php"
echo "Lue netistä tarkemmat ohjeet palvelimen asetuksien muokkaamiseen käyttötarpeen mukaan."
