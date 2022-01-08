# terraform-aws-target-group
An opinionated module that creates a target group

## Instantiation
The simplest instantiation requires `environment`, `port`, `vpc_id`, `load_balancer_arn`, and `app_name`.

```
module "target_group" {
  source = "git@github.com:kiawnna/terraform-aws-target-group.git"
  load_balancer_arn = "load-balancer-arn"
  port = 80
  vpc_id = "vpc-id"
  app_name = "hello-world"
  environment = "dev"
}
```
> This example will create a target group that accepts all the provided defaults. Review defaults below under Variables / Customizations.

## Resources Created
* A target group.

## Outputs
The target group arn is an output.

Reference it as:

> module.target_group_module_name.target_group_arn

## Variables / Customization
The variable below can be customized to fit your needs. The current defaults are:
>  * `protocol` &rarr; HTTP
>  * `health_check_path` &rarr; /
>  * `target_type` &rarr; instance
>  * `health_check_enabled` &rarr; *true*
>  * `health_check_matcher` &rarr; "200-304"
>  * `health_check_protocol` &rarr; HTTP
>  * `health_check_timeout` &rarr; 30
>  * `health_check_interval` &rarr; 31
>  * `healthy_threshold` &rarr; 2

See the `variables.tf` file for further information.

## Tags
Tags are automatically added to all resources where possible. Tags will have the following format:

```
tags = {
    Name = "${var.app_name}-${var.environment}-resource"
    Deployment_Method = "terraform"
    Environment = var.environment
  }
```

