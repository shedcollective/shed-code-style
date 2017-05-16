# PHP

We use a slightly modified version of the PSR-2 standard in that we have relaxed a few of the sniffs.

## Exclusions

The following sniffs are **removed** from the PSR-2 standard to allow for vertical whitespace:

- `Squiz.WhiteSpace.ControlStructureSpacing.SpacingAfterOpen`
- `PSR2.ControlStructures.SwitchDeclaration.BodyOnNextLineCASE`
- `PSR2.ControlStructures.SwitchDeclaration.BodyOnNextLineDEFAULT`

We encourage using a [reasonable] amount of vertical space in control structures. However, if the control structure is small then removing spaces is encouraged. Example:

```php
if ($bIsLoggedIn) {
    
    $sName = 'Foo',
    $sTime = date('H:i:s');
    echo "Hey, $sName! The time is $sTime";

} else {
    echo "Hey, stranger!"
}
```


## Installing the linter

The easiest way is to use the tool in the root of this repository:

```
./setup-linters.sh
```

## Configuring PHPStorm

1. Open preferences
2. Go to `Languages & Frameworks › PHP › Code Sniffer`
3. Ensure that PHPStorm can see the `phpcs` binary (should exist at `/usr/local/bin/phpcs`)
4. Go to `Editor › Inspections › PHP`
5. Ensure `PHP Code Sniffer validation` is checked
6. Set Severity to `Warning: All scopes`
7. Check `Show warnings as "Error"`
8. Set coding standard to "Shed" (you may need to refresh the list)
9. Click OK

## Configuring Sublime

1. Ensure Package Control is installed
2. Ensure `SublimeLinter` package is installed
3. Install `SublimeLinter-phpcs` package
