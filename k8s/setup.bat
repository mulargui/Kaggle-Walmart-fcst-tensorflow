
rem edit this if you cloned the repo in a different directory
minikube ssh "ln -s /c/Users/Mauricio/Documents/Kaggle-Walmart-fcst-tensorflow /home/docker/Kaggle-Walmart-fcst-tensorflow"

rem create the containers
minikube ssh "/home/docker/Kaggle-Walmart-fcst-tensorflow/docker/container.sh BUILD"

rem create resources
kubectl create -f %~dp0.\keras-service.yaml
kubectl create -f %~dp0.\keras-deployment.yaml

exit /B 0
