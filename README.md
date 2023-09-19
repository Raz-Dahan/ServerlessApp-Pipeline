# Serverless CI/CD with Google Cloud Run

This project is a side project aimed at providing a simple example of a serverless application deployment using Google Cloud Run. It utilizes Docker containers for the application, with a CI/CD (which also serverless thanks to GitHub) process for seamless deployment. This project is a part of the learning journey into the serverless world.

## Overview

The project implements a CI/CD process that includes building a Docker image, testing the application, and deploying it on Google Cloud Run as serverless services.

## Usage

1. **Import this Repository and Add Your Application:**

   Import this repository to your repository and place your application code in the `app/` directory. Ensure your application adheres to the necessary structure and dependencies for successful deployment on Google Cloud Run.

2. **Set up GitHub Secrets:**
   Change the relevant variables the `.yaml` files:
   - `SERVICE_NAME`: The name for the Cloud Run service.
   - `TEST_SERVICE_NAME`: The name for the testing Cloud Run service.

   Add the following relevant variables to your GitHub repository secrets:

   - `DOCKER_USERNAME`: Docker repository username.
   - `DOCKER_PASSWORD`: Docker repository password.
   - `GCP_SERVICE_ACCOUNT_KEY`: Google service account credentials.
   - `PROJECT_ID`: Google Cloud Platform (GCP) Project ID.
   - `REGION`: Google Cloud Run deployment region.

   If needed add the app variables in your GCP secrets:

   - `API_KEY`: API key for the application.

3. **Ensure GCP Service Account Permissions:**

   Ensure that the GCP service account being used for this deployment has the "Cloud Run Admin" role assigned to it for proper authorization.

3. **Manual Trigger (Initial Setup):**

   Execute the `initial.yaml` workflow manually to set up the initial deployment and ensure the Docker repository has at least one image.

4. **Activate the Workflow:**

   Push any changes to the main branch to automatically trigger the CI/CD process using GitHub Actions.
