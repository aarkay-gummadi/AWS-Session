AWS EC2 contd.....
-------------------------

### Options for deploying applications into ec2 instance

* Lets try to install php on apache server (ubuntu)
  ```bash
  #!/bin/bash
  apt update
  apt install apache2 stress -y
  apt install php libapache2-mod-php php-mysql -y
  echo '<?php phpinfo(); ?>' > /var/www/html/info.php
  systemctl restart apache2
  ```
  * Options:
    * Create an ec2 instance, ssh and execute manually:
       * Create an ec2
       * ssh into ec2
       * become root user (sudo -i)
   * While creating an ec2 instance use user data
   * Create a reusable image (Amazon Machine Image)


### User Data
* In the Advanced section of ec2 instance creation for ubuntu 22 with 80 port opened copy the script into yser data and launch instance


