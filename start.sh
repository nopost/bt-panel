#!/bin/bash
service bt start && cat \
&& echo  "Bt-Panel: http://$address:$port" \
&& echo -e "username: $username" \
&& echo -e "password: $password"

#cd /www/server/panel && python tools.pyc panel mkaliez.com
