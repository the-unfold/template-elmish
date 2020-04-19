FROM mcr.microsoft.com/dotnet/core/sdk:3.1-alpine

# install node
RUN apk add --update nodejs=12.15.0-r1 npm=12.15.0-r1

# copy files
ADD . /app
WORKDIR /app

# install project dependencies
RUN npm install

# build project
RUN npm run build