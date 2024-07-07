# mongoDB-Jenkins

1. GitHub hook trigger for GITScm polling
a. Create hyperlinks between your Jenkins projects and GitHub
b. Trigger a job when you push to the repository by groking HTTP POSTs from post-receive hook and optionally auto-managing the hook setup.
c. Report build status result back to github as Commit Status (documented on SO)


2. Poll SCM
Poll SCM provides a mechanism in Jenkins that periodically checks the changes that are made in the source code repository. When any changes are detected, Jenkins triggers the build and also facilitates continuous integration and automated testing. It ensures that the changes in the code are consistently integrated and tested, which also helps developers get quick feedback and make changes in case of any bugs.

The polling process compares the current state of the repository with the previous state to identify any changes. This is very useful in scenarios where continuous integration is required, and where builds have to be triggered automatically when any changes are pushed into the repository.