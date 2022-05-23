 module "iam" {
     source = "./modules/iam"
 }

 module "ec2" {
     source = "./modules/ec2"
     iam_instance_profile = module.iam.iam_instance_profile
     #depends_on = [module.iam]
 }
