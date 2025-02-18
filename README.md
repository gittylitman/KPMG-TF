# KPMG-TF

Commands to run terraform:

	• Terraform init
	• Terraform apply
	• Terraform plan
	
How to install terraform and azure cli in python container in docker:
	• Run python container
	• Run netfree
	apt-get update && apt-get install -y gnupg software-properties-common
	
	wget -O-  https://apt.releases.hashicorp.com/gpg | \
	gpg --dearmor | \
	tee /usr/share/keyrings/hashicorp-archive-keyring.gpg
	
	gpg --no-default-keyring \
	--keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg \
	--fingerprint
	
	echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] \
	https://apt.releases.hashicorp.com $(lsb_release -cs) main" | \
	tee /etc/apt/sources.list.d/hashicorp.list
	
	apt update
	
	apt-get install terraform
	
    apt-get update && apt-get install -y \
       curl \
       gnupg \
       && echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] http://packages.cloud.google.com/apt cloud-sdk main" \
       | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list \
       && curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key --keyring /usr/share/keyrings/cloud.google.gpg add - \
       && apt-get update && apt-get install -y google-cloud-sdk \
       && apt-get clean \
       && rm -rf /var/lib/apt/lists/*

Login to the GCP console project:

	gcloud auth login

	gcloud config set project PROJECT_ID

	gcloud auth application-default login

       
    