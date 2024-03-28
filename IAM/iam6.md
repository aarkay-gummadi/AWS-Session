Activity 4: Create an IAM Policy to Start and Stop Ec2 instances
-----------------------------------------------------------------
* Create an IAM Policy to Start and Stop Ec2 instances, if the ec2 instance is in us-west-3 region and in other regions only give read permissions

* Every resource created in AWS will have unique ARN
* ARN for EC2
* To fill this [refer here](https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html) for the official docs of ec2 arn.

* In our case

```
arn:aws:ec2:us-west-2:*:instance/*
```

### Activity 5: Create an IAM Policy to allow user to delete bucket if the region is only us-west-2
* Condition keys based on 

* Exercise: Create an IAM Policy to give full access to ec2 in all regions but oregon