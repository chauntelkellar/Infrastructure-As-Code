# Infrastructure-As-Code

The code found in this repository is to help you learn and understand infrastructure as code

## ARM
The ARM template found in `Infrastructure-As-Code` is for anyone that wants to deploy a Virtual machine deployment in Azure.  The server name, disk size, etc. can be paramaretized so it can be used as a template to manage cloud resources at scale.

### VSCode Plugins | ARM

| Name                               | Identifier                          | Short Description                                                                            |
| ---------------------------------- | ----------------------------------- | -------------------------------------------------------------------------------------------- |
| Azure Resource Manager (ARM) Tools | msazurermtools.azurerm-vscode-tools | Provides language support, resource snippets, and resource auto-completion for ARM templates |
| ARM Template Viewer                | bencoleman.armview                  | Displays a graphical preview of Azure Resource Manager (ARM) templates                       |

### Deployment | ARM

To deploy the ARM template and create all resources defined in it we need to run the following commands:

1. Login with Azure CLI

   ```Powershell
   az login
   ```

2. Deploy the template (This requires an already existing Resource Group)

   ```Powershell
   az deployment group create --resource-group cloudskillsck --template-file .\template.json
   ```

## Terraform
The Terraform code found in this repository is for anyone that wants to utilize a terraform module to create a virtual network in AWS 

### Helpful VSCode Plugins | Terraform

| Name                | Identifier                          | Short Description                                                                                           |
| ------------------- | ----------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| Terraform           | 4ops.terraform                      | Adds syntax support for the Terraform and Terragrunt configuration language                                 |
| HashiCorp Terraform | hashicorp.terraform                 | Adds syntax highlighting and other editing features for Terraform files using the Terraform Language Server |
| Azure Terraform     | ms-azuretools.vscode-azureterraform | Provides terraform command support, resource graph visualization and CloudShell integration inside VSCode   |
| Go                  | golang.go                           | Provides rich language support for the Go programming language                                              |

### Deployment | Terraform 

1. Authenticate with AWS CLI

   ```
   aws configure
   ```

2. Terraform commands
   ```
   terraform init
   terraform plan
   terraform apply
   ```
3. View instance deployed in AWS dashboard and in browswer

4. Teardown instance to avoid charges
   ```
   terraform destroy
   ```


## Testing | Terraform

The code in this repository is to test the Terraform module we previously deployed, utilizing the Terratest golang library

### Download Go

1. Go to [golang website](https://golang.org/dl/) and download installer

2. Open command prompt and type `go version` to validate install

### Deployment | Terraform test

1. Cd into terraform root folder where modules are located
   ` cd ..`

2. Initialize go modules

   `go mod init terraform-aws-webserver`

3. Download module dependencies

   `go mod tidy`

4. Switch to test directory

   `cd test`

5. Run test of the terraform module

   `go test -v .\webserver_test.go`

### Bicep
Bicep is Microsoft's new infrastructure as code language for deploying and managing infrastructure in Azure, the code found in this repository will deploy a storage account 

### Download Bicep

#### macOS via homebrew

```sh
# Add the tap for bicep
brew tap azure/bicep https://github.com/azure/bicep

# Install the tool
brew install azure/bicep/bicep
```

### VSCode Plugins (Bicep)

| Name  | Identifier                 | Short Description                                                                                   |
| ----- | -------------------------- | --------------------------------------------------------------------------------------------------- |
| Bicep | ms-azuretools.vscode-bicep | Adds syntax support for Bicep. Including: Validation, Intellisense, Code navigation and Refactoring |

### Deployment (Bicep)

To deploy the Bicep template and create all resources defined in it you will follow similar steps as deploying the ARM template

1. Login with Azure CLI

   ```Powershell
   az login
   ```

2. Create ARM template based on the Biceps template

   ```Powershell
   bicep build .\main.bicep
   ```

3. Deploy the template (This requires an already existing Resource Group)

   ```Powershell
   az deployment group create --resource-group cloudskillsck --template-file .\main.json -p name=ckstorage0101010
   ```
## Contributors
1. Chauntel Kellar

## Resources
[Cloud Native Devops Bootcamp](https://cloudskills.io)