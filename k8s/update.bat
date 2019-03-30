
kubectl scale deployment keras-deployment --replicas 0

rem create the containers
minikube ssh "/home/docker/Kaggle-Walmart-fcst-tensorflow/docker/container.sh BUILD"

kubectl scale deployment keras-deployment --replicas 1

exit /B 0

