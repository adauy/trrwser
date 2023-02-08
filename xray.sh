#!/bin/sh
if [ ! -f UUID ]; then
  UUID="60462498-8b6e-426c-83f4-d9ca9b5549dc"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

