#!/bin/bash

export title=test01
export description=test01
export favicon_location=
export logo=
export mapbox_api_url=https://api.mapbox.com
export mapbox_token=$MAPBOX_TOKEN
export mongodb_url=localhost
export mongodb_name=annotations
npm run config --loglevel verbose
npm start
