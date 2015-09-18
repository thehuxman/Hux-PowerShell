<#

.SYNOPSIS

Maps the subscription ID to friendly names for Azure subscriptions enabling easy switching.  
For the best result save this in your PowerShell profile.


.DESCRIPTION

Easily switch between Azure subscriptions.  Ensure add-azureaccount is run initially.



.PARAMETER SubsciptionID 

The friendly name in your subscription list.



.EXAMPLE

Switch to subscription with a friendly name of "MSDN"  - Remember to update the code with your subscription details!!!

Select-MyAzureSubscription msdn


#>

Function Select-MyAzureSubscription {

Param(
  [Parameter(Mandatory=$True)]
   [string]$SubscriptionId)

$SubscriptionId = ($SubscriptionId).ToLower()

$SubList = @{

"friendlyname" = "subscription ID"
"friendlyname2" = "subscription ID2"

            }

Select-AzureSubscription -SubscriptionId ($SubList[$SubscriptionId])

Write-Host `r`n
Write-Host -ForegroundColor Cyan "Connected to Azure Subscription $SubscriptionId"
