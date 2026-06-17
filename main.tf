
# Create Resource Group
resource "azurerm_resource_group" "ranjeet-rg" {
  name     = "rg-ranjeet-demo"
  location = "Central India"
}

#  Create Virtual Network
resource "azurerm_virtual_network" "vnet" {
  name                = "ranjeet-demo-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.ranjeet-rg.location
  resource_group_name = azurerm_resource_group.ranjeet-rg.name
}

#  Create Subnet
resource "azurerm_subnet" "subnet" {
  name                 = "ranjeet-demo-subnet"
  resource_group_name  = azurerm_resource_group.ranjeet-rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.0.1.0/24"]
}

# Create Network Interface (NIC)
resource "azurerm_network_interface" "nic" {
  name                = "demo-nic"
  location            = azurerm_resource_group.ranjeet-rg.location
  resource_group_name = azurerm_resource_group.ranjeet-rg.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.subnet.id
    private_ip_address_allocation = "Dynamic"
  }
}