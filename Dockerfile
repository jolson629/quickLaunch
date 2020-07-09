FROM node:12

ARG title
ENV TITLE=$title

ARG description
ENV DESCRIPTION=$description

ARG favicon_location
ENV FAVICON_LOCATION=$favicon_location

ARG logo
ENV LOGO=$logo

ARG mapbox_api_url
ENV MAPBOX_API_URL=$mapbox_api_url

ARG mapbox_token
ENV MAPBOX_TOKEN=$mapbox_token

ARG mongodb_url
ENV MONGODB_URL=$mongodb_url

ARG mongodb_name
ENV MONGODB_NAME=$mongodb_name

RUN mkdir -p /mapbox
WORKDIR /mapbox/
RUN git clone https://github.com/jolson629/quickLaunch.git
WORKDIR /mapbox/quickLaunch/

RUN npm ci
RUN npm run config
#npm install -g npm
#npm update
#npm audit fix
RUN npm start

