#!/bin/bash

isDocsFolderExist=false

# 檢查專案根目錄下是否已存在 docs 資料夾，有的話將 isDocsFolderExist 設為 true，沒有的話，則設為 false
test -d ./docs && isDocsFolderExist=true || isDocsFolderExist=false

if [ $isDocsFolderExist == false ]; then
    mkdir ./docs
fi

# Convert NetworkHelpers.doccarchive
$(xcrun --find docc) process-archive transform-for-static-hosting ./.build/plugins/Swift-DocC/outputs/NetworkHelpers.doccarchive --output-path ./docs/NetworkHelpers/

# Convert TypeExtensionHelpers.doccarchive
$(xcrun --find docc) process-archive transform-for-static-hosting ./.build/plugins/Swift-DocC/outputs/TypeExtensionHelpers.doccarchive --output-path ./docs/TypeExtensionHelpers/