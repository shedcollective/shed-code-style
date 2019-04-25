# Shed's Coding Standards and Linters

This repository explains our coding standards as well as provides instructions for configuring linters and beautifiers for your IDE.



## Linters

Linters point out mistakes and issues with your code and can be helpful to spot issues and bugs before they appear.

- [PHP](php/README.md)
- [JS](js/README.md)
- [CSS/SASS](sass/README.md)

If you're looking for a quick fix and want to install all the linters you can use:

```
./install.sh
```

This will ensure that all the linters are installed correctly and symlink the configuration files to the right place. Click through to the above documentation for instructions on how to configure your IDE.



## Beautifiers

Remembering code style is boring, beautifiers automatically enforce code formatting.

### PHPStorm

Right now, you'll need to manually configure the code formatter:

1. Open preferences
2. Navigate to code style
3. Import config from `./phpstorm/codestyle/Shed.xml`
4. Ensure `Shed` is the selected sceheme for the project
5. Click OK

In addition, ensure that the correct settings are set for new projects:

1. File › Other Settings › Preferences for new projects
2. Navigate to code style
3. Set `Shed` as the scheme
4. Click OK

This will run when you invoke code formatting (cmd+alt+l). To do this on save do the following:

1. Install `Save Actions` plugin
2. Configure at `Preferences › Other Settings › Save actions`
3. Check `Activate save actions on save`
4. Enable formatting options
5. Click OK

Remember and do the same in  "Preferences for new projects"


### Sublime

> @todo - research plugins and method to automate the configuration, if possible


### Atom

Atom's atom-beautify package can be used to automatically format on save.

To install, go to your CLI and enter:

`apm install atom-beautify`

To configure, enter preferences with `cmd + ,` and find `atom-beautify` in the list.

Make sure `Beautify Entire File On Save` is checked.

Go to each of the `Javascript`, `PHP` and `Sass` headers individually and make sure `Beautify on Save` is checked.

- In `Javascript`, use `ESLint Fixer` as the default beautifier
- In `PHP`, use `PHP-CS-Fixer` as the default beautifier
- In `Sass`, use `SassConvert` as the default beautifier
