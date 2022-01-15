#!/usr/bin/env bash

set -x

dotnet new tool-manifest # if you are setting up this repo

sleep 10

echo "Mr Solomon, I am now about to install csharp-ls"

dotnet tool install --local csharp-ls --version 0.1.2

sleep 10

echo "It is now installed. Thank you for your service to our country."
