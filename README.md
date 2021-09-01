jenkins-lab
-----------

First, launch the jenkins controller:

```
./launch-controller.sh
```

You will be able to access the controller at http://127.0.0.1:8080. At this
point you can set up a user in the Jenkins interface, as well as set up any
build nodes. You are recommended to use `/home/jenkins` as the remote root
directory for any nodes, as this will be mounted as a persistent docker
volume.

Next, copy `credentials.sh.example` to `credentials.sh` and fill in the
username and password you set up in the Jenkins interface.

Finally, you can launch build agents for the nodes you've set up:

```
./launch-agent.sh <node-name>
```
