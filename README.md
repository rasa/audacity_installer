# audacity_installer [![Flattr this][flatter_png]][flatter]

Download and install Audacity and the following Audacity plugins:

  1. LADSPA plug-ins
  2. LAME plug-in
  3. FFMPEG plug-in

audacity_installer looks in the directory where audacity_installer.exe is for
any files it needs before attempting to download them. If it does download a
file, it will attempt to save a copy of the file in this same directory.

audacity_installer adds the installation directory to your PATH environment variable.
On 32-bit systems, this directory is usually `C:\Program Files\Audacity`.
On 64-bit systems, this directory is usually `C:\Program Files(x86)\Audacity`.

## Usage

````
audacity_installer [options]

Options:
/S         Install the application silently with the default options selected
/D=path    Install into the directory 'path' (default is
           %ProgramFiles%\Audacity)
/INSTYPE n Where n is a number between 1 and 9:
	1: Audacity and all plug-ins
	2: Audacity only
	3: LADSPA plug-ins
	4: LAME plug-in
	5: FFMPEG plug-in
````

## Contributing

To contribute to this project, please see [CONTRIBUTING.md](CONTRIBUTING.md).

## Bugs

To view existing bugs, or report a new bug, please see [issues](../../issues).

## Changelog

To view the version history for this project, please see [CHANGELOG.md](CHANGELOG.md).

## License

This project is [MIT licensed](LICENSE).

## Contact

This project was created and is maintained by [Ross Smith II][] [![endorse][endorse_png]][endorse]

Feedback, suggestions, and enhancements are welcome.

[Ross Smith II]: mailto:ross@smithii.com "ross@smithii.com"
[flatter]: https://flattr.com/submit/auto?user_id=rasa&url=https%3A%2F%2Fgithub.com%2Frasa%2Faudacity_installer
[flatter_png]: http://button.flattr.com/flattr-badge-large.png "Flattr this"
[endorse]: https://coderwall.com/rasa
[endorse_png]: https://api.coderwall.com/rasa/endorsecount.png "endorse"

