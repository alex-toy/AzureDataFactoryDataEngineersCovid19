az group create `
    --location francecentral `
    --name alexeirg


az deployment group create `
    --resource-group alexeirg `
    --template-file 'templates\template.json' `
    --parameters 'templates\parameters.json'