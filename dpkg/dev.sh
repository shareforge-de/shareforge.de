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
echo ""
sleep 10s

cp ./shareforge /usr/local/bin/shareforge
sudo chmod +x /usr/local/bin/shareforge
chmod +x /bin/shareforge


mkdir -p /etc/shareforge/shareforge.d /var/lib/shareforge /var/log/shareforge
touch /var/log/shareforge/shareforge.log
chown root:adm /var/log/shareforge/shareforge.log
chmod 664 /var/log/shareforge/shareforge.log
touch /etc/shareforge/shareforge.conf
cd /etc/shareforge/
rm requirements.txt
wget https://raw.githubusercontent.com/kylehost/shareforge.de/refs/heads/main/requirements.txt

mkdir -p /var/lib/shareforge/volumes/
mkdir -p /var/lib/shareforge/storage/
mkdir -p /var/lib/shareforge/config/
mkdir -p /var/lib/shareforge/network/

mkdir -p /opt/shareforge/templates/
mkdir -p /opt/shareforge/

docker network create 

cd /opt/shareforge/