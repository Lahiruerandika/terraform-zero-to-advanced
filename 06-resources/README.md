Steps for implementation:
1. Deploy a VPC and a subnet
2. Deploy an internet gateway and associated it with the VPC
3. Setup a route table with a route to the IGW
4. Deploy an EC2 instance inside aof the created subnet
5. Assoicated a public IP and a security group that allows public ingress