# rdydev
![develop](https://github.com/m0xfff/rdydev/actions/workflows/rspec.yml/badge.svg?branch=develop)
[![Ruby Style Guide](https://img.shields.io/badge/code_style-standard-brightgreen.svg)](https://github.com/testdouble/standard)

Welcome to our Rails onboarding repository! This repository has been created to help developers build skills with the tools & the software development lifecycle they'll be using in their role.

For the onboarding project, you'll be building your own student management system (SMS). The project has been divided into *issues*, issues are used to track progress and divide work among team members.

Each issue should provide some *background* on why it is important & what the desired outcome is, it should outline the specific *requirements* of the issue i.e. the work to be done, & finally the specific *acceptance criteria* that needs to be met in order for the issue to be considered complete.

## Table of contents

- [Prerequisites](#prerequisites)
- [Getting started](#getting-started)
  - [Configuration](#configuration)
  - [Opening the project in Github Codespaces](#opening-the-project-in-github-codespaces)
    - [with Visual Studio Code on Desktop](#with-visual-studio-code-on-desktop)
  - [Kickoff](#kickoff)
- [Working in the project](#working-in-the-project)
  - [Github Actions](#github-actions)
- [Basic Rails Tools](#basic-rails-tools)
  - [Bundler](#bundler)
  - [Rails](#rails)
  - [Rake](#rake)
  - [MySQL](#mysql)
- [Advanced Tools](#advanced-tools)
  - [Language Servers](#language-servers)
  - [Profiling Tools](#profiling-tools)
    - [Memory profiling](#memory-profiling)
    - [Call-stack profiling](#call-stack-profiling)

## Prerequisites

Before you begin working on the onboarding project, you will need to have the following:

- An SSH key: You will need to have created an SSH key and added it to your Github account. If you haven't done this yet, you can [follow these instructions](https://docs.github.com/en/authentication/connecting-to-github-with-ssh) to generate a new SSH key and add it to your Github account.
- A signing key: You will also need to have configured a signing key for the purpose of signing your commits. If you haven't done this yet, you can [follow these instructions](https://docs.github.com/en/authentication/managing-commit-signature-verification) to generate a new GPG key and configure it for use with Github.

Once you have completed these steps, you are ready to begin working on the onboarding project!

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

### Kickoff

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

## Basic Rails Tools

The development environment includes several basic Rails tools that you will be using frequently as you work on the project. These tools include:

### Bundler

Bundler is a dependency manager for Ruby that is used to manage gem dependencies. Bundler ensures that all the gems required by the project are installed and available, and can be used to manage gem versions as well. The development environment will install the projects dependencies for you with Bundler, but as you work on the project you will encounter Bundler as you manage the gems required for your code.

### Rails

Rails is a web application framework written in Ruby that provides a set of tools and conventions for building web applications. Some of the basic Rails commands you will be using include:

- `bin/rails server` - Starts the development server
- `bin/rails console` - Opens a console for interacting with the application
- `bin/rails generate` - Generates new files (models, controllers, views, etc.)

Follow through to the [Ruby on Rails Guides (v4.2)](https://guides.rubyonrails.org/v4.2/) for more information about Rails & it's features.

### Rake

Rake is a build automation tool that is used to automate tasks in the onboarding project. Rake is often used to run database migrations, seed the database with initial data, and perform other tasks related to the development environment. Some of the common Rake tasks you will be using include:

- `bin/rake db:migrate` - Runs database migrations
- `bin/rake db:seed` - Seeds the database with initial data
- `bin/rake spec` - Runs all tests in the project
- `bin/rake --tasks` - Lists all available rake tasks

### MySQL

The project provides for you a MySQL server that has already been configured to be used by the rails application in your development environment. You can access the MySQL server by running the `mysql` command, which will open up the MySQL console using the development database by default, pass the `-D` option to specify another database.

These are just a few of the basic Rails tools you will be using in the onboarding project. Each of these tools is designed to make your development experience smoother and more productive, and will help you build a solid foundation in Ruby on Rails.

## Advanced Tools

The development environment includes several advanced tools that are designed to help you write better code, find performance bottlenecks, and adhere to best practices. Some of these tools include:

### Language Servers

A Language Server is a tool that provides real-time analysis of your code as you write it, highlighting errors and suggesting improvements. The development environment includes the Ruby LSP, which is a language server for Ruby that provides advanced code analysis and navigation features. The Standard Ruby gem is also included, which is a code style linter that checks your code for adherence to Ruby coding standards. When used in conjunction with a code editor that supports language servers, such as Visual Studio Code, these tools can help you write better, cleaner code and adhere to best practices.

### Profiling Tools

Profiling tools are used to identify performance bottlenecks and areas of your code that are slow or resource-intensive. The development environment includes several profiling tools that you can use to analyze your code and identify areas for improvement. One of these tools is Rack Mini Profiler, which is a small profiling tool that can be used to measure the performance of your code and identify areas that are slow or resource-intensive. Rack Mini Profiler is integrated with the project and can be accessed by adding the `?pp=profile` parameter to the end of any request URL.

#### Memory profiling
The dev environment includes the `memory_profiler` gem, which is a tool that can be used to identify memory leaks and excessive memory usage in your code. By analyzing the memory usage of your code as it runs. Memory Profiler can be accessed by adding the `?pp=profile-memory` parameter to the end of any request URL.

Memory Profiler can be used on its own to profile arbitrary blocks of code:
```
report = MemoryProfiler.report do
  # code to be profiled
end

report.pretty_print
```

This code will run the specified code and generate a report that shows the memory usage for each line of code. By analyzing this report, you can identify areas where memory usage is excessive and make changes to optimize the code. Overall, memory_profiler is a powerful tool that can help you write more efficient, high-performance code.

#### Call-stack profiling
The development environment includes the `stackprof` gem, which is a tool that can be used to analyze the performance of your code from the call-stack, Stack Profiler can help you identify areas where your code is spending a lot of time and make optimizations to improve performance. Stack Profiler can be used by adding the `?pp=flamegraph` parameter to the end of any request URL.

Stack Profiler can be used on its own to profile arbitrary blocks of code as well:
```
StackProf.run(mode: :cpu, interval: 5000) do
  # code to be profiled
end
```
