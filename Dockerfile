FROM mcr.microsoft.com/dotnet/core/sdk:3.1-alpine

# install node
RUN apk add --update nodejs=12.15.0-r1 npm=12.15.0-r1

# copy files
ADD . /app
WORKDIR /app

# install project dependencies
RUN npm install

# test via Expecto (.NET, runs fast)
RUN npm run test-dotnet

# test via Fable.Mocha (compile to node.js, then test via wrapped JS Mocha)
RUN npm run test-node

# build project
RUN npm run build