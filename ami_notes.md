# Document Images
<br>

## What are Document Images?

<br>
In the context of databases, servers, or cloud computing, a document image could refer to a snapshot or representation of a particular environment or instance. It is a pre-packaged, read-only template that contains everything needed to run an application.
<br>
They allow you to:
- Reuse server setups.
- Quickly scale your infrastructure.
- Deploy environments with pre-configured settings.
    
## How Do They Work?

- **Create an Image**: You can take a snapshot of a running server or instance (like an EC2 instance on AWS), and this snapshot gets turned into an image.
  
- **Launch from Image**: You can then create new instances or servers based on that image. This ensures consistency, as the new instances are identical to the one from which the image was made.
    
## Why are Document Images Helpful for a Business?

- **Consistency**: They ensure that your infrastructure is always configured the same way. You can deploy new servers quickly, all with the same settings.
  
- **Efficiency**: If you need to scale or duplicate environments, you can quickly spin up a new server from an image.
  
- **Backup and Recovery**: You can use images as backups of your environments, so you can quickly restore to a known good state.
________________

# How to create a Document Image
<br>

    1. Launch an EC2 instance:
   
![Instance Screenshot](./images/AWS1.png)
![Instance Screenshot2](./images/AWS2.png)
![Instance Screenshot3](./images/AWS3.png)

    2. **Configure the server: Install necessary software, configurations, and dependencies**

    > CD ~
    > CD .ssh
    > Add the connection to the terminal
    > sudo DEBIAN_FRONTEND=noninteractive apt update -y
    > sudo DEBIAN_FRONTEND=noninteractive apt upgrade -y
    > Sudo Nano <script>
    > Type in or paste the script and double check the contents
    > Ctrl + x
    > Y/y
    > Enter (To confirm blank label and leave the note)
    > sudo chmod+x <script>
    > source <script>
   
    3. **Create an image**:
        ○ On the EC2 dashboard, right-click the instance.
        ○ Select Create Image.
        ○ AWS will snapshot the server, including all files and configurations.
Save the Image: Your image will be saved, and you can use it to launch new instances

<br>

# Using a Document Image
<br>

    • Launch from an Image:
        1. In your cloud platform, navigate to the AMI section.
        2. Select your saved image and choose to launch a new instance based on it.
The new instance will inherit all configurations, software, and settings from the image.