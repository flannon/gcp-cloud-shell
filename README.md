Get the project id,

    GCP_PROJECT_ID=$(gcloud config list --format='value(core.project)')



## Pitching to yourself
Build a new cloud shell image then boot the image and log in.

Try HELM_VERSION="v3.8.0"
3.5.0 should be supported


You can run cloud build directly on a Dockerfile without using a cloudbuild file
    gcloud builds submit --tag us-east4.pkg.dev/${GCP_PROJECT_ID}/cloud-shell-repo/cloud-shell-image:latest


Customize cloudshell container.

  https://cloud.google.com/shell/docs/customizing-container-image


  gcloud source repos list

  export CUSTOM_ENV_REPO_ID=cloud-shell-custom-images
  export CUSTOM_ENV_PROJECT_ID=gke-fed-dev-e9a1

  cloudshell env build-local

https://cloud.google.com/build/docs/build-debug-locally
https://cloud.google.com/shell/docs/customizing-container-image

  359  cloudshell env build-local
  360  vi Dockerfile
  361  git add Dockerfile
  362  git commit -m "Add comment"
  363  git push
  365  gcloud env build-local
  371  cloudshell env push


[![Open in Cloud Shell](https://gstatic.com/cloudssh/images/open-btn.svg)](https://shell.cloud.google.com/cloudshell/editor?cloudshell_git_repo=https://github.com/flannon/gcp-cloud-shell.git/+/master:)
