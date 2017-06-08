# JavaScript

We use eshint to lint JS and have adopted the ESLint recommended defaults (with some additions)


## Installing the linter

The easiest way is to use the tool in the root of this repository:
eshint
```
./install.sh
```


## Configuring PHPStorm

1. Open rpeferences
2. Go to `Languages & Frameworks › JavaScript › Code Quality Tools › ESLint`
3. Enable the tool
4. Configure the tool to use the global binaries
5. Ensure that "Automatic" is set for configuration file
5. Click OK

## Configuring Sublime

1. Ensure Package Control is installed
2. Ensure `SublimeLinter` package is installed
3. Install `SublimeLinter-contrib-eslint` package
