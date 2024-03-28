### Administrative Scenarios and How to Solve them

### 
* Create a ubuntu 20.04 in any region (Ensure that there is only one instance)
* I have developers in my team who use this instance. I want to shutdown this ec2 instnce at 6:00 PM every week day and start it at 10:00 AM every weekday.
* Possible Solutions:
    * Manual
    * Linux/Windows Machine with AWS CLI installed
        * From aws cli we can start or stop the ec2 instance
        * Linux: Cronjob to start or stop ec2 instance
        * Windows: Task Scheduler to start or stop the ec2 instance
        * CI/CD: From jenkins/any ci/cd create a job to start and stop at a scheduled time
        * skills: AWS CLI
    * Cloud Watch Scheduler
    * Lambda:
       * From code (python/nodejs/java/.net) to start and stop ec2 
    * Create a rule in Cloud Watch Events with Schedule
    * Known problems: Adding Targets requires you to give instance was not found
    * If we use Event Bridge we have access to all APIs but we need some role to do the job, We need to configure the role
    * To solve this problem
       * Fetching instance ids
       * Configuring Role

* CLI option:
   * Need to work with aws cli i.e. configure IAM user
   * need to understand json
   * Searching aws cli options
* Lambda:
    * Knowing a programming language
    * Configure IAM Role



### Updating OS in EC2 instance
* I have an ec2 instance with ubuntu 20.04, in this i need to install an os update (Patching)
* Possible Solutions: Try to fugure out 


### Securing Access
* You are an aws administrator and your organization has two projects and keys are maintained at project
* You were asked to do some activity on linux machine (ec2 instance)
* How can you login without ssh key


### Lost PEM file
* Some of your team member has lost pem file and we need to recover the server.



* which will show the above cases we have to seen the below words to searching the google 
> stackover flow
> systems manager 
> cli

