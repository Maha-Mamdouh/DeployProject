# Hosting a Full-Stack Application

<img src="hosting.png" alt="Hosting App" width="100" height="100">

### **This project is about deploying a sample application (Udagram - an Image Filtering application, that allows users to register and log into a web client provided by Udacity) using AWS services.**

[![CircleCI](https://circleci.com/gh/Maha-Mamdouh/DeployProject.svg?style=svg&circle-token=67c047b2d3c2c7fb9aef51b37c9e3ff7ffbcc9a8)](https://app.circleci.com/pipelines/github/Maha-Mamdouh/DeployProject)

[![Maha-Mamdouh](https://circleci.com/gh/Maha-Mamdouh/DeployProject.svg?style=svg)](https://app.circleci.com/pipelines/github/Maha-Mamdouh/DeployProject)

---
## Table of contents

- [Hosting a Full-Stack Application](#Hosting-a-Full-Stack-Application)
  - [Table of contents](#table-of-contents)
  - [Prerequisites](#Prerequisites)
  - [AWS services](#AWS-services)
  - [CircleCI](#CircleCI)
  - [Environment properties](#Environment-properties)
  - [Endpoints](#Endpoints)
  - [Local Run](#Local-Run)
  - [Credits](#Credits)
---
## Prerequisites
[(Back to top)](#table-of-contents)

To follow the steps of this project, You should have to install some tools.
the following tools:

 | Git | PostgreSQL | NodeJS | Ionic | AWS account|
 | ----- | :----: |:--------:| :--------:| :--------:| 

For more information, see [Docs/dependencies.md](/Docs/dependencies.md).

---
## AWS services
[(Back to top)](#table-of-contents)

In this project we take a newly developed Full-Stack application and deploy it to a cloud service provider so that it is available to customers by using aws services including:

* `RDS` <img src="https://openclipart.org/download/317123/1553118841.svg" alt="RDS" width="45" height="45">

* `S3 buckets` <img src="https://freesvg.org/img/1554216196.png" alt="s3" width="50" height="50">

* `Elastic Beanstalk` <img src="https://pragmaticintegrator.files.wordpress.com/2016/08/aws_simple_icons_networking_amazonroute53-svg.png" alt="s3" width="50" height="50">

For more inforamtion, see [Infrastructure.md](/Docs/Infrastructure.md).

---
## CircleCi
[(Back to top)](#table-of-contents)

To create pipeline, i registered with CircleCI and created a new project in CircleCI using my GitHub account. and finally updated  [CircleCI Config File](.circleci\config.yml) by adding three jobs:

 | Build | Deploy | Unit test|
 | ----- | :----: |:--------:| 

For detatils about workflows, see  [pipeline.md](/Docs/pipeline.md) .

---
## Environment properties
[(Back to top)](#table-of-contents)

Provided below a sample of the required Environment variables

| Name                   |           Value                   |
| --------------------   | :-------------------------------: | 
|`AWS_ACCESS_KEY_ID`     |            *********              | 
| `AWS_BUCKET`           |  'arn:aws:s3:::myawsbucket85'     |
| `AWS_DEFAULT_REGION`   |           'us-east-1'             | 
| `AWS_PROFILE`          |          'default'                |
| `AWS_REGION`           | 'us-east-1'                       | 
| `AWS_SECRET_ACCESS_KEY`| ********                          | 
| `CHROME_BIN`           | '/usr/bin/google-chrome'          | 
| `JWT_SECRET`           | 'mysecretstring'                  | 
| `POSTGRES_DB`          | 'postgres'                        | 
| `POSTGRES_HOST`        | 'database-1.cr2vy4rzfmwm.us-east-1.rds.amazonaws.com' | 
| `POSTGRES_PASSWORD`    | 'myPassword'                        | 
| `POSTGRES_USERNAME`    | 'postgres'                          | 
| `url`                  | 'http://localhost:8100' (Local only)| 


---
## Endpoints
[(Back to top)](#table-of-contents)

* Visit the http://udagram-api-dev22222222.us-east-1.elasticbeanstalk.com/api/v0/feed in your web browser to verify that the application is running. You should see a JSON payload.

* Visit http://myawsbucket85.s3-website-us-east-1.amazonaws.com in your web browser to verify that the application is running. You should see a web interface.

see [screenshot folder](./screenshot) for exmaples.

---
## Local Run

To confirm the project is working locally, Follow these steps 

1. Install frontend dependencies:

        npm run frontend:install

2. Install api dependencies

        npm run api:install

3. Lint the frontend:

        npm run frontend:lint

4. Build the frontend app:

        npm run frontend:build

5. Build the backend API

        npm run api:build

6. Start the frontend app locally:

        npm run frontend:start
7. Start the api locally:

        npm run api:start
    
8. Deploy Api and front 

        npm run deploy

9. Run unit tests for frontend:

        npm run frontend:test
see [package.json](/package.json) for more info.     

## Credits

[(Back to top)](#table-of-contents)
