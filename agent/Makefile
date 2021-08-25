.PHONY: build linux mac win

build:
	docker build -t ${USER}/jenkins-slave .

linux:
	docker run -d --name jenkins-linux-node \
		-e SLAVE_URL=http://192.168.56.101:8080/computer/linux-node/slave-agent.jnlp \
		-e SLAVE_SECRET=28cee5950bef331c69704445b771b64c94e9d3b6a882365d1128cad64a0f9f55 \
		${USER}/jenkins-slave /home/jenkins/launch.sh

mac:
	docker run -d --name jenkins-mac-node \
		-e SLAVE_URL=http://192.168.56.101:8080/computer/mac-node/slave-agent.jnlp \
		-e SLAVE_SECRET=3663029129c3eb3e355326336843d34f6580cceb273b5e66b43a0ecdf40094b4 \
		${USER}/jenkins-slave /home/jenkins/launch.sh

win:
	docker run -d --name jenkins-win-node \
		-e SLAVE_URL=http://192.168.56.101:8080/computer/win-node/slave-agent.jnlp \
		-e SLAVE_SECRET=0f1a214b9e29e75cdb7c4a8b4bb9f0fe627b86301bf97a25b5b5fe4cc61993d5 \
		${USER}/jenkins-slave /home/jenkins/launch.sh
