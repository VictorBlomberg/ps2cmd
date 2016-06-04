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

## License

The MIT License (MIT) (see LICENSE.txt)
