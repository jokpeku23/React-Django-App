#Stage 1: Build React app
FROM node:alpine AS builder

WORKDIR /app

COPY package.json .
COPY package-lock.json .

RUN npm install

COPY . .

RUN npm run build

# Stage 2: Serve React app with Nginx
FROM nginx:alpine

COPY --from=builder /app/dist/ /usr/share/nginx/html