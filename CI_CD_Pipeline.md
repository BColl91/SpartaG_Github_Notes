# CI and CD Pipeline

**CI** stands for **Continuous Integration**, and **CD** stands for **Continuous Delivery** (or **Continuous Deployment**).

- **Continuous Integration (CI)**: This is the practice of frequently merging your code changes into a shared repository (e.g., GitHub or GitLab). Every time you make a change, it is automatically tested to ensure it doesn't break anything in the codebase.
  
- **Continuous Delivery/Deployment (CD)**: This means that after the code is tested (via CI), it is automatically prepared and delivered (or deployed) to the production environment without manual intervention. Continuous Deployment goes one step further, deploying the code automatically without any manual review, while Continuous Delivery might have a manual review step before going live.

**CI/CD pipeline** is a series of steps that automates the process of testing, building, and deploying your application. The goal is to speed up software development by automating repetitive tasks like testing, integration, and deployment.

![Jenkins SG](./images/CICD/Jenkins.png)
--------

## Jenkins

Jenkins is a tool used to automate the process of Continuous Integration (CI) and Continuous Delivery/Deployment (CD). It's an open-source tool that helps developers automate the building, testing, and deployment of their applications.

Think of Jenkins like a robot assistant that watches your code repository, and when new code is added or changes are made, it automatically builds, tests, and deploys your project for you.

### How Jenkins Works in a CI/CD Pipeline:

Imagine you’re a developer, and you’ve just written some code. Jenkins can automatically do a few important things for you:

    Detect changes: Jenkins watches your code repository (like GitHub or GitLab). When you push new code changes, Jenkins sees this and starts working on it right away.

    Build your code: Jenkins then runs a "build" job. This means it compiles your code (or sets up your app) to make sure it's ready for testing or deployment.

    Test your code: After building the code, Jenkins can run tests (like checking if your app works as expected) to make sure you didn't break anything with the new code.

    Deploy your code: If everything goes well (the build and tests pass), Jenkins can automatically deploy your code to a live server or a staging server where users can try it out.

![Jenkins SG](./images/CICD/cicd_flow.png)
-------

# Setting up a CI/CD Pipeline with Jenkins

-To get started you will first need to register/login to Jenkins. It should then take you to a dashboard similar to the screenshit below:#
![Jenkins SG](./images/CICD/dashboard.png)
<br>
<br>

-From the laft hand side select *New Item* and name your new project as appropiate. (*e.g:- rebecca-first-project*)
-Select *Freestyle Project* and click ok to continue.

![Jenkins SG](./images/CICD/step1.png)
<br>
<br>

-Write an imformative description to explain what the job/project entails.

![Jenkins SG](./images/CICD/step2.png)
<br>
<br>

-Select "Discard old builds* and in *Max # of build to keep* put in 3.
![Jenkins SG](./images/CICD/step3.png)
<br>
<br>

-Scroll down to Build Steps and select *Add Build Step*.
-In the drowpdown list, select *ssh* and add your command/script to the input box.

![Jenkins SG](./images/)
![Jenkins SG](./images/)
![Jenkins SG](./images/)