resource "aws_ssm_parameter" "ingress-alb-certificate-arn" {
    name  = "/${var.project}/${var.environment}/ingress_alb_certificate_arn"
    type = "String"
    value = aws_acm_certificate.roboshop.arn
  
}