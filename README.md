jenkins-lab
-----------

First, launch the jenkins controller:

```
./launch-controller.sh
```

You will be able to access the controller at http://127.0.0.1:8080. At this
point you can set up a user in the Jenkins interface, as well as set up any
build nodes.

Next, copy `credentials.sh.example` to `credentials.sh` and fill in the Jenkins
username and password.

Finally, you can launch build agents for the nodes you've set up:

```
./launch-agent.sh <node-name>
```
