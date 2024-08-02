resource "aws_cloudwatch_log_group" "app_log_group" {
  name = "/aws/elasticbeanstalk/my-app/app-log"

  retention_in_days = 30
}