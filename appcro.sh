#!/bin/bash
ps cax | grep node > /dev/null
if [ $? -eq 0 ]; then
  echo "Process is running." >/dev/null 2>&1
else
  echo "Process is not running."
  PATH=$PATH:/usr/local/bin
  pm2 start  api.prueba-nodejs.top.mx/server/server.js
fi