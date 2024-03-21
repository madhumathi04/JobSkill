# JobSkill Flask Website Deployment with GitOps

## Overview
This project demonstrates the deployment of a Flask-based website using GitOps methodology with Argo CD and Argo Rollouts.

## Table of Contents
1. [Steps Performed](#steps-performed)
2. [Challenges Faced and Solutions](#challenges-faced-and-solutions)
3. [Overview of Jobskills Website](#overview-of-jobskills-website)

## Steps Performed

### Step 1: Fork Repository
- **Forked Repository**: I forked the [Job Skills Repository](https://github.com/likhith1409/JobSkill) Flask-based website repository from the original repository on GitHub.

### Step 2: Dockerfile Creation
- **Dockerfile Creation**: I built a Dockerfile to containerize the Flask application.

### Step 3: GitHub Actions Pipeline
- **GitHub Actions Pipeline**: I set up a GitOps pipeline using GitHub Actions. This pipeline automates the building and pushing of the Docker image to Docker Hub whenever changes are made to the repository.

### Step 4: Docker Image Push to Docker Hub
- **Docker Image Push to Docker Hub**: I successfully pushed the Docker image to Docker Hub using the created Dockerfile and GitOps pipeline. The Docker image can be found [here](https://hub.docker.com/r/madhumathi0406/jobskillapp).

### Step 5: Minikube Installation
- **Minikube Installation**: Installed Minikube for local Kubernetes environment setup.

### Step 6: Created Deployment and Service YAMLs
- **Created Deployment and Service YAMLs**: Created the deployment.yaml and service.yaml files to deploy the Flask application on Kubernetes.

### Step 7: Pushed to GitHub
- **Pushed to GitHub**: Pushed the deployment.yaml and service.yaml files to GitHub repository.

### Step 8: Argo CD Setup
- **Argo CD Setup**: Set up Argo CD for continuous deployment on Kubernetes.
   ![mmdd](https://github.com/madhumathi04/JobSkill/assets/97741195/299ea4df-f757-4f64-aaea-d8b3362c20ed)


### Step 9: Argo Rollouts Installation
- **Argo Rollouts Installation**: Installed Argo Rollouts for canary deployment strategy.
   ![hjtglit](https://github.com/madhumathi04/JobSkill/assets/97741195/c9d7dd52-fa57-4092-991c-7fe4c34aa0a3)


## Challenges Faced and Solutions

### Challenge: Got permission denied while trying to connect to the Docker when run minikube ssh
- **Solution**: I ran the following commands:
    ```bash
    sudo groupadd docker
    sudo usermod -aG docker $USER
    newgrp docker
    ```

### Challenge: AWS Free Trial Limit Reached for Creating EKS Cluster
- **Description**: I encountered difficulties when trying to create an Amazon EKS cluster due to reaching the quota limit on my AWS Free Trial account.
- **Solution**: Instead of using Amazon EKS, I opted to install and use Minikube for local Kubernetes cluster management. This allowed me to continue development and testing without relying on AWS services.

### Challenge: Installation Error Encountered with Brew
- **Description**: I encountered an error while trying to install a package using Homebrew (`brew`) package manager.
- **Solution**: I found a solution by following the instructions provided in [this website link](https://phoenixnap.com/kb/homebrew-for-linux), which helped me troubleshoot and resolve the installation error.

### Challenge: Processing Issue While Implementing Another Version of Application with Argo Rollouts
- **Description**: I encountered difficulties with processing while trying to implement another version of the application using Argo Rollouts due to my limited knowledge in ArgoCD Rollouts.
- **Solution**: To address this issue, I decided to deepen my understanding of Argo Rollouts by referring to the official documentation. 

## Overview of Jobskills Website
![Jobskills Website Overview](https://github.com/madhumathi04/JobSkill/assets/97741195/fe46b512-7ae1-4911-9730-554d0b034ee9)
