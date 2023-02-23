# rdydev
![develop](https://github.com/m0xfff/rdydev/actions/workflows/rspec.yml/badge.svg?branch=develop)
[![Ruby Style Guide](https://img.shields.io/badge/code_style-standard-brightgreen.svg)](https://github.com/testdouble/standard)

Welcome to our Rails onboarding project! This project was created to help developers build skills with the tools & the software development lifecycle they'll be using in their role. In this project, you'll be building your own student management system. The project has been divided into **issues**, issues are what we use to track progress and divide work among team members.

Each issue should provide some **background** on why it is important & what the desired outcome is, it should outline the specific **requirements** of the issue i.e. the work to be done, & finally the specific **acceptance criteria** that needs to be met in order for the issue to be considered complete.

## Table of contents

- [Prerequisites](#prerequisites)
- [Getting started](#getting-started)
  - [Configuration](#configuration)
  - [Opening the project in Github Codespaces](#opening-the-project-in-github-codespaces)
    - [with Visual Studio Code on Desktop](#with-visual-studio-code-on-desktop)
- [Working in the project](#working-in-the-project)
  - [Github Actions](#github-actions)

## Prerequisites

Before you begin working on the onboarding project, you will need to have the following:

- An SSH key: You will need to have created an SSH key and added it to your Github account. If you haven't done this yet, you can [follow these instructions](https://docs.github.com/en/authentication/connecting-to-github-with-ssh) to generate a new SSH key and add it to your Github account.
- A signing key: You will also need to have configured a signing key for the purpose of signing your commits. If you haven't done this yet, you can [follow these instructions](https://docs.github.com/en/authentication/managing-commit-signature-verification) to generate a new GPG key and configure it for use with Github.

Once you have completed these steps, you are ready to begin!

## Getting started

To get started, you will need to [fork the repository to your own Github account](https://github.com/m0xfff/rdydev/fork).

### Configuration

Having successfully forked the repository, click on the *Settings* tab and scroll to the *Pull Requests* section. Ensure the options *Allow merge commits*, & *Allow rebase merging* are un-checked. The default commit message for *Allow squash merging* comes down to personal preference, I like *Default to pull request title & description*.

At the bottom of the *Pull Requests* section is an option labelled *Automatically delete head branches*, ensure this option is checked. When checked, branches will be deleted after they've been merged via a Pull Request.

Finally, you'll want to add your mentor as a contributor to your repository. From the *Settings* tab, click the *Collaborators* item under *Access*. From the Collaborators page, add your mentor as a collaborator & grant them the *Write* role.

### Opening the project in Github Codespaces

If you're looking for a quick and easy way to get up and running, you might want to consider opening the project in Github Codespaces. Codespaces is a cloud-based development environment that allows you to quickly spin up a fully-configured development environment without having to install any software on your local machine.

To open the project in Github Codespaces, simply click the "Code" button in the upper right corner of the repository page and select *Create codespace on develop*. This will open the project in a Codespace, where you can start working on it right away.

One of the great things about using Codespaces is that everything is already set up for you, so you don't have to worry about configuring your development environment or installing any software. You can simply start coding and get up to speed quickly.

We highly recommend using Github Codespaces to get started, especially if you're new to Ruby on Rails or if you're just getting started with software development. It's an easy and hassle-free way to get up and running quickly, so you can start learning and building right away!

#### with Visual Studio Code on Desktop

By default, Github Codespaces will open an IDE for you in a browser tab. This is a convenient feature to be sure, but it isn't for everyone. Luckily, you can open your Codespace in Visual Studio Code on desktop, all you need is the Codespaces extension installed on your local. You aren't limited to just vscode either, you can open a Codespace with a number of other tools.

Additionally, you aren't limited to running the project from Codespaces either, the underlying technology Codespaces is using is called *devcontainers*, and there's nothing stopping you from running devcontainers locally if you would prefer.

Hopefully, you've been able to open a development environment without issue & are able to pick up your first issue! Unfortunately accidents do happen, and if you do run into problems as you set things up then don't hesitate to send your mentor a slack.

## Working in the project

To begin work on the project, you need to pick an issue to work on and create a new branch off the `develop` branch using the corresponding issue number at the start of the branch's name. The issues are written as markdown files & can be found in `docs/issues`, the filename of the issue is the issues number

To create a new branch off the develop branch using the issue number in the branch name, you can use the following git command:

```
git checkout -b SMS-<issue-number>-<branch-name> develop
```

This command creates a new branch off the develop branch with the specified name (which includes the issue number and a branch name of your choice), and checks out that branch so you can start making changes.

Once you've made changes to the code, you can add those changes to the staging area & commit the files with a message starting with the issue number and a subsequent description of changes, using the following git command:

```
git add <filename> # adds the specified file to the staging area, so it will be included in the next commit.

git commit -m "SMS-<issue-number> <description of changes>" # creates a new commit with a message
```

Once you're ready to publish your changes to the remote repository (called origin, by default), you can use the following git command:

```
git push -u origin SMS-<issue-number>-<branch-name>
```

> The -u (or --set-upstream) option is used to set the upstream branch for the local branch. When you run git push with the -u option, Git will set the remote branch to track the local branch you're pushing. This means that in the future, you can simply run git push without any additional arguments, and Git will know which branch to push to.

This command publishes the branch to the remote repository, Github, where you can create a Pull Request and have your mentor review your changes.

To create a Pull Request, you can navigate to the repository page and click the "Pull requests" tab. From there, you can create a new Pull Request and assign it to your mentor for review. Your mentor will then review your changes and provide feedback to help you improve your code.

### Github Actions

There are automated tests and checks that run on every Pull Request (PR) to the develop branch. These tests and checks are designed to catch common issues and errors in the code.

When you create a PR, Github Actions will run the project's RSpec tests to ensure that the code works as expected and passes all tests. It will also run the Pronto runners for brakeman, reek, flay, and standard ruby. Each of these runners checks for different things, such as potential security issues, code smells, duplication, and adherence to the project's code style guidelines. If any of these runners fail, the PR will not be able to be merged until the issues are resolved.

By running these checks automatically on every PR, we can catch issues early on in the development process, before they make it into the codebase. This helps to ensure that the code is high-quality, maintainable, and adheres to best practices.
