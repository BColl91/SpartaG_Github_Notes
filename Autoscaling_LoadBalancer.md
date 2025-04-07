#  Autoscaling and Load Balancer

**Autoscaling** is a process that automatically adjusts the amount of computing resources (like servers or virtual machines) based on the amount of work or traffic that needs to be handled.
<br>
<br>
Autoscaling typically uses rules to decide when to add or remove resources. For example, if the server's CPU usage goes over 70%, it might add another server to help. Once the usage drops below a certain level, it removes the extra server.

<br>
<br>
<br>
<br>
A **load balancer** is like a traffic director that distributes incoming requests (like users trying to visit your website) across multiple servers so no single server gets overwhelmed.
<br>
<br>
A load balancer sits between the users and the servers. When a user sends a request (like visiting a website), the load balancer decides which server should handle that request. It can choose the server that's least busy or use other methods to balance the load.

![Diagram](./images/ASG_LB/Rebecca_ASG.png)

<br>
<br>
<br>
<br>


# How to create an autoscaling system

<br>
<br>

- Create an instance and an AMI template. Please see [AMI Guide](https://github.com/BColl91/SpartaG_Github_Notes/blob/main/ami_notes.md) before continuing.
  
- On your dashboard, along the left, go to Instances and select Launch Templates
  
![screenshot](./images/ASG_LB/step_1.png)
<br>
<br>

- Select launch template on the top right.
![screenshot](./images/ASG_LB/click%20creaet%20launch%20template.png)
<br>
<br>

- Write out template name and descriotion as appropiate and tick auto scailing guidance.
![screenshot](./images/ASG_LB/stp2.png)
<br>
<br>

- Select My AMI, select 'owned by me' and choose the prefered AMI from the dropdown.
![screenshot](./images/ASG_LB/Choose%20AMI%20from%20dropdown.png)
<br>
<br>

- Select the appropiate instance type *(in this case its t2.micro)*
![screenshot](./images/ASG_LB/instnace%20type.png)
<br>
<br>

- select the appropiate key-pair.
- Select the appropiate existing security group.
- ![screenshot](./images/ASG_LB/networksettings%201.png)
<br>
<br>
- Add a resource tag that matches the template name *(This labels the template)*
![screenshot](./images/ASG_LB/Resource%20tag.png)
<br>
<br>

- Scroll down to advanced settings, then scroll to User Data and add your script *(Example is shown)*
![screenshot](./images/ASG_LB/user_data.png)
<br>
<br>

- Check you are happy woth the summery and click launch template when ready.
![screenshot](./images/ASG_LB/launch_template_summery.png)
<br>
<br>

- Here is what the details of a complete template look like:
![screenshot](./images/ASG_LB/LT_summery.png)
<br>
<br>

- While here select actions then choose launch instance from template.
![screenshot](./images/ASG_LB/LI-Template-dropdown.png)
<br>
<br>

- Confirm that all details on the next page are correct before proceeding by slecting launch instance.
- Along the left of the screen go to Autoscaling groups.
![screenshot](./images/ASG_LB/click%20autoscaling%20groups.png)
<br>
<br>

- Write out an appropiate ASG name.
- Select the template you wish to use from the dropdown then click next.
- In the network settings ensure the VPC is default and select the following from the Availabilty Zones and subnets drop down:
  - *DevOPsSudent default 1a*
  - *DevOPsSudent default 1b*
  - *DevOPsSudent default 1c*
![screenshot](./images/ASG_LB/AZ%20and%20Sub%20Nets.png)
<br>
<br>

- Keep the distribuition as balanced best effort.
![screenshot](./images/ASG_LB/Network_AZ.png)
<br>
<br>

- Select *attach to a new load balancer* and name as appropiate.
- change the scheme to internet-facing
![screenshot](./images/ASG_LB/internet_facing.png)
<br>
<br>

- Ensure the port is HTTP/80 and create a new Target Group.
![screenshot](./images/ASG_LB/port%20and%20TG.png)
<br>
<br>

- In Health Checks, tick *turn on elastic load balancing health checks*
![screenshot](./images/ASG_LB/health%20checks.png)
<br>
<br>

- Choose the appropiate edsired capacity, minimun capacity and maximum. (In this case I chose 2 desired, 2 min and 3 max)
- Change Automatic Scaling to *target tracking scaling policy* and provide a name.
- Keep the metric type as CPU utilization, the target value 50% and the warm up 300 seconds (default)
![screenshot](./images/ASG_LB/group%20size%20scaling.png)
v

- Scroll down and click next, add a tag with the key *name* and the value being what you wish the label the ASG.
- Check the preview and if it is all correct click create auto scaling group!
- This will take you to a list of active ASGs. Select your own to see the details.
![screenshot](./images/ASG_LB/autoscaling%20list.png)
<br>
<br>

![screenshot](./images/ASG_LB/ASG%20overview.png)
<br>
<br>
<br>
<br>

## **----PLEASE NOTE----**

-Remember to be concious of time and cost: the applications would need to be deleted at some point. Heres how:

### LB (Load Balancer)

- Along the left select *load Balancers*

![screenshot](./images/ASG_LB/order_of_deletion.png)
<br>
<br>

- Select your LB fromt the list, go to actions and select delete load balancer.
- confirm this by typing in the word as requested.
![screenshot](./images/ASG_LB/select%20LB%20from%20list.png)
![screenshot](./images/ASG_LB/delete_load_balanc_dropdown.png)
![screenshot](./images/ASG_LB/conf%20delet%20LB.png)
<br>

### Target Group (TB)
- Along the left select *Target Groups*
- Select your TG from the list, click on Actions and from the drop down choose delete.
- Confirm this by clicking Yes, delete.
![screenshot](./images/ASG_LB/active.png)
![screenshot](./images/ASG_LB/delet_targets_dropdown.png)
![screenshot](./images/ASG_LB/delete%20TG%20confirm.png)
<br>

### ASG (autoscaling group)
- Along the left select *Auto Scaling Groups*
- Select your ASG from the list
- Confirm the deletion by typing the word as requested then click delete.
![screenshot](./images/ASG_LB/select%20ASG%20from%20list.png)
![screenshot](./images/ASG_LB/delete%20asg%20confirm.png)