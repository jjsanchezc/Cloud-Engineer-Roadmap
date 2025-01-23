# Kubernetes

## Kubernetes objects

Are persistent entities in the Kubernetes systems. Kubernetes uses these entitites to represent the state of the cluster

### Understanding Kubernetes objects

These objects can describe:
- what containerized apps are running (and on which nodes)
- The resources available to those apps
- The policies around how those apps behave, such as restart policies, upgrades, and fault-tolerance

The kubernetes system willl constantly work to ensure that the object exists.
 

### Describing a kubernetes object

When creating an object in Kube, you must provide the object spec that describes its desired state, as well some basic info about the object( 
such as name), that information must be marked as a JSON in the request body, Most often, you provide the information to kubectl in a file known 
as **manifest** , By convention, manifests are YAMLS

application/deployment.yml:

	apiVersion: apps/v1
	kind: Deployment
	metadata:
	  name: nginx-deployment
	spec:
	  selector:
	    matchLabels:
	      app: nginx
	  replicas: 2 # tells deployment to run 2 pods matching the template
	  template:
	    metadata:
	      labels:
	        app: nginx
	    spec:
	      containers:
	      - name: nginx
	        image: nginx:1.14.2
	        ports:
	        - containerPort: 80


One way to create a Deployment using a manifest file like the one above is to use the kubectl apply command in the kubectl command-line interface, passing the .yaml file as an argument. Here's an example

	$ kubectl apply -f https://k8s.io/examples/application/deployment.yaml

The output will be:

	deployment.apps/nginx-deployment created

### Required fields

in the manifest you'll need to set values like:
- `apiVersion`: which version of the kubernetes API will you use
- `kind`: what kind of object will create
- `metadata`: Data that helps uniquely indentify the object, including a: `name` or `UID` and optional `namespace`
- `spec`: What state you desire for the object

**Note**:The precise format of the object spec is different for every Kubernetes object, and contains nested fields specific to that object.

## Server side field validation

The API server offers server side field validation that detects unrecognized or duplicate fields in an object. It provides all the functionality 
of `kubectl --validate`on the server side
The kubectl tool uses the `--validate` flag to set the level of field validation
 	

## Workloads

A workload is an app running on kubernetes,whether your workload is a single component or several that work together, on Kubernetes you run it inside a set of **pods**, a pod represents a set of running containers on a cluster

Pods have a defined lifecycle
You don't need to manage each Pod directly. Instead, you can use workload resources that manage a set of pods on your behalf. These resources 
configure controllers that make sure the right number of the right kind of pod are running, to match the state you specified.

## Kubernetes clusters

Kubernetes coordinates a highly available cluster of computers that are connected to work as a single unit
A kubernetes cluster consists of two types of resources:

- Control Plane: coordinates the cluster
- Nodes: are the workers that run applications

Nodes are VM or physical computer that serves as a worker machine in a kubernetes cluster


If you want to control the master node you'll need kubectl

## Kubectl

To connect to master node 1st need to have the base kubeconfig.yaml

	$ nano kubeconfig.yaml
	$ export KUBECONFIG=kubeconfig.yaml
	
now you're ready to connect into your nodes

	$ kubectl run <pod_name> --image=<imagename>:<image_tag> --port=<port>

to get into the pod's logs

	$ kubectl describe pods

to delete a pod
	$ kubectl delete pods <pod_name>

to modify a deployment

	$ kubectl edit deployment <deployment_name>

to get all info from pods

	$ kubectl get pods -o wide

Every pod have a private IP, to expose you need a service (it's other manifest):<service_name>.yaml

	apiVersion: v1
	kind: Service
	metadata:
		name: <service_name>
		annotations:
			service.beta.kubernetes.io/linode-loadbalancer-throttle:"4"
		labels:
			app: <service_name>
	spec:
		type: LoadBalancer
		ports:
		- name:http
		  port: 80
		  protocol: TCP
		  targetPort: 80
	  	selector:
	  	  app: <pod_name> # those pods who are called that way will be in the load balancer

	  	sessionAffinity: None

To get every service created:

	$ kubectl get services

to describe (more info) of every service:
	$ kubectl describe services
