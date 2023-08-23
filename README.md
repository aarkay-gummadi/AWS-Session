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

* Create EC2 Instances in AWS Cloud, for that login into AWS Console
* After login the console, go to IAM Service   
  ![Preview](Images/nodejs4.png)
* Create a user called `aarkay`, and give a policy to user i.e `AdministratorAccess`, and start creating ec2 instance.
  ![Preview](Images/nodejs5.png)
  ![Preview](Images/nodejs6.png)
  ![Preview](Images/nodejs7.png)
  ![Preview](Images/nodejs8.png)
  ![Preview](Images/nodejs9.png)
  ![Preview](Images/nodejs10.png)
* Wait untill the instance is Running state, and copy the public ip address and login to machin with the help of git(terminal).
  ![Preview](Images/nodejs11.png)
  ![Preview](Images/nodejs12.png)
* Configure the Instance using ssh
```
ssh -i "aarkay.pem" ubunutu@<Public-ip Address>
```
  ![Preview](Images/nodejs13.png)

* Update the outdated packages and dependencies
```
sudo apt update
sudo apt install nodejs -y
node -v
sudo apt install npm -y
npm -v
```
![Preview](Images/nodejs14.png)

* Clone project to this ec2 instance
```
git clone https://github.com/aarkay-gummadi/AWS-Session.git
```
![Preview](Images/nodejs15.png)

* Setup the following environment variables - .env file   
[Refer Here](https://github.com/aarkay-gummadi/AWS-Session/commit/d6c8613a6621b7bbe959eb739350fc61b7d437dd) for the .env file.
* For that to run the following commands
```
cd AWS-Session
touch .env
vi .env
ls -a
```
![Preview](Images/nodejs16.png)
![Preview](Images/nodejs20.png)

* Run the following commands
```
npm install
npm run start
```
![Preview](Images/nodejs17.png)
![Preview](Images/nodejs18.png)

* Project deployed on AWS Successfully

### Thanks for Reading! 
 Have a Nice Day

![Preview](Images/nodejs19.png)