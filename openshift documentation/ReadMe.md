# AEC Open Shift | Lab Guide

<!-- TOC -->

1. [Workshop Architecture and Objective](#Workshop-Architecture-and-Objective)
2. [Lab 1: Introduction to Azure Portal](#Lab 1:-Introduction-to-Azure-Portal)
3. [Lab 2: Deploying Open Shift cluster using ARM templates](#Lab-2:-Deploying-Open-Shift-cluster-using-ARM-templates)
4. [Lab 3: Deploying workload on Openshift](#Lab-3:-Deploying-workload-on-Openshift)
5. [Lab 4: Integration of ACR with OpenShift](#Lab-4:-Integration-of-ACR-with-OpenShift)

<!-- /TOC -->
 ## Workshop Architecture and Objective
 As part of Hand on Lab, you will get following details via email. Make a note of these details as these shall be leveraged throughout the lab exercise
* Azure Access: Azure Username and Password (Default Password, Change at first login)
### Labs Objective
During this lab, you will deploy Open Shift cluster on Azure and integrate Azure AD Authentication and Azure Container Registry into Open Shift. Detailed steps to achieve this is as follows.
* Get Familiar with Azure Portal and Ansible Tower UI
*	Create an Azure AD Application for Authentication
*	Create a key vault to store SSH Key
*	Deploy Open Shift using ARM Template
*	Configure Azure AD Authentication
*	Deploy 2 Tier App on Open Shift
*	Integration of Azure Container Registry with Open Shift
### Workshop Architecture after deploying ARM Template


