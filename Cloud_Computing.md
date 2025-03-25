# AWS/Cloud Computing Notes

<br>


## What is Cloud Computing?
Cloud computing is the delivery of computing services (servers, storage, databases, networking, software, etc.) over the internet ("the cloud") rather than through local servers or personal devices. This allows businesses and individuals to access and store data and applications on remote servers, providing flexibility, scalability, and efficiency.

## How do we know if something is in the Cloud (on-prem vs the cloud)?
- **On-prem**: Refers to hardware and software that is physically located within an organization's premises. These systems are owned, managed, and maintained by the organization itself.
- **In the Cloud**: Refers to systems and services that are hosted on remote servers, often owned and managed by third-party providers. You can usually access cloud resources via the internet. 

You can tell if something is in the cloud if:
- It is accessed through the internet.
- You don’t own the physical infrastructure.
- It is scalable and managed by a third-party provider.

## What are some popular cloud computing services and how are they used?
Some of the most popular cloud computing services include:
- **Amazon Web Services (AWS)**: Offers a broad set of cloud-based infrastructure services like computing power, storage, and databases.
- **Microsoft Azure**: A comprehensive cloud platform for building, deploying, and managing applications through Microsoft’s global network of data centers.
- **Google Cloud Platform (GCP)**: Provides computing, storage, and machine learning services along with tools for app development and deployment.
- **Dropbox/Google Drive**: Storage services that allow users to store and share files in the cloud.
- **Salesforce**: A cloud-based CRM platform used by businesses to manage customer relationships and sales.

These services are used for various purposes such as running applications, storing data, and hosting websites.

## Explain the four main cloud deployment models
1. **Public Cloud**: Services and resources are provided by third-party providers over the internet and are available to the general public. Examples: AWS, Azure, Google Cloud.
2. **Private Cloud**: Cloud infrastructure is used exclusively by one organization. It can be hosted either on-premises or externally, providing greater control and security.
3. **Hybrid Cloud**: Combines both public and private cloud environments, allowing data and applications to be shared between them, offering more flexibility and deployment options.
4. **Community Cloud**: Shared infrastructure is used by a specific community, typically with common concerns (e.g., security, compliance). It's a mix between private and public clouds.

## Explain the three main types of cloud service
1. **Infrastructure as a Service (IaaS)**: Provides virtualized computing resources over the internet. Examples: AWS EC2, Microsoft Azure VMs.
2. **Platform as a Service (PaaS)**: Provides hardware and software tools (often for application development) over the internet. Examples: Google App Engine, Microsoft Azure App Service.
3. **Software as a Service (SaaS)**: Provides software applications over the internet, on a subscription basis. Examples: Gmail, Microsoft 365, Salesforce.

## What are some of the main advantages of the cloud?
1. **Scalability**: Resources can be scaled up or down based on demand.
2. **Cost-efficiency**: No need to invest in expensive infrastructure; pay-as-you-go models are available.
3. **Accessibility**: Access services and data from anywhere with an internet connection.
4. **Reliability**: Cloud providers typically offer high availability with redundancy.
5. **Security**: Cloud providers offer robust security measures such as encryption and identity management.
6. **Collaboration**: Cloud platforms enable real-time collaboration among distributed teams.

## What are some potential pitfalls/disadvantages of using the cloud?
1. **Data Security**: Storing sensitive information on remote servers can be a concern for privacy and data protection.
2. **Downtime**: Cloud services may experience outages, which can disrupt business operations.
3. **Vendor Lock-in**: Migrating services from one cloud provider to another can be costly and complex.
4. **Hidden Costs**: Unexpected usage and bandwidth charges can lead to higher-than-expected costs.
5. **Limited Control**: Users depend on the cloud provider for uptime, security, and performance, limiting control over the environment.

## Have a look at marketshare? Who are the biggest Cloud providers?
The biggest cloud providers by market share (as of 2025) are:
1. **Amazon Web Services (AWS)**: Dominates the cloud market with a broad range of services.
2. **Microsoft Azure**: A close second, particularly strong in enterprise environments.
3. **Google Cloud Platform (GCP)**: Gaining market share with advanced tools in machine learning and data analytics.

## Which Cloud Provider is best? What are the big three known for?
- **AWS**: Known for its vast infrastructure, large service catalog, and flexibility in deployment.
- **Azure**: Strong in hybrid cloud environments and widely adopted in enterprise organizations, especially those using Microsoft technologies.
- **Google Cloud**: Known for data analytics, machine learning, and deep integration with Google's search and AI technologies.

## What sorts of things do you usually pay for when using the cloud?
Cloud users typically pay for:
- **Compute**: Virtual machines, serverless computing, etc.
- **Storage**: Data storage solutions (e.g., S3, Blob storage).
- **Bandwidth**: Data transfer costs in and out of the cloud.
- **Software**: SaaS subscriptions (e.g., Office 365, Salesforce).
- **Support**: Costs for premium support plans and additional features.
- **API Calls**: Usage-based fees for API services (e.g., AWS Lambda or Google Functions).

## What are the four pillars of DevOps? How are they linked to cloud computing?
The four pillars of DevOps are:
1. **Collaboration**: DevOps promotes collaboration between development and operations teams. In the cloud, this means using cloud-based tools for continuous integration and continuous deployment (CI/CD).
2. **Automation**: Automation of processes like testing, deployment, and scaling. Cloud platforms provide tools and services for automating infrastructure and application deployment.
3. **Monitoring**: Continuous monitoring of applications and infrastructure. Cloud providers offer tools like CloudWatch (AWS) and Azure Monitor to track performance and logs.
4. **Feedback**: Quick feedback loops for improvement. Cloud computing allows real-time feedback on infrastructure performance and application health through monitoring tools, which improves the DevOps cycle.

Cloud computing enables DevOps by providing a scalable, flexible environment where code can be tested, deployed, and monitored more efficiently.