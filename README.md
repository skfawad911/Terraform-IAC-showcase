# Terraform AWS Infrastructure as Code Project

## Overview

This Terraform project showcases the power of Infrastructure as Code (IaC) for AWS, covering various aspects. Each section corresponds to a specific topic, offering insights and organized configurations.

## Architecture
![Infrastructure Architecture Diagram](01-basics/web-app/architecture.png)

*This is the Architecture that i will be using for this project*

## Prerequisites

Before deploying the infrastructure, ensure that you have:

- AWS CLI configured with necessary permissions.
- Terraform installed on your local machine.

## Directory Structure

- **`01-basics/aws-backend/main.tf`**: Remote backend configuration for S3 and DynamoDB.
- **`01-basics/web-app/main.tf`**: Terraform configuration for EC2 instances, S3 bucket, RDS, ALB, and Route 53.
- **`02-variables/`**: Configuration files for handling Terraform variables.
- **`03-organization-and-modules/consul/main.tf`**: Terraform configuration for Consul.
- **`03-organization-and-modules/web-app/`**: Terraform configuration for the web app module.
- **`04-managing-environments/workspaces/main.tf`**: Terraform configuration for managing environments using workspaces.

## Usage

1. **Initialize Terraform:**

    ```bash
    terraform init
    ```

2. **Plan Changes:**

    ```bash
    terraform plan
    ```

3. **Apply Changes:**

    ```bash
    terraform apply
    ```

## Conclusion

This project demonstrates the use of Terraform to manage AWS infrastructure efficiently. It covers essential concepts such as remote backends, variables, modules, and environment management.

## Resources

- [Terraform Documentation](https://www.terraform.io/docs/index.html)
- [AWS CLI Installation Guide](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html)
