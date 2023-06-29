
aws_eks_cluster_config = {

      "demo-cluster" = {

        eks_cluster_name         = "demo-cluster1"
        eks_subnet_ids = ["subnet-02df3ec09b860a473","subnet-017e22dc9eb2696b1","subnet-0d7ff409e690f1c69","subnet-0bd6abd5f2378c976"]
        tags = {
             "Name" =  "demo-cluster"
         }  
      }
}

eks_node_group_config = {

  "node1" = {

        eks_cluster_name         = "demo-cluster"
        node_group_name          = "mynode"
        nodes_iam_role           = "eks-node-group-general12"
        node_subnet_ids          = ["subnet-02df3ec09b860a473","subnet-017e22dc9eb2696b1","subnet-0d7ff409e690f1c69","subnet-0bd6abd5f2378c976"]

        tags = {
             "Name" =  "node1"
         } 
  }
}