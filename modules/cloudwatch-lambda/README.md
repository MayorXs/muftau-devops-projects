  
# CloudWatch Alarms for AWS Lambda

A reusable Terraform module to monitor AWS Lambda functions for:
- 🔴 Errors
- ⚠️ Throttles
- ⏱️ Duration (execution time)

Built during my **DevOps internship with PulseGrid ETL Project**.

## 🧩 Why This Matters

Instead of writing inline alarms in `main.tf`, I built a **reusable module** so the team can monitor any Lambda function with one line.

This follows **Infrastructure as Code (IaC) best practices**:
- Reusability
- Consistency
- Maintainability

## 📦 Usage

```hcl
module "lambda_monitoring" {
  source               = "git::https://github.com/your-username/muftau-devops-projects.git//cloudwatch-lambda-module"
  lambda_function_name = module.lambda.lambda_name
  sns_topic_arns       = ["arn:aws:sns:us-east-1:280959813670:alerts-topic"]
}
