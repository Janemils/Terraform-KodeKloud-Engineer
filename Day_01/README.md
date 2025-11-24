Day #1:

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Question:

The Nautilus DevOps team is strategizing the migration of a portion of their infrastructure to the AWS cloud. Recognizing the scale of this undertaking, they have opted to approach the migration in incremental steps rather than as a single massive transition. To achieve this, they have segmented large tasks into smaller, more manageable units. This granular approach enables the team to execute the migration in gradual phases, ensuring smoother implementation and minimizing disruption to ongoing operations. By breaking down the migration into smaller tasks, the Nautilus DevOps team can systematically progress through each stage, allowing for better control, risk mitigation, and optimization of resources throughout the migration process.

For this task, create a key pair using Terraform with the following requirements:

Name of the key pair should be devops-kp.

Key pair type must be rsa.

The private key file should be saved under /home/bob/devops-kp.pem.
The Terraform working directory is /home/bob/terraform. Create the main.tf file (do not create a different .tf file) to accomplish this task.

Note: Right-click under the EXPLORER section in VS Code and select Open in Integrated Terminal to launch the terminal.


--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Solution: 

Create the directory:

mkdir /home/bob/terraform
cd /home/bob/terraform


This folder Day_01 has two files main.tf and the provider.tf, you can copy the main.tf in the current path as /home/bob/terraform is the Terraform Working directory.

After it's copied, you can run the following commands:

terraform init
terraform plan
terraform apply

Validate if the private key actually got created and stored in /home/bob/<private-key-file>.
You an view the content of the file /home/bob/<private-key-file>.

