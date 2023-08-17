# WP-CX-iNBestCamp-Serverless
iNBest Camp Serverless Containers and Lambda App

## Technology Stack
1. Docker
2. node / javascript
3. MySQL

## Environment Variable

### Local Environment
- MYSQLDB_USER=
- MYSQLDB_ROOT_PASSWORD=
- MYSQLDB_DATABASE=bezkoder_db
- MYSQLDB_LOCAL_PORT=3306
- MYSQLDB_DOCKER_PORT=3306
- NODE_LOCAL_PORT=80

### Cloud Environment
Secrets

## Running

### Local Configuration

#### Quick Start

```bash
# Run in Docker
docker-compose up
# use -d flag to run in background

# Tear down
docker-compose down

# To be able to edit files, add volume to compose file
volumes: ['./:/usr/src/app']

# To re-build
docker-compose --build
```
### Normal Start
You can start node application with usual 'npm start' command as well.
* Make sure to edit server.js and update the host with your host address. 
* App uses default 3306 database connectivity port.
* Create database with the name 'node_crud'.

"Happy coding :)"