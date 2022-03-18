Get the project id,

    GCP_PROJECT_ID=$(gcloud config list --format='value(core.project)')



## Pitching to yourself
Build a new cloud shell image then bot the image and log in.

Try HELM_VERSION="v3.8.0"
3.5.0 should be supported


You can run cloud build directly on a Dockerfile without using a cloudbuild file
    gcloud builds submit --tag us-east4.pkg.dev/${GCP_PROJECT_ID}/cloud-shell-repo/cloud-shell-image:latest
