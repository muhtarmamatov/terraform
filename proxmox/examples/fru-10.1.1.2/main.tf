module "provision_proxmox_vm" {
 source = "../../modules"
  # template details
os_description = "CentOS 7 x86-64 GenericCloud"
proxmox_template = "CentOS-7-x86-64-GenericCloud-qcow2-template"
provisioning_script_path = "templates/ubuntu_20.04_focal-fossa/provision.sh.tpl"


# pve connection
pm_api_url = "https://10.1.1.2:8006/api2/json"
pm_user = "root"
target_node = "fru"
token_id = "terraform@pam!terraform"
token_secret = "458c8632-50ba-435e-8ba3-f35798c13c6f"
# vm resources
storage_name = "local-lvm"
#disksize = "20G"
#sockets = 1
#cores = 1
#memory = 1024
balloon = 512

# vm user
user = "muhtar"
password = "123123"
ssh_key_public = "~/.ssh/id_rsa.pub"
ssh_key_private = "~/.ssh/id_rsa"

# vm network settings
gateway = "10.11.1.254"
nameserver = "10.1.1.10"
subnet_short = "24"
searchdomain = "k8s-master33.hl.airmanas.llc"
bridge = "vmbr0"

# vm provisioning settings
timezone = "Asia/Bishkek"

# vm's to be created (All lists must have equal lenghts!)
vmids = [ 212 ]
ipv4s = [ "10.11.1.33" ]
hostnames = [ "k8s33-master.hl.airmanas.llc" ]
memories_list = [2048]
sockets_list = [2]
cores_list = [2]
disksize_list = ["20G"]
}
