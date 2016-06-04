**Embed PowerShell scripts inside batch scripts (.cmd/.bat)**

````bat
:: Call ps2cmd.cmd with the filename of the PowerShell script to convert
ps2cmd.cmd example.ps1
:: A example.ps1.cmd will be created
````

## Example

With a PowerShell script `example.ps1`:
````powershell
Write-Host Hello World!
````

We run ps2cmd:
````bat
> ps2cmd.cmd example.ps1
````

And get `example.ps1.cmd`:
````bat
SET PS2CMD_ARGS=%* & PowerShell.exe -NoProfile -EncodedCommand VwByAGkAdABlAC0ASABvAHMAdAAgACQAZQBuAHYAOgBQAFMAMgBDAE0ARABfAEEAUgBHAFMAOwAgAGYAdQBuAGMAdABpAG8AbgAgAHMAdABlAHAAMgAgAHsAIABXAHIAaQB0AGUALQBIAG8AcwB0ACAASABlAGwAbABvACAAVwBvAHIAbABkACEADQAKACAAfQANAAoAcwB0AGUAcAAyACAAJABlAG4AdgA6AFAAUwAyAEMATQBEAF8AQQBSAEcAUwA=
````

## Usages

Used in [Nerven.Bygge](https://github.com/Nerven/Bygge/) to get the complete setup script in [a single, easily executable, script file](https://github.com/Nerven/Bygge/commit/92c64b1359a27c89947b1fcc25f8a6e49d3002aa).

## License

The MIT License (MIT) (see LICENSE.txt)
