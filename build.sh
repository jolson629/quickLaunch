#!/bin/bash

export TITLE=test01
export DESCRIPTION=test01
export FAVICON_LOCATION=
export LOGO=
export MAPBOX_API_URL=https://api.mapbox.com
export MONGODB_URL=localhost
export MONGODB_NAME=annotations
export RUN_MODE=development
export VERSION=0.9.0

docker build --no-cache \
	--build-arg title=$TITLE \
	--build-arg description=$DESCRIPTION \
	--build-arg favicon_location=$FAVICON_LOCATION \
	--build-arg logo=$LOGO \
	--build-arg mapbox_api_url=$MAPBOX_API_URL \
	--build-arg mapbox_token=$MAPBOX_TOKEN \
	--build-arg mongodb_url=$MONGODB_URL \
	--build-arg mongodb_name=$MONGODB_NAME \
	-t mapbox-$RUN_MODE:$VERSION .
