***Reference-***

Docker Image name - bankapp

Azure Container Registry Name- myapp1992

Service principle name for github action -github-actions-subrata-19927

***Local docker Commands-***

docker build . -t bankapp

docker run -p 8000:8000 bankapp

docker will run at- localhost:8000

***Docker Commands to push the docker to Azure-***

az login

az acr login --name myapp1992

docker tag bankapp myapp1992.azurecr.io/bankapp:v1

docker push myapp1992.azurecr.io/bankapp:v1

***Create a service principle in Azure***

az ad sp create-for-rbac --name "github-actions-subrata-19927" --role contributor --scopes /subscriptions/<subscription key>/<resource group> --sdk-auth

***Github secrets***

•	 AZURE_CREDENTIALS: Entire JSON response from preceding

•	 REGISTRY_USERNAME: clientId value from JSON response

•	 REGISTRY_PASSWORD: clientSecret value from JSON response
