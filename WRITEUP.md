# Write-up Template

## Analyze, choose, and justify the appropriate resource option for deploying the app

*For **both** a VM or App Service solution for the CMS app:*

- *Analyze costs, scalability, availability, and workflow*
- *Choose the appropriate solution (VM or App Service) for deploying the app*
- *Justify your choice*

### App Service vs Virtual Machine

For this project I have chosen App Service. It offers less flexibility and less control than VM but I dont need full control of the infrastructure. My goal is just to run a simple python flask webapp. App Service allows me to focus on my goal without the maintenance / configuration overhead I'd have with VM. The workflow is much simple while the costs are lower with App Service. App Service also guarantees High availability and auto-scaling

## Assess app changes that would change your decision

*Detail how the app and any other needs would have to change for you to change your decision in the last section.*

Disadvantages of App Service as opposed to VM

- Hardware limitations: maximum of 14GB RAM and 4 vCPU cores per instance
- Limited set of supported languages
- Payment for active Service Plan even if application is not running

Should the requirements change in future then the App Service disadvantages listed above would have to be taken in account. E.g. if the web app was to change to an unsupported language then VM would offer the flexibility to install any SW required to run it. Or if the app computational demands grow above the max limit for App Service then a VM with much larger computational capacity could be easily selected.
