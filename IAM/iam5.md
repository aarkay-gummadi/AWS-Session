Writing IAM Policy
------------------
* Principal: This represents user 
* Resource: This represents a resource (ARN)
* Action: This defines the activities that can be done on resource
* Effect: Allow or Deny
* Condition: Execute the permission based on some condition


### Activity1: Create a custom IAM Policy to Start and Stop EC2 Instances

* The minimal 
* Generally to start and stop the ec2 instance it is implicit that user should be able to view/list instances

### Activity2: Create a custom IAM Policy to perform any operation on EC2 but bot terminate instances

### Activity3: Create a custom IAM Policy to perform any operation on s3, rds and ec2 but stop users from terminating, stopping ec2 and rds instaces and removing s3 buckets