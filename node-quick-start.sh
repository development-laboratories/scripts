#!/bin/bash
#
# create a new file named dnode.sh and paste this file into it,
# then run the following command in the terminal:
#
#     bash dnode.sh
#

# add node_modules to .gitignore
echo "node_modules/" > .gitignore
echo "dist/" >> .gitignore

# create subdirectories
mkdir src
mkdir dist
mkdir test

# create a hellow world typescript file
echo "console.log('Hello World');" > src/index.ts

# create tsconfig.json
echo '{
  "compilerOptions": {
    "outDir": "./dist/",
    "target": "es5",
    "module": "commonjs",
    "strict": true,
    "esModuleInterop": true
  },
  "exclude": [
    "node_modules/**/*"
  ]
}' > tsconfig.json

# create package.json
echo '{
  "name": "dnode",
  "version": "1.0.0",
  "main": "index.js",
  "scripts": {
    "test": "echo \"Error: no test specified\" && exit 1",
    "build": "tsc",
    "start": "node dist/index.js"
  },
  "keywords": [],
  "author": "",
  "license": "ISC",
  "dependencies": {
    "@types/jest": "^29.5.1",
    "jest": "^29.5.0",
    "ts-jest": "^29.1.0",
    "typescript": "^5.0.4"
  },
  "description": ""
}' > package.json

# build & start the project
npm install
npm run build
npm run start
