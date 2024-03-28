Resource-based policies
-----------------------
* Resource based policies are policies for specific resources like s3 buckets, SQS etc


IAM Roles
---------
* Roles are permissions given to aws resources to access other aws resources.
* Activity: 
    * Create an IAM Role for ec2 instances to have full access on s3 buckets  
    * Create an ec2 instance (Amazon linux) and attach the role of fulls3accesstoec2

* Activity2: 
   * Create an IAM role which allows ec2 instances to do anything on iam


Auditing with Cloud Trail
---------------------------
* Cloud Trail tracks aws account usage

* Exercise:
    * Create two users with ec2 full access 
    * Create two ec2 instances
        * login as user 1 and shutdown one ec2
        * login as user 2 and terminate one ec2
    * Login in as user 

install terraform latest version 1.4.2
write a terraform template to use aws provider any thing which is released 6 months ago

resource
provider
arguments
attributes

* Explain Jenkinsfile
properties(commonModuleJobProps())
buildBroadleafModule(params)


provider "aws" {
  version = "~> 3.0"
  region  = "us-west-2"
}

resource "aws_instance" "terraform" {
  ami           = "ami-0735c191cf914754d"
  instance_type = "t2.micro"

  tags = {
    Name = "terraform"
  }
} 