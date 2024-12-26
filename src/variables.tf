#criando variáveis para facilitar
variable "aws_region" {
  description = "Região usada p criar recursos da AWS"
  type        = string
  nullable    = false
}
variable "aws_vpc_name" {
  description = "value"
  type        = string
  nullable    = false
}
variable "aws_vpc_cidr" {
  description = "value"
  type        = string
  nullable    = false
}
variable "aws_vpc_azs" {
  description = "value"
  type        = set(string)
  nullable    = false
}
variable "aws_vpc_private_subnets" {
  description = "value"
  type        = set(string)
  nullable    = false
}
variable "aws_vpc_public_subnets" {
  description = "value"
  type        = set(string)
  nullable    = false
}
variable "aws_eks_name" {
  description = "value"
  type        = string
  nullable    = false
}
variable "aws_eks_version" {
  description = "value"
  type        = string
  nullable    = false
}
variable "aws_eks_managed_node_groups_instance_types" {
  description = "value"
  type        = set(string)
  nullable    = false
}
variable "aws_project_tags" {
  description = "value"
  type        = map(any)
  nullable    = false
}