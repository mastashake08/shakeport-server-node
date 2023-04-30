FROM node:16-alpine

WORKDIR /app

# Install dependencies
RUN apk add --no-cache openssl

COPY package.json ./
RUN npm install --omit-dev

# Create self-signed certificate
RUN openssl req -x509 -newkey rsa:4096 -nodes -keyout key.pem -out cert.pem -days 365 -subj "/CN=localhost"

COPY index.js ./

EXPOSE 1234
CMD ["node", "index.js"]
