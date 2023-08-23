# Our node app is based on `18-alpine` image 
FROM node:18-alpine

# Setting up the environment variables needed:
ENV DOMAIN="http://localhost:3000" \
PORT=3000 \
STATIC_DIR="./client" \
PUBLISHABLE_KEY="pk_test_51NiJ6FSA6N7CZ2A3cWSuk3SeeIbzQDo6hC8vy6hBrRYSt7MkNfomfpEqIG3RBImCZo7W1unFc6x4zb2YrqUhK8tU00lZJYXGq1" \
SECRET_KEY="sk_test_51NiJ6FSA6N7CZ2A36fsnNGz2tGhvmsHGUoYSmoS1dwxQ3zAX43OtvyNjsPVGpAdKTWxCXKH7xFUhfeoLJbeUuETG00yKbyVDS5"

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

CMD ["node", "server.js"]