# Jenkins

Automation platform where I can:
 - build
 - test
 - deploy

## infrastructure

### Master server

The master server controls pipelines, schedules builds to agents

### agents

Run the build in their workspace

#### Agent Types

`Permanent`: Dedicated servers to run jobs`
`Cloud`: Dynamic agenst spun up on demand

## Build types

`Freestyle build`: 
 - Simplest method
 - Simple as a shellscript

`Pipelines`:
 - Uses Groovy syntax
 - have different stages

## First Project
After installing and running jenkins in docker

 1. create a freestyle project
 2. 