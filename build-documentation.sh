#!/bin/bash

xcodebuild docbuild -scheme SwiftHelpers-Package \
    -destination generic/platform=iOS \
    OTHER_DOCC_FLAGS="--transform-for-static-hosting --hosting-base-path SwiftHelpers-Package"
