# JavaScript

We use eshint to lint JS and have adopted the ESLint recommended defaults (with some additions)


## Installing the linter

The easiest way is to use the tool in the root of this repository:
```
./install.sh
```


## Configuring PHPStorm

1. Open rpeferences
2. Go to `Languages & Frameworks › JavaScript › Code Quality Tools › ESLint`
3. Enable `Automatic ESLint configuration`
4. Click OK

## Configuring Sublime

1. Ensure Package Control is installed
2. Ensure `SublimeLinter` package is installed
3. Install `SublimeLinter-contrib-eslint` package

## Configuring Atom

1. On the CLI type `apm install linter-eslint`
