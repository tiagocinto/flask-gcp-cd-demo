# Python CD Demo  
This is a sample repo to assist continuous delivery (CD) projects using python over GCP cloud environment. Based on https://github.com/noahgift/flask-hello-coursera and https://github.com/GoogleCloudPlatform/python-docs-samples/tree/main/appengine/standard_python3/hello_world.  

### Briefings  ###
For better integration, use Google Cloud Shell (create a new project). 

### Running this project  ###
1- clone this repo;  
2- cd into the repo dir: cd /home/user/python-cd-demo;  
3- create a virtualenv: virtualenv ~/.[venv_name];  
4- source the virtualenv (activate it): source ~/.[venv_name]/bin/activate;  
5- let make install packages: make install install-local install-test;  
6- additionally, perform other make actions: make lint test format;  
7- run flask server: python main.py;  
8- test with: http://127.0.0.1:8080/ or http://127.0.0.1:8080/echo/hello.  

### Deploying on GCP  ###
1- run: gcloud app deploy;  
2- choose the region you want to deploy;  
2- confirm info;  
3- test deployed version: https://[project_id].uc.r.appspot.com/.

### Configuring CD  ###
1- go to 'Cloud Build' service on GCP;  
2- go to 'Triggers' and 'new trigger';  
3- provide a name a set the event to: push to a branch;  
4- on source, connect to this project's repo (GitHub authentication needed);  
5- install Cloud Build utilities and connect;  
6- confirm trigger;  
7- on 'Settings', enable 'App Engine' and 'Service Accounts' status.
