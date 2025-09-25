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

apt update && apt upgrade -y
apt install python3 python3-pip docker docker-compose docker.io containerd -y

mkdir /bin/shareforge/

