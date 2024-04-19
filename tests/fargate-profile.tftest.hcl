mock_provider "aws" {}

run "test_fargate_profile" {
  command = plan

  variables {
    name         = "separate-fargate-profile"
    cluster_name = "test-cluster"
    subnet_ids   = ["subnet-12345678", "subnet-87654321"]
    selectors = [{
      namespace = "kube-system"
    }]
  }

  module {
    source = "./tests/fargate-profile"
  }
}
