# Creating web application from Powershell
1. Install modules

```ps
$ Install-Module -Name Az -AllowClobber -Scope CurrentUser
```

2. Update Azure modules

```ps
$ Update-Module -Name Az
```

3. Show all modules from search param

```ps
$ Get-Command *AzWebApp*
```

4. Validate user

```ps
$ Connect-AzAccount -TenantId [Subscrition Id]
```

5. Verify context

```ps
$ Get-AzContext
```

6. Create a new Resource Group

```ps
$ New-ResourceGroup -Location 'EastUS' -Name 'az-204-application-service'
```

7. New AppService plan

```ps
$ New-AzAppServicePlan -Name 'az-204-appservice-plan' -Location 'EastUS' -ResourceGroupName 'az-204-application-service' -Tier Free
```

8. Create web application

```ps
$ New-AzWebApp -ResourceGroupName 'az-204-application-service' -Name 'az204-application-web' -Location 'EastUS' -AppServicePlan 'az-204-appservice-plan'
```

9. Review your application

```ps
$ Get-AzResource -ResourceGroupName 'az-204-application-service'
```