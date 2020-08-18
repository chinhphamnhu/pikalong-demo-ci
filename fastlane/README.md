fastlane documentation
================
# Installation

Make sure you have the latest version of the Xcode command line tools installed:

```
xcode-select --install
```

Install _fastlane_ using
```
[sudo] gem install fastlane -NV
```
or alternatively using `brew install fastlane`

# Available Actions
## iOS
### ios test
```
fastlane ios test
```
Run all unit test with Dev environment
### ios deploy_dev
```
fastlane ios deploy_dev
```
Dev: Deploy DEV Environment with internal server for Testers
### ios deploy_staging
```
fastlane ios deploy_staging
```
Staging: Deploy STG Environment for Client and Internal Testing
### ios deploy_appstore
```
fastlane ios deploy_appstore
```
AppStore: Deploy AppStore Environment for end user

----

This README.md is auto-generated and will be re-generated every time [fastlane](https://fastlane.tools) is run.
More information about fastlane can be found on [fastlane.tools](https://fastlane.tools).
The documentation of fastlane can be found on [docs.fastlane.tools](https://docs.fastlane.tools).
