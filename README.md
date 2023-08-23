# AWS-Session
This repository for deploying Nodejs application in AWS

Deploying a Node Js application on AWS EC2
-------------------------------------------
### First Test the code locally
* Clone this repository
```
git clone hppts://github.com/aarkay.gummadi/AWS-Session
```
* Setup the following environment variables - `.env` file
```
DOMAIN="http://localhost:3000"
PORT=3000
STATIC_DIR="./client"

# Stripe API Keys
PUBLISHABLE_KEY="pk_test_51NiJ6FSA6N7CZ2A3cWSuk3SeeIbzQDo6hC8vy6hBrRYSt7MkNfomfpEqIG3RBImCZo7W1unFc6x4zb2YrqUhK8tU00lZJYXGq1"
SECRET_KEY="sk_test_51NiJ6FSA6N7CZ2A36fsnNGz2tGhvmsHGUoYSmoS1dwxQ3zAX43OtvyNjsPVGpAdKTWxCXKH7xFUhfeoLJbeUuETG00yKbyVDS5"
```
* How we will get the above Stripe API Keys 
  ![Preview](Images/nodejs1.png)

* Initialize and start the project  
```
npm install
npm run start
```

### Setup an AWS EC2 Instance