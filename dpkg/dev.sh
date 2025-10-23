#!/bin/bash

echo "                       .,,uod8B8bou,,."
echo "              ..,uod8BBBBBBBBBBBBBBBBRPFT?l!i:."
echo "         ,=m8BBBBBBBBBBBBBBBRPFT?!||||||||||||||"
echo "         !...:!TVBBBRPFT||||||||||!!^^'''   ||||"
echo "         !.......:!?|||||!!^^'''            ||||"
echo "         !.........||||                     ||||"
echo "         !.........||||  >_                 ||||"
echo "         !.........||||                     ||||"
echo "         !.........||||                     ||||"
echo "         !.........||||                     ||||"
echo "         !.........||||                     ||||"
echo "         '.........||||                    ,||||"
echo "          .;.......||||               _.-!!|||||"
echo "   .,uodWBBBBb.....||||       _.-!!|||||||||!:'"
echo "!YBBBBBBBBBBBBBBb..!|||:..-!!|||||||!iof68BBBBBb...."
echo "!..YBBBBBBBBBBBBBBb!!||||||||!iof68BBBBBBRPFT?!::   '."
echo "!....YBBBBBBBBBBBBBBbaaitf68BBBBBBRPFT?!:::::::::     '."
echo "!......YBBBBBBBBBBBBBBBBBBBRPFT?!::::::;:!^'';:::       '."
echo "!........YBBBBBBBBBBRPFT?!::::::::::^''...::::::;         iBBbo."
echo "'..........YBRPFT?!::::::::::::::::::::::::;iof68bo.      WBBBBbo."
echo "  '..........:::::::::::::::::::::::;iof688888888888b.     'YBBBP^'"
echo "    '........::::::::::::::::;iof688888888888888888888b.     '"
echo "      '......:::::::::;iof688888888888888888888888888888b."
echo "        '....:::;iof688888888888888888888888888888888899fT!"
echo "          '..::!8888888888888888888888888888888899fT|!^''"
echo "            '' !!988888888888888888888888899fT|!^''"
echo "                '!!8888888888888888899fT|!^''"
echo "                  '!988888888899fT|!^''"
echo "                    '!9899fT|!^''"
echo "                      '!^'"
echo "                      Welcome"
echo " You should run this as root! It needs root permissions to install shareforge!"
echo ""
echo "Waiting for 10 seconds, Press ^c (ctrl + c) to exit!"
echo "This Install will use about 1-2 GB of storage!"
echo ""
sleep 10s


git clone https://github.com/shareforge-de/app
# on linux so remove the other app directories for space

cd ./app
rm -rf ./windows/
# rm -rf ./mobile/
# rm -rf ./mac/
echo "*" > .gitignore

apt install python3 python3-pip php php-curl php-sqlite -y

cp ./shareforge /usr/local/bin/shareforge
sudo chmod +x /usr/local/bin/shareforge
chmod +x /bin/shareforge
mkdir -p /etc/shareforge/shareforge.d /var/lib/shareforge /var/log/shareforge
touch /var/log/shareforge/shareforge.log
chown root:adm /var/log/shareforge/shareforge.log
chmod 664 /var/log/shareforge/shareforge.log
touch /etc/shareforge/shareforge.toml
cd /etc/shareforge/
rm requirements.txt
wget https://raw.githubusercontent.com/kylehost/shareforge.de/refs/heads/main/requirements.txt
pip install -r requirements.txt
mkdir -p /var/lib/shareforge/volumes/
mkdir -p /var/lib/shareforge/storage/ 
mkdir -p /var/lib/shareforge/config/
cd /var/lib/shareforge/config/
wget https://raw.githubusercontent.com/shareforge-de/shareforge.de/refs/heads/main/template-mkdocs.yml
mkdir -p /var/lib/shareforge/network/

# Wget the zip file for shareforge from cdn
# wget

docker network create shareforge
cd /opt/shareforge/
touch /opt/shareforge/.installed
echo "true " > .installed
clear

exit 0