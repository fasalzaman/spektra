
adminUsername=${1}
adminPassword=${2}
rgName=${3}
spName=${4}
spSecret=${5}
vmSize=${6}
echo RG_NAME=$rgName >> /home/$adminUsername/acs-create.sh
echo ACS_NAME=$adminUsername >> /home/$adminUsername/acs-create.sh 
echo SSH_KEY_PATH='~/.ssh/id_rsa.pub' >> /home/$adminUsername/acs-create.sh 
echo MASTER_OS_DISK=50 >> /home/$adminUsername/acs-create.sh 
echo AGENT_OS_DISK=120 >> /home/$adminUsername/acs-create.sh 
echo SP_NAME=$spName >> /home/$adminUsername/acs-create.sh
echo SP_SECRET=$spSecret >> /home/$adminUsername/acs-create.sh
echo DNS_PREFIX=$adminUsername >> /home/$adminUsername/acs-create.sh
echo VM_SIZE=$vmSize >> /home/$adminUsername/acs-create.sh
echo ADMIN_NAME=$adminUsername >> /home/$adminUsername/acs-create.sh
echo TENANT_ID='12c5db39-b62e-4301-b848-09acda2692a5' >> /home/$adminUsername/acs-create.sh

echo az login --service-principal -u $SP_NAME -p $SP_SECRET --tenant $TENANT_ID >> /home/$adminUsername/acs-create.sh

echo az acs create --orchestrator-type Kubernetes -g $RG_NAME -n $ACS_NAME  \
--ssh-key-value $SSH_KEY_PATH --service-principal $SP_NAME --client-secret  \
$SP_SECRET --dns-prefix $DNS_PREFIX --master-count 1 --master-vm-size \
$VM_SIZE --master-storage-profile ManagedDisks --master-osdisk-size \
$MASTER_OS_DISK --agent-count 2 --agent-vm-size $VM_SIZE \
--agent-storage-profile ManagedDisks --agent-osdisk-size $AGENT_OS_DISK \
--admin-username $ADMIN_NAME --generate-ssh-keys >> /home/$adminUsername/acs-create.sh

