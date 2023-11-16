FROM node:alpine
WORKDIR /app

# copy semua yang berawalan nama file package dan ekstensi json ke container atau /app
COPY package*.json .

# setelah di copy install dengan npm i
RUN npm i --silent

#copy semua nya ke container atau /app
COPY . .

# gunakan port
EXPOSE 7314