#!/bin/bash

# Copyright 2018 Google, Inc. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

set -o errexit
set -o nounset
set -o pipefail

# Get latest versions of all dependencies.
go get -u

# Fetch dependencies into vendor/
go mod vendor

# These commands need to be in your $PATH
# github.com/mattmoor/dep-collector
# github.com/google/licenseclassifier

dep-collector -check ./cmd/gcs-fetcher
dep-collector -check ./cmd/gcs-uploader

# These require go modules to be turned off to be successfull
GO111MODULE=off dep-collector ./cmd/gcs-fetcher > ./cmd/gcs-fetcher/VENDOR-LICENSE
GO111MODULE=off dep-collector ./cmd/gcs-uploader > ./cmd/gcs-uploader/VENDOR-LICENSE

# Remove tests in vendor/
rm -rf $(find vendor/ -name '*_test.go')
