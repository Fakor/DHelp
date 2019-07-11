# Creates a group called webuser and adding argument user to it. To restrict
# access to firefox and perhaps other webprograms for other users

NEW_USER=$1

FIREFOX_BIN=/usr/bin/firefox
WEBUSERS=webusers

addgroup $WEBUSERS
chmod 750 $FIREFOX_BIN
chown root:$WEBUSERS $FIREFOX_BIN
adduser $NEW_USER $WEBUSERS
