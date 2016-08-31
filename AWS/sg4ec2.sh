sudo aws ec2 create-security-group --group-name devops --region us-west-2 --description "security group for development operations in EC2"
{
    "GroupId": "sg-b018ced5"
}
sudo aws ec2 authorize-security-group-ingress --group-name devops --protocol tcp --port 22 --cidr 178.137.165.106/32


aws ec2 create-security-group --group-name devops --description "devops security group" --region us-west-2
