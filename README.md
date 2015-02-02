ElasticSearch Control Center Service Template
=============================================

This template and Dockerfile can be used with [Control Center](http://controlcenter.io/) 
to deploy and manage an [ElasticSearch](http://www.elasticsearch.org/) cluster
of any size across any number of physical hosts.

# Building the image
The image has already been built and pushed to [Docker
Hub](https://registry.hub.docker.com/u/iancmcc/elasticsearch/), but you can
also build it yourself:
```
docker build -t MYHUBUSER/elasticsearch .
```
If you do this, don't forget to change the ImageID field in
elasticsearch/service.json to match the image name and tag you used.

# Compiling and adding the template
Add the service template to your Control Center installation:
```
serviced template compile elasticsearch | serviced template add
```

# Deploying
Deploy the application template in the Control Center UI.

# Features

## Virtual Host
The ElasticSearch API is exposed via the ```elasticsearch``` virtual host. Hit
```https://elasticsearch.myhost``` in your browser (you might have to add it to
/etc/hosts or DNS) to access it, or configure a new virtual host in the Control
Center UI.

## Adding nodes to the cluster
Simply edit the service and increase the number of instances in the Control
Center UI. The new nodes will automatically join the cluster.
