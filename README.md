# audacity_installer

audacity_installer downloads and installs Audacity and the following
Audacity plugins:

  1. LADSPA plug-ins
  2. LAME plug-in
  3. FFMPEG plug-in

audacity_installer looks in the directory where audacity_installer.exe is for
any files it needs before attempting to download them. If it does download a
file, it will attempt to save a copy of the file in this same directory.

audacity_installer adds the installation directory (typically
`C:\Program Files\Audacity`) to your PATH environment variable.

Note: you are responsible to verify that each program you install using
audacity_installer is designed to work in your environment.
If you are unsure, then please visit http://audacity.sourceforge.net/ for more
information.

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

The following options are planned to be implemented in a future version:

/SAVEDIR d Save downloaded files in directory d
/PROXY     Set proxy settings
/RETRIES n Number of times to retry each download before reporting failure
           (default: 5)
/ALLUSERS  Install icons for all users
           This is the default if the user is an administrator
/USER      Install icons for the current user only
           This is the default if the user is not an administrator
/VERSION   Show the version and quit
/?         Show this help message and quit

If you encounter any errors, please post your installation log to smithii.com.
The installation log will normally be created in
C:\Program Files\Audacity\install.log
````

## Contributing

To contribute to this project, please see [CONTRIBUTING.md](CONTRIBUTING.md).

## Bugs

To view existing bugs, or report a new bug, please see the [issues](/issues) page for this project.

## License

This project is [MIT licensed](LICENSE).

## Changelog

Please see [CHANGELOG.md](CHANGELOG.md) for the version history for this project.

## Contact

This project was originally developed by [Ross Smith II](mailto:ross@smithii.com).
Any enhancements and suggestions are welcome.
