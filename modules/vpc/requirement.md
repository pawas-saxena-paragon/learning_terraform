### Ex - 1

1. create a VPC in region. Take region as an input
2. create 1 public & 1 private subnet
3. add these subnets to the vpc
4. create a 2 security groups for allowing http traffic and ssh traffic
   a. Allow All Inbound and Outbound Traffic (Not Recommended):
   b. Allow SSH and HTTP Inbound Traffic:
   c. Deny All Inbound and Allow All Outbound Traffic:
   d. Allow Communication Within the Same Security Group:
5. create a 2 NACL and add them to the 2 subnets
   a. Allow SSH and HTTP Inbound Traffic
   b. Deny All Inbound and Allow All Outbound Traffic:
   c. Allow All Inbound and Outbound Traffic (Not Recommended):

### Ex-2

1. use data source for specifying the az
2. create a route table and use this as the default route table
3. add a internet gateway. May be its just a cofiguration wthin in the route table
4. add outputs vpc id, some ip
