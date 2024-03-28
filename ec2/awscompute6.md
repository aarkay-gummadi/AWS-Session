AWS Autoscaling Policies
----------------------------
* Target Tracking Policy: This tries to maintain the percentage defined. To maintain the metric defined aws will perform scale out and in.
* In the below scaling policies we defie when to scale out and when to scale in
* Step Scaling:
* Simple Scaling:
* Create an autoscaling group without selecting scaling policy
* Simple Scaling has an extra cooldown period during which scaling will not happen

Questions to be addressed
-------------------------

* How do i upgrade the images without downtime when there is a new version of the image/application/os upgrade
    * Create a new version of the launch template
    * Navigate to asg and perform instance refresh
    * For screenshots watch classroom video


* Do i need to use only cpu Utilization for scaling


Exercise:
* Create a launch template with ubuntu and in userdata install apache
* Create a autoscaling with load balancer
* Now after everything is running
* Create a new version of the launch template where in userdata install nginx
* Perform insance refresh of asg and wait for the nginx to be updated.