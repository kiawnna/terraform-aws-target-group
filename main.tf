resource "aws_lb_target_group" "target_group" {
  name     = "${var.app_name}-${var.environment}-tg"
  port     = var.port
  protocol = var.protocol
  vpc_id   = var.vpc_id
  target_type = var.target_type

  health_check {
     enabled           = var.health_check_enabled
     matcher           = var.health_check_matcher
     protocol          = var.health_check_protocol
     path              = var.health_check_path
     timeout           = var.health_check_timeout
     interval          = var.health_check_interval
     healthy_threshold = var.healthy_threshold
  }
  depends_on = [var.load_balancer_arn]
}





