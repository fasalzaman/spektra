
adminUsername=${1}
adminPassword=${2}
RG_NAME=${3}
SP_NAME=${4}
SP_SECRET=${5}
VM_SIZE=${6}
echo "\n"
echo RG_NAME=$RG_NAME >> /home/$adminUsername/acs-create.sh
echo ACS_NAME=$adminUsername >> /home/$adminUsername/acs-create.sh 
echo SSH_KEY_PATH='~/.ssh/id_rsa.pub' >> /home/$adminUsername/acs-create.sh 
echo MASTER_OS_DISK=50 >> /home/$adminUsername/acs-create.sh 
echo AGENT_OS_DISK=120 >> /home/$adminUsername/acs-create.sh 
echo SP_NAME=$SP_NAME >> /home/$adminUsername/acs-create.sh
echo SP_SECRET=$SP_SECRET >> /home/$adminUsername/acs-create.sh
echo DNS_PREFIX=$adminUsername >> /home/$adminUsername/acs-create.sh
echo VM_SIZE=$VM_SIZE >> /home/$adminUsername/acs-create.sh
echo ADMIN_NAME=$adminUsername >> /home/$adminUsername/acs-create.sh
echo TENANT_ID='12c5db39-b62e-4301-b848-09acda2692a5' >> /home/$adminUsername/acs-create.sh

TENANT_ID='12c5db39-b62e-4301-b848-09acda2692a5'
ACS_NAME=$adminUsername
DNS_PREFIX=$adminUsername
ADMIN_NAME=$adminUsername
SSH_KEY_PATH='~/.ssh/id_rsa.pub'
AGENT_OS_DISK=120
MASTER_OS_DISK=50

echo "\n"
echo az login --service-principal -u $SP_NAME -p $SP_SECRET --tenant $TENANT_ID >> /home/$adminUsername/acs-create.sh
echo "\n"
echo az acs create --orchestrator-type Kubernetes -g $RG_NAME -n $ACS_NAME  \
--ssh-key-value $SSH_KEY_PATH --service-principal $SP_NAME --client-secret  \
$SP_SECRET --dns-prefix $DNS_PREFIX --master-count 1 --master-vm-size \
$VM_SIZE --master-storage-profile ManagedDisks --master-osdisk-size \
$MASTER_OS_DISK --agent-count 2 --agent-vm-size $VM_SIZE \
--agent-storage-profile ManagedDisks --agent-osdisk-size $AGENT_OS_DISK \
--admin-username $ADMIN_NAME --generate-ssh-keys >> /home/$adminUsername/acs-create.sh

