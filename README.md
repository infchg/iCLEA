# AzCtrl AZURE CLOUD CONTROL DEMOS

As a parallel task to control several AD FS and AD DS in Azure, we will start with a simple app we are going to control:

## Az-cli

Example of commands (notes from the presentation and dissemination labs to be compiled here soon)

az storage account create     -g web -n st1web -l 'Central US' # create StorageV2
      {
        "accessTier": "Hot",
        "allowBlobPublicAccess": true,
        "allowCrossTenantReplication": null,

 Azure needs a  special container called $web, which is the only container of each Azure Blob Storage. 

       az storage container create -n '$web' --account-name st1web # recommended to use other like --sas-token with credentials.
       {
         "created": true
       }


## Control Dashboards

# Lean-Quality Dashboards tools

some dashboards and splunk controls from 2019 reorganized outside

##  Open-Source for The Field and Non-Profit use


### OLDER <2015

#### Beluga Information-Change coding language  
 
 
the google cloud URLs  are no longer reacheable, Since the Beluga service was moved to other cloud servers, 
  - backlog:  the urls to be updated with the correct servers apps on GC & AWS
