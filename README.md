# AceBook     [![Build Status](https://travis-ci.org/CarlyJ88/Acebook-The-Brave-Bears.png?branch=master)](https://travis-ci.org/CarlyJ88/Acebook-The-Brave-Bears)[![Coverage Status](https://coveralls.io/repos/github/CarlyJ88/Acebook-The-Brave-Bears/badge.svg?branch=master&service=github)](https://coveralls.io/github/CarlyJ88/Acebook-The-Brave-Bears?branch=master&service=github)

### [Welcome](https://github.com/CarlyJ88/Acebook-The-Brave-Bears#welcome-to-bearbook) - [Team](https://github.com/CarlyJ88/Acebook-The-Brave-Bears#team) - [Screenshots](https://github.com/CarlyJ88/Acebook-The-Brave-Bears#screenshots) - [Our Process](https://github.com/CarlyJ88/Acebook-The-Brave-Bears#our-process) - [Quickstart](https://github.com/CarlyJ88/Acebook-The-Brave-Bears#quickstart) - [Testing](https://github.com/CarlyJ88/Acebook-The-Brave-Bears#testing) 

## Welcome to Bearbook

Bearbook is an iteration of the Makers Acebook clone engineering project. To try it out visit at: http://acebook-the-brave-bears.herokuapp.com/

## Team 

* [Yadira Sanchez](https://github.com/yadlra)
* [Nandini Patel](https://github.com/Nandini0206)
* [Carly Jenkinson](https://github.com/CarlyJ88)
* [Steven Hektor](https://github.com/shektor)
* [Scott Hall](https://github.com/HottScall)
* [Oliver Cripps](https://github.com/ocripps24)

## Screenshots

#### Signup
![Signup](https://i.imgur.com/GlcPadc.jpg)
#### Login
![Login](https://imgur.com/IisN4Sf.jpg)
#### Profile
![Profile](https://imgur.com/EZUZ7PS.jpg)

## Our Process

We agreed to follow several High Quality Processes during the 2-week development period. The Agile process was our main focus and we kept the documentation from our daily standups, retrospectives and 2-day sprints in our repository Wiki. 

1. Deployed at: http://acebook-the-brave-bears.herokuapp.com/

2. The card wall is here: https://github.com/CarlyJ88/Acebook-The-Brave-Bears/projects/1

3. Project Wiki: https://github.com/CarlyJ88/Acebook-The-Brave-Bears/wiki

## Quickstart

First, clone this repository. Then:

```bash
> bundle install
> bin/rails db:create
> bin/rails db:migrate

> bundle exec rspec # Run the tests to ensure it works
> bin/rails server # Start the server at localhost:3000
```

To clean the database, run the following command:
```bash
> bin/rails db:migrate:reset
```

## Testing

#### RSpec

`bundle exec rspec` to run all the RSpec feature and unit tests

#### Rubocop

`bundle` (if not installed)    
`rubocop` to run    

#### Test Coverage with Simplecov

Coverage reports are generated every time RSpec tests are run. To view the results:  
`bundle` (if not installed )   
`cd coverage`     
`open index.html`    

## How to contribute to this project
See [CONTRIBUTING.md](CONTRIBUTING.md)
