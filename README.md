***Reference-***

Docker Image name - bankapp

Azure Container Registry Name- myapp1992

Service principle name for github action -github-actions-subrata-19927

***Local docker Commands-***

az login

az acr login --name myapp1992

docker tag bankapp myapp1992.azurecr.io/bankapp:v1

docker push myapp1992.azurecr.io/bankapp:v1

***Create a service principle in Azure***

az ad sp create-for-rbac --name "github-actions-subrata-19927" --role contributor --scopes /subscriptions/<subscription key>/<resource group> --sdk-auth

***Github secrets***

•	 AZURE CREDENTIALS: Entire JSON response from preceding

•	 REGISTRY_USERNAME: clientId value from JSON response

•	 REGISTRY_PASSWORD: clientSecret value from JSON response
