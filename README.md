# Playwright demo
A small repo to run some basic playwright commands.

### Install dependencies
```
npm install
```

### Run tests locally
Requires a [node](https://nodejs.org/en/download/package-manager) runtime to run via a cli

```
npx playwright test example.spec.ts
```

### Show report from last run
```
npx playwright show-report
```

### Run tests in a container
Alternatively tests can be run them in a container. This repo uses an [image that's maintained by Playwire and hosted by Microsoft](https://mcr.microsoft.com/en-us/product/playwright/about) in their artefact registry

As a prerequisite you'll need a container orchestration service e.g. [Rancher Desktop](https://rancherdesktop.io/) or [Docker Desktop](https://www.docker.com/products/docker-desktop/)

You'll also need the Docker CLI which you can get from [Homebrew](https://formulae.brew.sh/formula/docker), [Chocolaty](https://community.chocolatey.org/packages/docker-cli) or another package manager or option of your choice.

After that you need to run the following commands to build the image then run the tests
```
docker build -t playwright-docker .

docker run playwright-docker:latest npx playwright test
```

### Generate snapshots
Before snapshot testing we need to generate the static images our test will compare against
```
npx playwright test snapshot.spec.ts --update-snapshots
```

### Run snapshot tests
```
npx playwright test snapshot.spec.ts
```