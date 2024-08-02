resource "aws_elastic_beanstalk_application" "app" {
  name        = "my-app"
  description = "My Node.js Application"
}

resource "aws_elastic_beanstalk_environment" "app_env" {
  name                = "my-app-env"
  application         = aws_elastic_beanstalk_application.app.name
  solution_stack_name = "64bit Amazon Linux 2 v5.4.4 running Node.js 14"

  setting {
    namespace = "aws:autoscaling:launchconfiguration"
    name      = "InstanceType"
    value     = "t2.micro"
  }
}