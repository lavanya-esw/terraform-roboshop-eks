locals {
  # security_group_id = data.aws_ssm_parameter.frontend_sg-id.value
  # source_security_group_id = data.aws_ssm_parameter.frontend_alb_sg-id.value
  bastion_sg_id = data.aws_ssm_parameter.bastion_sg-id.value
  # backend_security_group_id = data.aws_ssm_parameter.backend_alb_sg-id.value
  mongodb_security_group_id = data.aws_ssm_parameter.mongodb_sg-id.value
  redis_security_group_id = data.aws_ssm_parameter.redis_sg-id.value
  rabbitmq_security_group_id = data.aws_ssm_parameter.rabbitmq_sg-id.value
  mysql_security_group_id = data.aws_ssm_parameter.mysql_sg-id.value
  openvpn_sg_id = data.aws_ssm_parameter.openvpn_sg_id.value
  ingress_alb_sg_id = data.aws_ssm_parameter.ingress_alb_sg_id.value
  eks_control_plane_sg_id = data.aws_ssm_parameter.eks_control_plane_sg_id.value
  eks_node_sg_id = data.aws_ssm_parameter.eks_node_sg_id.value

  vpn_ingress_rules = {
    mongodb_22 = {
      sg_id = local.mongodb_security_group_id
      port = 22
    }
    bastion_22 = {
      sg_id = local.bastion_sg_id
      port = 22
    }
    mysql_22 = {
      sg_id = local.mysql_security_group_id
      port = 22
    }
    redis_22 = {
      sg_id = local.redis_security_group_id
      port = 22
    }
    rabbitmq_22 = {
      sg_id = local.rabbitmq_security_group_id
      port = 22
    }
    
  }

}