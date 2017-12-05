# AEC Open Shift | Lab Guide

<!-- TOC -->

1. [Workshop Architecture and Objective](##Workshop-Architecture-and-Objective)
2. [Lab 1: Introduction to Azure Portal](#Lab-1:-Introduction-to-Azure-Portal)
3. [Lab 2: Deploying Open Shift cluster using ARM templates](#Lab-2:-Deploying-Open-Shift-cluster-using-ARM-templates)
4. [Lab 3: Deploying workload on Openshift](#Lab-3:-Deploying-workload-on-Openshift)
5. [Lab 4: Integration of ACR with OpenShift](#Lab-4:-Integration-of-ACR-with-OpenShift)

<!-- /TOC -->

## Workshop Architecture and Objective
 As part of Hand on Lab, you will get following details via email. Make a note of these details as these shall be leveraged throughout the lab exercise
- Azure Access: Azure Username and Password (Default Password, Change at first login)

### Labs Objective
During this lab, you will deploy Open Shift cluster on Azure and integrate Azure AD Authentication and Azure Container Registry into Open Shift. Detailed steps to achieve this is as follows.
- Get Familiar with Azure Portal and Ansible Tower UI
-	Create an Azure AD Application for Authentication
-	Create a key vault to store SSH Key
-	Deploy Open Shift using ARM Template
-	Configure Azure AD Authentication
-	Deploy 2 Tier App on Open Shift
-	Integration of Azure Container Registry with Open Shift

### Workshop Architecture after deploying ARM Template
Following illustrates the architecture in your Azure deployment after completion of exercise’s part of workshop.

## Lab 1: Introduction to Azure Portal
### Lab Overview
This lab will take you through Azure login and portal experience.
Prerequisites
-	Windows or a Mac machine with HTML5 supported browser such as Microsoft Edge, Internet Explorer, Chrome or Firefox
-	You should have registered in the training portal https://azuretraining.spektrasystems.com and received the confirmation message with the credentials to login to the Azure portal.
-	Red Hat Customer Portal login credentials so that the Azure instances can be registered with Red Hat Subscription Manager properly, and you must have enough OpenShift Container Platform entitlements to cover the chosen configuration.


### Time Estimate
10 minutes
## Exercise 1: Log into your Azure Portal
In this exercise, you will log into the Azure Portal using your Azure credentials.
1.	Launch a browser and Navigate to https://portal.azure.com. Provide the credentials that you received via email. Click on Sign In.
```` 
Note : At the first login, you may have to change the password, if asked for.
````
2.	Enter a new password. Then select Update password and sign in.
3.	Now, you will be directed to the Azure Dashboard

## Exercise 2: Verify access to the Subscription
In this exercise, you will verify the type of role you are assigned in this Subscription.
1.	Launch a browser and Navigate to https://portal.azure.com. Login with the Microsoft Azure credentials you received via email.
2.	Click on Microsoft Azure  at the top left corner of the screen, to view the Dashboard.
3.	To toggle show/hide the Portal menu options with icon, Click on the Show Menu button.     
4.	Click on the Resource groups button in the Menu navigation bar to view the Resource groups blade.
5.	You will see a Resource Group which you have access to, click on it.
````
Note:
The Resource Group shown here is for demo purpose only. Actual name of the Resouce Group that you </br> see may differ.
````
6.	From the Resource Group blade that come up, Select the Access Control ( IAM ) which is on the left side of the blade.
7.	In the new blade that come up, you can see the role that is assigned to you.





