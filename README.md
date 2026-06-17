# Terraform Azure Network Interface (NIC)

## Project Overview

This project demonstrates how to create an Azure Network Interface Card (NIC) using Terraform.

The Network Interface (NIC) acts as a connection point between an Azure Virtual Machine and a Virtual Network (VNet). It enables communication between resources inside and outside Azure.

---

## Architecture

Resource flow:

Resource Group → Virtual Network → Subnet → Network Interface (NIC)

---

## Resources Created

* Azure Resource Group
* Azure Virtual Network (VNet)
* Azure Subnet
* Azure Network Interface (NIC)

---

## Prerequisites

Before running this project, ensure you have:

* Azure Subscription
* Terraform installed
* Azure CLI installed
* Logged in to Azure

```bash
az login
```

---

## Project Structure

```text
05-terraform-azure-NIC/
│
├── provider.tf
├── main.tf
├── .gitignore
├── README.md
```

---

## Terraform Commands

Initialize Terraform:

```bash
terraform init
```

Validate configuration:

```bash
terraform validate
```

Generate execution plan:

```bash
terraform plan
```

Apply configuration:

```bash
terraform apply
```

---

## Output

The project outputs:

* Resource Group Name
* Virtual Network Name
* Subnet Name
* Network Interface Name

---

## Learning Objectives

Through this project I learned:

* Infrastructure as Code (IaC)
* Terraform resource dependencies
* Azure networking basics
* Creating and managing NIC resources
* Terraform workflow

---

## Future Enhancements

* Add Network Security Group (NSG)
* Associate NSG with NIC
* Create Azure Virtual Machine
* Add Public IP
* Configure Bastion Host

---

## Author

Ranjeet Kumar
DevOps | Azure | Terraform | Kubernetes
