# Terraform AWS VPC Setup

This project sets up an AWS VPC with public and private subnets, an Internet Gateway, and a NAT Gateway using Terraform.

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed
- AWS credentials configured (e.g., via AWS CLI or environment variables)

## Project Structure

- `main.tf`: Contains the main infrastructure resources.
- `variables.tf`: Defines the input variables used in the project.
- `outputs.tf`: Defines the outputs of the project.
- `terraform.tfvars`: Contains the variable values (typically ignored in version control).
- `.gitignore`: Specifies files and directories to ignore in version control.

## Usage

1. **Clone the repository**:

   ```bash
   git clone https://github.com/lakshmi-Thungala/terraform-cloud.git
   cd terraform-cloud
