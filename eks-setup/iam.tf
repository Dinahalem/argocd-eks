resource "aws_iam_role" "demo" {
  name = "eks-cluster-demo"

  assume_role_policy = <<Policy
{
    "Version" : "2012-10-17"
    "Statement" : [
      {
        #Action : "sts:AssumeRole"
        "Effect" : "Allow"
        "Principal" : {
         "Service" : "eks.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
     }
    ]
}
POLICY
}
resource "aws_iam_role_policy_attachment" "demo-AmazonEKSClusterPolicy" {
 policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
  role      = aws_iam_role.demo.name
} 
