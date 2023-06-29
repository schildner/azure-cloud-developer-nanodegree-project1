# Write-up Template

## Analyze, choose, and justify the appropriate resource option for deploying the app

*For **both** a VM or App Service solution for the CMS app:*

- *Analyze costs, scalability, availability, and workflow*
- *Choose the appropriate solution (VM or App Service) for deploying the app*
- *Justify your choice*

### App Service vs Virtual Machine

Category | AppService | Virtual Machine
--- | --- | ---
**COSTS** | --- | ---
Super Low Cost | Free F1:  vCPU N/A, 1 GB RAM, max 60mins / day | B1s (1 CPU, 1 GB RAM) 0.01 USD/hour (=8.76 in West Europe region)
Reasonable HW Example | Tier: "Standard S2". 2 vCPUs 3.5 GB RAM 50 GB storage, scale upto 10 instances: 138 USD/month | Comparable VM: "D2lds_v5" 2 vCPU 4 GB RAM 75 GB storage: 81 USD/month
Billing | Paying for Active Service Plan even if not running | Paying only for time of running VM
**FLEXIBILITY** | --- | ---
Max HW | 14GB RAM 4vCPUs | (almost) any HW money can buy: e.g. M416ms_v2 has 416 vCPUs and 11400 GB RAM
Scalability | Vertical scaling with no need to redeploy. High Availability & Auto-scaling possible | VMSS can be a nice setup of multiple VMs for AutoScaling option. Or AKS nodepools. 
Availability | SLA 99.95% for all but Free F1 and Shared D1 | Single instance VMs: 99.9% uptime. Max achievable: 99.99% if multiple VMs configured in Availability Zones
**WORKFLOW** | --- | ---
Downsides | Limited configurability (of the webserver "under the hood") | Need to take care of VM updates / image updates etc.

#### I have chosen App Service in this project for the following reasons

1. Downsides acceptable: Less flexibility and less control than VM but I dont need full control of the infrastructure. 
2. App Service allows me to focus on my goal without the maintenance / configuration overhead I'd have with VM. 
3. The workflow is much simple
4. Costs would actually be lower with carefully selected VM size but I'd need to configure a web server: no time. 
5. Not that I need it but... App Service also guarantees High availability and auto-scaling.

## Assess app changes that would change your decision

*Detail how the app and any other needs would have to change for you to change your decision in the last section.*

Disadvantages of App Service as opposed to VM

- Hardware limitations: maximum of 14GB RAM and 4 vCPU cores per instance
- Limited set of supported languages
- Payment for active Service Plan even if application is not running

Should the requirements change in future then the App Service disadvantages listed above would have to be taken in account. E.g. if the web app was to change to an unsupported language then VM would offer the flexibility to install any SW required to run it. Or if the app computational demands grow above the max limit for App Service then a VM with much larger computational capacity could be easily selected.
