# Virtual Private Cloud (VPC) Deployment

### 1. Open the VPC Dashboard
- From the **AWS Console Home**, search for **VPC** in the top search bar. You can select the star by it to add the link to VPC to your AWS bookmarks.  
![VPC Navigation](./images)

### 2. Start VPC Creation
- Click the **Create VPC** button located in the top-right corner

### 3. Set VPC Configuration
- **Resources to create:** Choose **VPC only**
- **Name tag:** Assign a clear, descriptive name — e.g. `tech503-rebecca-2tier-first-vpc`
- **IPv4 CIDR block:** Select **Manual input**
- **IPv4 CIDR:** Enter your range — e.g. `10.0.0.0/16`
- **Tags:** Make sure to create a tag
  - **Key:** Name  
  - **Value:** e.g. `tech503-rebecca-2tier-first-vpc`
![VPC Settings](./images/)

### 4. Finalize VPC Creation
- Click **Create VPC** at the bottom-right of the page



### 1. Access the Subnet Section
- From the **VPC dashboard**, navigate to **Subnets**  
![Subnet Navigation](./images)

### 2. Begin Subnet Creation
- Click **Create subnet** in the top-right corner

### 3. Configure Public Subnet
- **VPC:** Choose the VPC you just created
- **Subnet details:**
  - **Subnet name:** e.g. `tech503-rebecca-public-subnet`
  - **Availability Zone:** e.g. `eu-west-1a` (Ireland)
  - **IPv4 CIDR block:** e.g. `10.0.2.0/24`

> ⚠️ **BEFORE CLICKING CREATE**

![Public Subnet Settings](./images/)

### 4. Add a Private Subnet
- Click **Add new subnet**
- **Subnet details:**
  - **Subnet name:** e.g. `tech503-rebecca-private-subnet`
  - **Availability Zone:** e.g. `eu-west-1b`
  - **IPv4 CIDR block:** e.g. `10.0.3.0/24`

![Private Subnet Settings](./images)

### 5. Create Both Subnets
- Click **Create subnet** at the bottom-right



### 1. Go to Internet Gateways
- In the **VPC dashboard**, select **Internet Gateways**  
![Internet Gateways Navigation](./images/)

### 2. Create a New Gateway
- Click **Create internet gateway** in the top-right

### 3. Name and Create the Gateway
- **Name:** e.g. `tech503-rebecca-2tier-first-vpc-ig`
- Click **Create internet gateway** at the bottom

### 4. Attach Gateway to VPC
- Use the pop-up or go to **Actions > Attach to a VPC**
- Choose your VPC
- Click **Attach internet gateway**



### 1. Navigate to Route Tables
- From the **VPC dashboard**, go to **Route tables**  
![Route Table Navigation](./images/v)

### 2. Start Route Table Creation
- Click **Create route table** in the top-right

### 3. Fill in Route Table Details
- **Name:** e.g. `tech503-rebecca-2tier-first-vpc-public-rt`
- **VPC:** Choose your VPC
- Click **Create route table**

### 4. Associate the Public Subnet
- Open the **Subnet associations** tab
- Click **Edit subnet associations**
- Check your **public subnet**
- Click **Save associations**

### 5. Add a Route to the Internet
- Go to the **Routes** tab
- Click **Edit routes > Add route**
  - **Destination:** `0.0.0.0/0`
  - **Target:** Select your Internet Gateway  
![Route Table Routes](./images)
- Click **Save changes**

### Optional: Confirm Configuration
- Go to **Your VPCs**
![VPC Navigation 2](./images)
- Click your **VPC ID**
- Check the **Resource map** tab — it should look like this:  
![VPC Resource Map](./images)



### 1. Open the EC2 Dashboard
- Go to **EC2 > Instances**  
![EC2 Navigation](./images/)

### 2. Launch an Instance
- Click **Launch instances**

### 3. Set DB Instance Parameters
- **Name:** e.g. `tech503-rebecca-db-in-vpc`
- **AMI:** Select your DB image from **My AMIs**  
![DB AMI](./images/)
- **Instance type:** `t2.micro`
- **Key pair:** Choose your key
- **Network settings:**
  - **VPC:** Select your custom VPC
  - **Subnet:** Choose the **private** subnet
  - **Auto-assign public IP:** Set to **Disabled**  
![DB VPC Selection](./images/)
  - **Firewall/Security group:**
    - Create a new group
    - **Name/Description:** e.g. `tech503-rebecca-db-sg-vpc`
    - **Security rule:**
      - **Type:** Custom TCP
      - **Port range:** `27017`
      - **Source:** `0.0.0.0/0` (or ideally `10.0.3.0/24` for restricted access)  
![DB SG Settings](./images/)

### 4. Launch the DB Instance
- Click **Launch instance**



### 1. Go to Instances
- Navigate again to **EC2 > Instances**  
![EC2 Navigation](./images)

### 2. Launch App Instance
- Click **Launch instances**

### 3. Configure App Instance
- **Name:** e.g. `tech503-rebecca-app-in-vpc`
- **AMI:** Choose your app image  
![App AMI](./images)
- **Instance type:** `t2.micro`
- **Key pair:** Select yours
- **Network settings:**
  - **VPC:** Select your VPC
  - **Subnet:** Choose the **public** subnet
  - **Auto-assign public IP:** Enable  
![App VPC Selection](./images/)
  - **Firewall/Security group:**
    - Create new group
    - **Name/Description:** e.g. `tech503-rebecca-app-sg-vpc`
    - **Security rule:**
      - **Type:** HTTP
      - **Source:** `0.0.0.0/0`  
![App SG](./images/)
- **Advanced details:**
  - **User data:** Add a script to:
    - Set the DB environment variable
    - Seed the database

### 4. Deploy App Instance
- Click **Launch instance**

## Cleanup and Teardown

> ⚠️ **Terminate resources in this order to avoid dependency issues**

### 1. Terminate Instances
- Go to **EC2 > Instances**
- Select the **DB and App instances**
- Click **Instance state > Terminate**

### 2. Delete Security Groups
- In the **VPC dashboard**, go to **Security groups**  
![SG Navigation](./images)
- Select the security groups for both instances
- Click **Actions > Delete security groups**
- Type **delete** to confirm

### 3. Delete the VPC
- Go to **Your VPCs** in the **VPC dashboard**
- Select your VPC
- Click **Actions > Delete VPC**
- Confirm by typing **delete**
