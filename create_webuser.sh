# Creates a group called webuser and adding argument user to it. To restrict
# access to firefox and perhaps other webprograms for other users

NEW_USER=$1

FIREFOX_BIN=/usr/bin/firefox
FIREFOX_LIB=/usr/lib/firefox/firefox
WEBUSERS=webusers

addgroup $WEBUSERS
chmod 750 $FIREFOX_BIN
chmod 750 $FIREFOX_LIB

chown root:$WEBUSERS $FIREFOX_BIN
chown root:$WEBUSERS $FIREFOX_LIB
adduser $NEW_USER $WEBUSERS
