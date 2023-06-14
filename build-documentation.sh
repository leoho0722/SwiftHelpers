#!/bin/bash

# 用來檢查是否有產生 Swift-DocC Documentation 路徑
isDirectoryExist=false

# 檢查是否有產生 Swift-DocC Documentation，有的話將 isDirectoryExist 設為 true，沒有的話，則設為 false
test -d ./.build/plugins/Swift-DocC/outputs && isDirectoryExist=true || isDirectoryExist=false

echo $isDirectoryExist

# 如果 Swift-DocC Documentation 路徑存在的話，則將原先 ./.build 資料夾移除
if [ isDirectoryExist ]; then
    rm -rf ./.build
fi

swift package generate-documentation --include-extended-types

# 用來檢查專案根目錄底下，是否已存在 Documentation 資料夾
isDocumentationFolderExist=false

# 檢查是否有產生 Documentation 資料夾，有的話將 isDocumentationExist 設為 true，沒有的話，則設為 false
test -d ./Documentation && isDocumentationFolderExist=true || isDocumentationFolderExist=false

echo $isDocumentationFolderExist

pwd

# 如果 Documentation 資料夾不存在的話，則在專案根目錄底下建立
if [ $isDocumentationFolderExist == false ]; then
    mkdir ./Documentation
fi

cp -r ./.build/plugins/Swift-DocC/outputs/ ./Documentation