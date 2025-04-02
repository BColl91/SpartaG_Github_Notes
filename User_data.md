# Cloudwatch Dashboard
CloudWatch Dashboards give you a customizable, unified view of your AWS resources. Here’s how to create one for your EC2 instance.
---------------

**Create an Instance**

- Launch an instance as normal and provide an appropiate name.
- Below that select 'My AMIs', 'pwned by me' and use the drop down box to locate your AMI.
- Ensure that you have the right key and security group.

![screenshot1](./images/Monitoring/m1.png)

<br>
<br>

- Go to the bottom of the page and open advanced settings.
- Go to 'User Data' and put in your script (ensure you ahve shebang along the top to run the script)
- - Double check your details and select launch.

![screenshot2](./images/Monitoring/m2.png)

<br>
<br>

**Navigate to detaled monitoring to setup a dashboard**

- select your instance until you reach the summary.
- scroll down and locate the *Monitoring* tab.
- Select Manage detailed monitoring.

![screenshot3](./images/Monitoring/m3.png)

<br>
<br>

- tick the box and confirm.

![screenshot4](./images/Monitoring/m4.png)

<br>
<br>

- Select add to dashboard then create new.
- Name your dashboard as appropiate and click create.
- click add to dashboard to confirm.

![screenshot5](./images/Monitoring/m5.png)

<br>
<br>

This is your dashboard! You can change how often it refreshes along the top right, along with how far back you want to view data. You can also change the layout to your preference.

![screenshot6](./images/Monitoring/m6_dashboard.png)

--------------------
<br>
# Setting an alarm

<br>

- go to your cloudwatch homepage and select create alarms.

![screenshot7](./images/Monitoring/m7.png)

<br>
<br>

- Follow the guideline and select Metric

![screenshot8](./images/Monitoring/m8.png)

<br>
<br>

- Select EC2

![screenshot9](./images/Monitoring/m9.png)

<br>
<br>

- Select Per-Instance Metrics

![screenshot10](./images/Monitoring/m10.png)

<br>
<br>

- Filter the Metrics with your name/label and locate CPUUtilization to select

![screenshot11](./images/Monitoring/m11.png)

<br>
<br>

- Change the period as advices (e.g.- 5mins) and ensure the conditions are set to Static, Greater (or Greater/Equal) and type what percentage you want this to trigger.

![screenshot12](./images/Monitoring/m12.png)

<br>
<br>

- Ensure the Configure Actions are In Alarm and create a new topic with a relative an dappropiate name.
- -add an email to receive the notification.

![screenshot13](./images/Monitoring/m13.png)

<br>
<br>

- Once done you can quickly check your email.

![screenshot14](./images/Monitoring/m14.png)

<br>
<br>

- Check if the preveiw is correct and continue.
- If the details match your expectations select create alarm.

![screenshot15](./images/Monitoring/m15.png)

![screenshot16](./images/Monitoring/m16.png)