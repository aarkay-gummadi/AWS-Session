Notes for CloudFormation
-----------------------
```json
{
    "AWSTemplateFormatVersion": "2010-09-09",
    "Description": "This is ntier in aws",
    "Parameters": {
        "vpccidr": {
            "Type": "String",
            "Default": "192.168.0.0/16",
            "Description": "Vpc CidrBlock"
        },
        "web1cidr": {
            "Description": "web1 subnet cidr",
            "Type": "String",
            "Default": "192.168.0.0/24"
        },
        "web2cidr": {
            "Description": "web2 subnet cidr",
            "Type": "String",
            "Default": "192.168.1.0/24"
        },
        "db1cidr": {
            "Description": "db1 subnet cidr",
            "Type": "String",
            "Default": "192.168.2.0/24"
        },
        "db2cidr": {
            "Description": "db2 subnet cidr",
            "Type": "String",
            "Default": "192.168.3.0/24"
        }
    },
    "Resources": {
        "ntiervpc": {
            "Type": "AWS::EC2::VPC",
            "Properties": {
                "CidrBlock": {
                    "Ref": "vpccidr"
                },
                "EnableDnsHostnames": true,
                "Tags": [
                    {
                        "Key": "Name",
                        "Value": "ntiervpc"
                    },
                    {
                        "Key": "Env",
                        "Value": "Dev"
                    },
                    {
                        "Key": "CreatedBy",
                        "Value": "Cloudformation"
                    }
                ]
            }
        },
        "web1subnet": {
            "Type": "AWS::EC2::Subnet",
            "Properties": {
                "VpcId": {
                    "Ref": "ntiervpc"
                },
                "CidrBlock": {
                    "Ref": "web1cidr"
                },
                "Tags": [
                    {
                        "Key": "Name",
                        "Value": "web1"
                    },
                    {
                        "Key": "Env",
                        "Value": "Dev"
                    },
                    {
                        "Key": "CreatedBy",
                        "Value": "Cloudformation"
                    }
                ]
            }
        },
        "web2subnet": {
            "Type": "AWS::EC2::Subnet",
            "Properties": {
                "VpcId": {
                    "Ref": "ntiervpc"
                },
                "CidrBlock": {
                    "Ref": "web2cidr"
                },
                "Tags": [
                    {
                        "Key": "Name",
                        "Value": "web2"
                    },
                    {
                        "Key": "Env",
                        "Value": "Dev"
                    },
                    {
                        "Key": "CreatedBy",
                        "Value": "Cloudformation"
                    }
                ]
            }
        },
        "db1subnet": {
            "Type": "AWS::EC2::Subnet",
            "Properties": {
                "VpcId": {
                    "Ref": "ntiervpc"
                },
                "CidrBlock": {
                    "Ref": "db1cidr"
                },
                "Tags": [
                    {
                        "Key": "Name",
                        "Value": "db1"
                    },
                    {
                        "Key": "Env",
                        "Value": "Dev"
                    },
                    {
                        "Key": "CreatedBy",
                        "Value": "Cloudformation"
                    }
                ]
            }
        },
        "db2subnet": {
            "Type": "AWS::EC2::Subnet",
            "Properties": {
                "VpcId": {
                    "Ref": "ntiervpc"
                },
                "CidrBlock": {
                    "Ref": "db2cidr"
                },
                "Tags": [
                    {
                        "Key": "Name",
                        "Value": "db2"
                    },
                    {
                        "Key": "Env",
                        "Value": "Dev"
                    },
                    {
                        "Key": "CreatedBy",
                        "Value": "Cloudformation"
                    }
                ]
            }
        }
    }
}
```
![preview](Images/cf1.png)

* web1, db1 subnets should be in AZ a and web2, db2 subnets should be in AZ b
* CloudFormation supports AWS specific parameter types
* Use AZ parameter as done in this changeset
```json
{
    "AWSTemplateFormatVersion": "2010-09-09",
    "Description": "This is ntier in aws",
    "Parameters": {
        "vpccidr": {
            "Type": "String",
            "Default": "192.168.0.0/16",
            "Description": "Vpc CidrBlock"
        },
        "web1cidr": {
            "Description": "web1 subnet cidr",
            "Type": "String",
            "Default": "192.168.0.0/24"
        },
        "web2cidr": {
            "Description": "web2 subnet cidr",
            "Type": "String",
            "Default": "192.168.1.0/24"
        },
        "db1cidr": {
            "Description": "db1 subnet cidr",
            "Type": "String",
            "Default": "192.168.2.0/24"
        },
        "db2cidr": {
            "Description": "db2 subnet cidr",
            "Type": "String",
            "Default": "192.168.3.0/24"
        },
        "az1": {
            "Description": "This is az1",
            "Type": "AWS::EC2::AvailabilityZone::Name"
        },
        "az2": {
            "Description": "This is az2",
            "Type": "AWS::EC2::AvailabilityZone::Name"
        },
    },
    "Resources": {
        "ntiervpc": {
            "Type": "AWS::EC2::VPC",
            "Properties": {
                "CidrBlock": {
                    "Ref": "vpccidr"
                },
                "EnableDnsHostnames": true,
                "Tags": [
                    {
                        "Key": "Name",
                        "Value": "ntiervpc"
                    },
                    {
                        "Key": "Env",
                        "Value": "Dev"
                    },
                    {
                        "Key": "CreatedBy",
                        "Value": "Cloudformation"
                    }
                ]
            }
        },
        "web1subnet": {
            "Type": "AWS::EC2::Subnet",
            "Properties": {
                "VpcId": {
                    "Ref": "ntiervpc"
                },
                "AvailabilityZone": {
                    "Ref": "az1"
                },
                "CidrBlock": {
                    "Ref": "web1cidr"
                },
                "Tags": [
                    {
                        "Key": "Name",
                        "Value": "web1"
                    },
                    {
                        "Key": "Env",
                        "Value": "Dev"
                    },
                    {
                        "Key": "CreatedBy",
                        "Value": "Cloudformation"
                    }
                ]
            }
        },
        "web2subnet": {
            "Type": "AWS::EC2::Subnet",
            "Properties": {
                "VpcId": {
                    "Ref": "ntiervpc"
                },
                "AvailabilityZone": {
                    "Ref": "az2"
                },
                "CidrBlock": {
                    "Ref": "web2cidr"
                },
                "Tags": [
                    {
                        "Key": "Name",
                        "Value": "web2"
                    },
                    {
                        "Key": "Env",
                        "Value": "Dev"
                    },
                    {
                        "Key": "CreatedBy",
                        "Value": "Cloudformation"
                    }
                ]
            }
        },
        "db1subnet": {
            "Type": "AWS::EC2::Subnet",
            "Properties": {
                "VpcId": {
                    "Ref": "ntiervpc"
                },
                "AvailabilityZone": {
                    "Ref": "az1"
                },
                "CidrBlock": {
                    "Ref": "db1cidr"
                },
                "Tags": [
                    {
                        "Key": "Name",
                        "Value": "db1"
                    },
                    {
                        "Key": "Env",
                        "Value": "Dev"
                    },
                    {
                        "Key": "CreatedBy",
                        "Value": "Cloudformation"
                    }
                ]
            }
        },
        "db2subnet": {
            "Type": "AWS::EC2::Subnet",
            "Properties": {
                "VpcId": {
                    "Ref": "ntiervpc"
                },
                "AvailabilityZone": {
                    "Ref": "az2"
                },
                "CidrBlock": {
                    "Ref": "db2cidr"
                },
                "Tags": [
                    {
                        "Key": "Name",
                        "Value": "db2"
                    },
                    {
                        "Key": "Env",
                        "Value": "Dev"
                    },
                    {
                        "Key": "CreatedBy",
                        "Value": "Cloudformation"
                    }
                ]
            }
        }
    }
}
```
![preview](Images/cf2.png)