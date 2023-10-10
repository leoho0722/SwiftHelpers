#!/bin/bash

xcodebuild docbuild -scheme SwiftHelpers \
    -destination generic/platform=iOS \
    OTHER_DOCC_FLAGS="--transform-for-static-hosting --hosting-base-path SwiftHelpers"
