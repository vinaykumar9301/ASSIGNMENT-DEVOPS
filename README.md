
## Setup Instructions
1. Clone the repository.
2. Configure AWS CLI with `aws configure`.
3. Navigate to the `infrastructure/` directory and run `terraform init` and `terraform apply`.
4. Push code to GitHub to trigger the CI/CD pipeline.

## Operational Guidelines
- Monitor the application using AWS CloudWatch.
- Ensure security using IAM roles and security groups.
- Use Docker for consistent environments across development, testing, and production.
