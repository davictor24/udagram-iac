# udagram-iac
Infrastructure as Code using CloudFormation. Developed as part of the Udacity Cloud DevOps Nanodegree.

Run `deploy_stack.sh` to deploy the network and servers stacks, and `delete_stack.sh` to delete the stacks. 
Alternatively, you can deploy or delete a specific stack only by running the shell scripts in the directory of interest.

By default, the stacks deploy to `us-east-2`. 
A temporarily running infrastructure can be tested here: http://udagr-webap-1mu91o3tx35w2-901330442.us-east-2.elb.amazonaws.com.

## Default network parameters

- VPC CIDR: 10.0.0.0/16
- Public Subnet 1 CIDR: 10.0.0.0/18
- Public Subnet 2 CIDR: 10.0.64.0/18
- Private Subnet 1 CIDR: 10.0.128.0/18
- Private Subnet 2 CIDR: 10.0.192.0/18