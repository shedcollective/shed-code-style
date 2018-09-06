# CSS

We use sass-lint from Sass Tools to lint PHP. Currently configs must be defined at a project level.


## Installing the linter

The easiest way is to use the tool in the root of this repository:

```
./install.sh
```


## Configuring PHPStorm

1. Open preferences
2. Install the `Sass Lint` plugin by `Ido` and restart PHPStorm
3. Enable `Sass Lint` in preferences
4. Set the paths to `node` and `sass-lint`
5. Let `sass-lint` search for the `.sass-lint.yml` file
6. Click OK

## Configuring Sublime

1. Ensure Package Control is installed
2. Ensure `SublimeLinter` package is installed
3. Install `SublimeLinter-contrib-sass-lint` package

## Configuring Atom

1. On the CLI type `apm install linter-sass-lint`
