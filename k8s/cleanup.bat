
rem cleanup resources
kubectl delete services keras-service
kubectl delete deployments keras-deployment

rem cleanup the container image
minikube ssh "/home/docker/Kaggle-Walmart-fcst-tensorflow/docker/container.sh CLEANUP"

rem remove link
minikube ssh "rm /home/docker/Kaggle-Walmart-fcst-tensorflow"

exit /B 0
