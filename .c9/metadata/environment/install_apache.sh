{"filter":false,"title":"install_apache.sh","tooltip":"/install_apache.sh","undoManager":{"mark":0,"position":0,"stack":[[{"start":{"row":0,"column":0},"end":{"row":6,"column":65},"action":"insert","lines":["#!/bin/bash","","yum update -y","yum install -y httpd","systemctl start httpd","systemctl enable httpd","echo \"Hello World from $(hostname -f)\" > /var/www/html/index.html"],"id":1}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":6,"column":65},"end":{"row":6,"column":65},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1665248247582,"hash":"d0542c0221b7def35a9a5954f2d633fc88aaa56f"}