# Terraform AWS Infrastructure as Code Project

## Overview

This project showcases the power of Terraform as an Infrastructure as Code (IaC) tool for AWS. It includes the creation of a remote backend using S3 and DynamoDB, EC2 instances, S3 bucket, RDS instance, ALB, and Route 53, all within a VPC.

## Architecture
![](web-app/architecture.png)

## Prerequisites

Before deploying the infrastructure, ensure that you have:

- AWS CLI configured with necessary permissions.
- Terraform installed on your local machine.

## Terraform Remote Backend

The project uses a remote backend for state management. The `aws-backend/main.tf` file includes the configuration for an S3 bucket and DynamoDB table for state locking.

## Infrastructure Deployment

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

## Directory Structure

- **`/aws-backend/main.tf`**: Initial Terraform configuration for setting up a remote backend.
- **`web-app/main.tf`**: Main Terraform configuration for creating EC2 instances, S3 bucket, RDS, ALB, and Route 53.

## Conclusion

This project demonstrates the use of Terraform to manage AWS infrastructure efficiently. It covers essential concepts such as remote backends, EC2 instances, S3, RDS, ALB, and Route 53.

Feel free to explore the code, modify configurations, and adapt it to your specific needs. For a step-by-step guide, refer to the project documentation on GitHub.

## Resources

- [Terraform Documentation](https://www.terraform.io/docs/index.html)
- [AWS CLI Installation Guide](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html)
