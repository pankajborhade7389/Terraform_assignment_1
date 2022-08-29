# resource "aws_iam_user" "lb" {
#   name = "Adam"
# }
# Create a module for creating 3 Iam user and a user group then add all 3 users to user group that you have created, also print all usernames in output
resource "aws_iam_user" "example" {
  count = length(var.username)
  # name = element(var.username,count.index)
  name = var.username[count.index]
  path = "/system/"
}

resource "aws_iam_group" "grp1" {
  # name = "grp1"
  name = var.grp_name
  path = "/users/"
}

resource "aws_iam_group_membership" "team2022" {
  name = "tf-testing-group-membership"
  # users = [
  #   aws_iam_user.user_one.name,
  #   aws_iam_user.user_two.name,
  # ]
  users = [for i in aws_iam_user.example : i.name]
  group = aws_iam_group.grp1.name
}