# CI/CD

## GitHub Actions
[web](https://docs.github.com/en/actions/about-github-actions/understanding-github-actions)

### What is?
Platform to automate developer workflows
some automatic actions are executed in response to some events

### Sintaxis Example:

name: [optional] <action_name>

on: [required] //when will the workflow will execute

jobs: [required] // what are the actions that the workflow will be doing\
    build:
        runs-on: [<value_name>](https://docs.github.com/en/actions/using-github-hosted-runners/using-github-hosted-runners/about-github-hosted-runners)
    <br>steps: