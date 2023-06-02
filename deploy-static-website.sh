#!/bin/bash

# Description: Deploy a static website on a CentOS Machine

logger(){

    # variables
    local LOG_FILE_PATH=/tmp
    local LOG_FILE_NAME=script.log

    if [ $# -eq 2 ]
    then
        SEVERITY="$1"
        LOG_MESSAGE="$2"
    elif [ $# -eq 1 ]
    then
        SEVERITY="INFO"
        LOG_MESSAGE="$1"
    else
        SEVERITY="EXCEPTION"
        LOG_MESSAGE="Wrong Sytax used for logger function. Usage: logger <SEVERITY> <LOG_MESSAGE>"
    fi
    
    echo -e "$(date '+%Y-%m-%d %T') $SEVERITY: $LOG_MESSAGE" >> $LOG_FILE_PATH/$LOG_FILE_NAME

}

WEBSITE_URL="https://www.tooplate.com/zip-templates/2129_crispy_kitchen.zip"
ZIP_FILE_NAME="$(echo $WEBSITE_URL | awk -F '/' '{print $5}')"
UNZIP_FILE_NAME="$(echo $ZIP_FILE_NAME | sed 's/\.zip$//')"

logger "Script Execution Started"

logger "Installing Required Packages"
yum install httpd wget unzip -y

logger "Starting httpd service"
systemctl start httpd && systemctl enable httpd

logger "Downloading the Website Template"
cd /tmp
wget $WEBSITE_URL

logger "Placing the HTML file in '/var/www/html/' directory for serving the content via httpd"
unzip -o $ZIP_FILE_NAME
cp -r /tmp/$UNZIP_FILE_NAME/* /var/www/html

logger "Restarting httpd service"
systemctl restart httpd

logger "Checking if the Website is Accesible or not"
HTTP_RESPONSE_CODE=$(timeout 10s curl -is -XGET "http://192.168.20.20:80" | grep "^HTTP" | awk '{print $2}')

if [ $HTTP_RESPONSE_CODE -eq 200 ]
then
    logger "Website is up and running"
else
    logger "ERROR" "Website is not accesible"
fi

logger "Script Completed"