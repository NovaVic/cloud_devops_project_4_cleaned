[![NovaVic](https://circleci.com/gh/NovaVic/cloud_devops_project_4_cleaned.svg?style=svg)](https://circleci.com/gh/NovaVic/cloud_devops_project_4_cleaned)

## Project Overview

In this project, we are trying to operationalize a Machine Learning Microservice API. Original code was
Pulled from Noah Gift's repo and then adjusted.

That original repo had pre-trained, `sklearn` model that has been trained to predict housing prices 
in Boston according to several features, such as average rooms in a home and data about highway access,
teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle,
on [the data source site](https://www.kaggle.com/c/boston-housing). 
This project tests a student's ability to operationalize a Python flask app—in a provided file, 
`app.py`—that serves out predictions (inference) about housing prices through API calls. 
This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

The project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project you will:
* Test your project code using linting
  make lint
* Complete a Dockerfile to containerize this application
 In ./Dockerfile
* Deploy your containerized application using Docker and make a prediction
  docker run -p 8000:80 sk_clouddevops_project4 (in ./run_docker.sh)

* Improve the log statements in the source code for this application
  Added two additional logging statements (of info category) in ./app.py
* Configure Kubernetes and create a Kubernetes cluster
  Installed Kubernetes, Minikube and then did
  minikube start --disk-size=10000


* Deploy a container using Kubernetes and make a prediction
  (In ./run_kubernetes.sh)
  kubectl run sk-clouddevops-project4 --image=$dockerpath --port=80 
  kubectl port-forward sk-clouddevops-project4 8000:80
  ./make_prediction.sh
* Upload a complete Github repo with CircleCI to indicate that your code has been tested
  https://github.com/NovaVic/cloud_devops_project_4_cleaned
  https://app.circleci.com/pipelines/github/NovaVic/cloud_devops_project_4_cleaned

You can find a detailed [project rubric, here](https://review.udacity.com/#!/rubrics/2576/view).



---

## Setup the Environment

* Create a virtualenv and activate it
 cd DevOps_Microservices && project-ml-microservice-kubernetes
 python3 -m venv ~/.devops
 source ~/.devops/bin/activate
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`
4. testing: ./make_prediction.sh
### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl
