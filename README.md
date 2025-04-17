Infrastructure Engineer


This repo has a flask file hello.py that will respond with a "Hello, world! Using GHA"

The architecture chosen was Cloud Run. 

The reason to choose Cloud Run is because it automatically scales, and its ability to easily run docker images.

The version in this repo only deploys to Cloud Run but the objective, time permitting was to deploy things such as:

* Cloud Armor
* Cloud Logging
* VPC Setup 
* Load Balancing

Unfortunately, I run into issues getting the Github Actions to authenticate to GCP Artifact Registry and this version does not run.

I tried to showcase how to authenticate using the Workload Identity Provider but even following the examples shown online did not yield positive results.

My idea was to have Github Actions ultimately authenticate to Terraform cloud so that all the resources that I mention above could have been created, after the image was built and pushed to Artifact Registry.
