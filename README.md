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
  [Refer Here](https://github.com/aarkay-gummadi/AWS-Session/commit/d6c8613a6621b7bbe959eb739350fc61b7d437dd) for the `.env` file
```
DOMAIN=""
PORT=3000
STATIC_DIR=""

# Stripe API Keys
PUBLISHABLE_KEY=""
SECRET_KEY=""
```
* How we will get the above Stripe API Keys 
  ![Preview](Images/nodejs1.png)

* Initialize and start the project  
```
npm install
npm run start
```
![Preview](Images/nodejs2.png)
![Preview](Images/nodejs3.png)


### Setup an AWS EC2 Instance

