terraform {
  backend "s3" {
    # The name of the S3 bucket to store the Terraform state file
    bucket = "mys3-terraform-state"
    
    # The key is the path within the bucket where the state file is stored
    key = "mykey/vpc/terraform.tfstate"
    
    # The AWS region where the S3 bucket is located
    region = "us-east-1"
    
    # The DynamoDB table used for state locking and consistency checking
    dynamodb_table = "mydb_table"
  }
}
