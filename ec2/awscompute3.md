AWS Puchasing Options for EC2
------------------------------
* AWS has following Purchasing Options for EC2
    * On demand:
       * We have no commitments with AWS
       * This is the highest priced option and it will be charged
          * per hour
          * per second
       * EC2 pricing will be done only when instance is in running state
    * Spot Instances:
       * Spot price
       * If the demand increases, spot instance will be evicted.
    * Reserved Instances:
       * Reserved has two options
          * Standard Reserved Instances
          * Convertable Reserved Instances
       * Payment Options
          * No Upfront
          * Partial Upfront
          * All upfront
    * Dedicated Host: We reserve the physical servers and here also we have on-demand and reserved options.
    * Capacity Reservations
    * 3 years no upfront for 7 servers
    * 






### Exercises

* I have and application which requires
    * 7 servers in 3 regions
    * each server should be memory optimized and requires atleast 32 gb of RAM
    * each server also requires 100 GB disk
    * Operating system in Linux
    * During peak times each regions max capacity will be 15 servers
* I have an application which requires
    * 2 servers 
    * server should e storage optimized 
    * requires 16 GB of RAM
    * Usage is not constant, random spike/peak usage
    * This application is not guarnteed to run for more than a year 
