AWS IAM Conditions
-------------------

[refer here](https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonec2.html) for the official docs of actions resources and condition keys for aws services.

### Activity 6: Create an IAM Policy to allow user to terminate instance if the type is t2.micro

* Action: ec2: TerminateInstances


### Activity 7: Allow user to Create ec2 instance if the type is t2.micro and region is mumbai

* This Policy is not working if the region is mumbai and instance type is not t2.micro