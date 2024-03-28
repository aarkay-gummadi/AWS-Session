AWS CLI
---------
 
* AWS CLI is a command line interface to insteract with AWS
* AWS CLI can be installed on Windows, Linux of mac
* To authenticate AWS CLI we need IAM user.
* Lets generate IAM Credentials (Secret Access Key Id, Secret Access Key) 
* Navigate to IAM in services from console
* Now execure  `aws configure`



How to work on CLI
---------------------
* AWS CLI will have following format

```
aws <service> <command/action> [--arg1 value1] .. [--argn valuen]
```
* Generally commands will have following prefixes
   * to view `describe*` `list*`
   * to create `create*` `run*`
   * to delete `delete*` `terminate*`
   * to modify `modify*` `update*`

* AWS CLI relies on ID's rather than names in many cases
* for all the commands `--region and --query` are supported   


Exercise
---------
* Get all the vpcs from aws cli for a particular region `aws ec2 describe-vpcs --region us-west-1`
* Get all the security groups `aws ec2 describe-security-groups`
* Get the AIM id of the ubuntu 22.04