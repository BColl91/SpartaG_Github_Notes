
Diagram that helps explain how they work



### What are VPCs?
A **Virtual Private Cloud (VPC)** is a logically isolated network within a cloud environment (e.g., AWS) that allows businesses to define and control their own virtual network, including IP address ranges, subnets, route tables, and security settings.

### How do VPCs help a business?
VPCs provide businesses with full control over their cloud networking environment, enabling them to securely launch and manage resources (like EC2 instances) in a private, isolated space that mirrors their on-premises network.

### How do VPCs help DevOps?
For DevOps, VPCs enable the creation of scalable, secure, and flexible environments for deploying applications, automating network management, and managing traffic flow between development, testing, and production resources in the cloud.

### Why did AWS feel the need to introduce VPCs?
AWS introduced VPCs to give users more control over their cloud network's configuration, improving security, isolation, and the ability to mimic traditional on-premises network setups while leveraging the scalability and flexibility of the cloud.

---

### Components of VPC:

- **Subnets**: Subnets are subdivisions within a VPC's IP address range that help organize and control the flow of network traffic. Resources in different subnets can communicate with each other based on the rules you set.

- **Public vs Private Subnets**: 
  - **Public Subnets** are subnets that have direct access to the internet through an Internet Gateway (IGW). They're typically used for resources like web servers.
  - **Private Subnets** do not have direct access to the internet. They're used for resources that don't need public access, such as databases or application servers.

- **CIDR Blocks**: A **Classless Inter-Domain Routing (CIDR) block** is a notation that specifies the IP address range for a VPC (e.g., 10.0.0.0/16). It defines the number of available IP addresses in the range.

- **Internet Gateways (IGW)**: An **Internet Gateway** allows communication between resources in your VPC and the internet. It’s attached to a VPC and enables public internet access for resources in public subnets.

- **Route Tables**: **Route Tables** are used to direct network traffic between subnets and external destinations (e.g., the internet, other VPCs). Routes define where traffic is directed based on the destination IP address.

- **Security Groups (SG)** and how SGs work on an INSTANCE level: A **Security Group** is a virtual firewall that controls inbound and outbound traffic to instances. At the instance level, SGs allow or deny traffic based on rules you define (e.g., permitting only HTTP traffic to a web server). Security groups are stateful, meaning if an inbound request is allowed, the corresponding outbound response is automatically allowed, regardless of outbound rules.
