# Application for Software Engineering DevOps (Module 4)

## Brief

Node application is lightweight and is easy to use as sample application for this DevOps module. Please read on to learn about the basic (Terminal) command to build, test and run a Node application.

## Commands

### npm install

The `npm install` is the first command you will use to install all dependencies specified in the `package.json` file [here](./package.json).

### npm run test

The `npm run test` is the command to run the test script specified in the `package.json` file. This command in turns run the `jest` command.

Sample Snippet from package.json:

```json
  "scripts": {
    "start": "node index.js",
    "test": "jest" // the test script
  }
```

### npm run start

The `npm run start` command will start the application. By default, it will use the `PORT` number specified in the `.env` file [here](./.env). Upon successful start, you will see the logging message:

```sh
Listening to port <port number>
```

```text
1. Execute Build and Test Jobs:

- You have two jobs for this: build and test.
- The build job compiles and installs dependencies for the Node.js application.
- The test job runs tests for the Node.js application.

2. Configure a Job for Building and Pushing Docker Image:

- You have a job called build-and-push for this purpose.

3. Push Docker Image to Docker Hub:

- The build-and-push job uses Docker commands to build and push the Docker image to Docker Hub.

4. Conditional Execution:

- The build-and-push job is set up to execute only when the test job is successful.
- This is achieved through the requires attribute in the workflow configuration.

5. Use Docker Orbs:

- You are using the Docker orb (circleci/docker@2.1.4) to simplify Docker-related commands and configurations.
- Setup Environmental Variables for Docker Hub Login:
    - Environmental variables DOCKER_LOGIN and DOCKER_PASSWORD are set up to contain the Docker Hub username and password.

```

```text
Orbs: Orbs are reusable configurations. Here, you're using orbs for Node.js, Docker, and Snyk.

Build Job (build): Compiles and installs dependencies for the Node.js application.

Test Job (test): Runs tests for the Node.js application.

Scan Job (scan): Scans the Docker image for vulnerabilities using Snyk and pushes the Docker image to Docker Hub.

Build-and-Push Job (build-and-push): Builds the Docker image and pushes it to Docker Hub, triggered only if the previous jobs (test and scan) are successful.

Workflow (simple_workflow): Defines the sequence of jobs to be executed. Jobs are triggered based on branch and dependencies.
```
