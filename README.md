Infrastructure Engineer


This repo has a flask file hello.py that will respond with a "Hello World!"

https://hello-world-jnpzfv3gtq-uc.a.run.app/

The architecture chosen was Cloud Run. 

The reason to choose Cloud Run is because it automatically scales, and its ability to easily run docker images.

The version in this repo only deploys to Cloud Run but the objective, time permitting was to deploy things such as:

* Cloud Armor
* Cloud Logging
* VPC Setup 
* Load Balancing

Initially I run into issues getting the Workload Identity Provider to work correectly with GCP and I was able to resolve it by applying the correct permissions. But it bit into the time that could have been allocated to create the Terraform files.

With this setup I am showing:

1. Best Practices in authenticating to GCP via Workload Identity Provider. Keyless authentication. 
2. A CI/CD pipeline that builds and pushes a sample Hello World dockerfile in Flask.
3. The ability to run connect Github Actions to Terraform 
4. The CI/CD pipeline deploys the image to Cloud Run.
5. Using Secrets.

Improvements to be made on top of this:

1. Terraform files to deploy Cloud Run and associated infrastructure. 
2. A Cloud Run service only lives in a single region, so for a multi-region setup we will need to deploy the same container in multiple regions.
3. Cloud Run gives a service a publicly available .run.app URL.
However this points to a single Cloud Run service, and for a multi-region set we will need multiple services.
4. We could create a Global Load Balancer that uses Serverless Network Endpoint Groups (NEGs) as backend.
5. Enable Cloud CDN for even faster loading times
