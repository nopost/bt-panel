#!/bin/bash
cd /www/server/panel \
&& python tools.pyc panel mkaliez.com \
&& service bt start

