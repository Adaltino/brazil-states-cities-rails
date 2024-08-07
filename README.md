# Brazilian Cities Project

## Overview
This is a Ruby on Rails application for managing Brazilian cities. The application allows users to search for cities by state and name. It uses PostgreSQL as the database and Docker for containerization.

## Prerequisites
Before you begin, ensure you have the following installed:

- Docker (version 27.1.1 or later)
- Docker Compose (version 2.29.1 or later)
- Ruby (version 2.7.0)
- Rails (version 5.x)
- PostgreSQL (version 16.3)

## Setup

### Clone the Repository
```bash
git clone https://github.com/yourusername/brazilian-cities-project.git
cd brazilian-cities-project
```

### Build Docker Images
Build the Docker images for the application and database:
```bash
docker compose build
```

### Setup the Database
Create the database and run migrations:
```bash
docker compose run web rake db:create
docker compose run web rake db:migrate
docker compose run web rake db:seed
```
### Running the Project
```bash
docker compose up
```
The application will be accessible at http://localhost:3000.

### Running Tests
```bash
docker compose run web bundle exec rspec
```
### Testing Configuration
- RSpec is used for testing.
- Tests are located in the spec directory.

### Test Coverage
To check test coverage, you might need to set up additional gems or configuration. The basic rspec command should give you an overview of the test results.
