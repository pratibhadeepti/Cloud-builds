## Google Cloud Build builder images with Gradle 5.1 and java 11 support 


This repository contains source code for official builders used with the [Google
Cloud Build API](https://cloud.google.com/cloud-build/docs/).

Pre-built images are available at `gcr.io/cloud-builders/...` and include:

*   `bazel`: runs the [bazel](https://bazel.io) tool
*   `curl`: runs the [curl](https://curl.haxx.se) tool
*   `docker`: runs the [docker](https://docker.com) tool
*   `dotnet`: run the [dotnet](https://docs.microsoft.com/dotnet/core/tools/) tool
*   `gcloud`: runs the [gcloud](https://cloud.google.com/sdk/gcloud/) tool
*   `git`: runs the [git](https://git-scm.com/) tool
*   `go`: runs the [go](https://golang.org/cmd/go) tool
*   `gradle`: runs the [gradle](https://gradle.org/) tool
*   `gsutil`: runs the [gsutil](https://cloud.google.com/storage/docs/gsutil) tool
*   `kubectl`: runs the [kubectl](https://kubernetes.io/docs/user-guide/kubectl-overview/) tool
*   `mvn`: runs the [maven](https://maven.apache.org/) tool
*   `npm`: runs the [npm](https://docs.npmjs.com/) tool
*   `wget`: runs the [wget](https://www.gnu.org/software/wget/) tool
*   `yarn`: runs the [yarn](https://yarnpkg.com/) tool

Builders contributed by the public are available in the [Cloud Builders
Community
repo](https://github.com/GoogleCloudPlatform/cloud-builders-community).

To file issues and feature requests against these builder images,
[create an issue in this repo](https://github.com/GoogleCloudPlatform/cloud-builders/issues/new).
If you are experiencing an issue with the Cloud Build service or
have a feature request, e-mail google-cloud-dev@googlegroups.com
or see our [Getting support](https://cloud.google.com/cloud-build/docs/getting-support)
documentation.
 ```cd javac
 gcloud builds submit .
cd ../gradle
gcloud builds submit .
```
Images can be found in container registry and can be used for building the code like
```steps:
- name: 'gcr.io/$PROJECT_ID/gradle:latest'
  args: ['build']
```
