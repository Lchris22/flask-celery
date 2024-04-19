

# Build the flask app image
podman build . -f flask1.Dockerfile --tag flask-app:1.0


# Run the flask app container
podman run -it --name flask-app -p 5000:5000 flask-app:1.0

#command to delete all containers which start with flask-app
podman rm $(podman ps -a | grep flask-app | awk '{print $1}')

#command to delete all none images
podman rmi $(podman images | grep none | awk '{print $3}')


