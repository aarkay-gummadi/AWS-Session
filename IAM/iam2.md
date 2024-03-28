Identity and Access Management
-------------------------------

* Root Account: Root Account refers to the super user in AWS with access to everything including bills
* AWS can be accessed via
    * Console Access: 
       * This refers to accessing aws from http://console.aws.amazon.com
       * Here we login
     * Programmic Access




* Who can login into AWS? (IAM Users)
    * Users
    * Applications
* Some times we might give access to an AWS Resource to access other AWS resources (IAM Roles)
* In AWS Authorization is provided by IAM Policies.
* In AWS we have two kinds of policies
    * AWS Managed Policies: Policies written by AWS which are availble for usage in all AWS Accounts
    * Customer Managed Policies: 

### Lets create a user to access console

* Go to aws console
* Services => IAM => Users > create a new user and adduser
* Dont give any policies
* Lets login, 
* Root user has access to every thing
* The user tonystark doesnot have authorization.
* Now lets try to give tonystark some permissions by attaching policies


Exercise
---------
* Create two IAM users (dev1, dev2) and attach both of them to AmazonEC2FullAccess Policy.
* Create two IAM users (test1, test2) and attach both of them to AmazonReadOnlyAccess Policy.
* Login with all the four credentials and verify the access.


* Create two user groups developers with AmazonEC2FullAccess policy and testers with AmazonEC2ReadOnlyAccess
* This approach is useful for giving access based on user roles in your organization
* Best Practice is to
   * Give common permissions at group level
   * Specific permissions at user level
* AWS Policies either allow or deny access.