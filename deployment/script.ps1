az group create `
    --location francecentral `
    --name alexeirg


az deployment group create `
    --resource-group alexeirg `
    --template-file 'deployment\database\template.json' `
    --parameters 'deployment\database\parameters.json'


az deployment group create `
    --resource-group alexeirg `
    --template-file 'deployment\factory\template.json' `
    --parameters 'deployment\factory\parameters.json'


az deployment group create `
--resource-group alexeirg `
--template-file 'deployment\storage\template.json' `
--parameters 'deployment\storage\parameters.json'


az deployment group create `
    --resource-group alexeirg `
    --template-file 'deployment\gen2\template.json' `
    --parameters 'deployment\gen2\parameters.json'
