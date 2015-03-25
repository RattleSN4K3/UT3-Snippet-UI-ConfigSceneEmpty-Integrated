XUIConfigEmptyInt - Integrated empty config Scene 
==========================

Test mutator for an integrated config scene (but without any content). This is a very basic setup to create a configurable mutator without the need of an extra package.

# Compiling

The mutator comes with all the needed files. Before the code can be compiled, the engine must be aware of the installed source files and the source files must be placed into the correct folder.

## Setup

For referencing purpose, `%basedir%` would be the local profile folder `%userprofile%\Documents\My Games\Unreal Tournament 3\UTGame`

- Download the [latest source files](/../../archive/master.zip)
- Extract the zipped source files
- Create a folder named `XUIConfigEmptyInt` into the source folder `%basedir%\Src`
- Copy/symlink the **`Classes`** folder of the source files into `%basedir%\Src\XUIConfigEmptyInt`
- Copy/symlink `Config\UTXUIConfigEmptyInt.ini` to `%basedir%\Src\Config`

And finally add the package to the compiling packages of the engine.

- Open `%basedir%\Config\UTEditor.ini`
- Search for the section `[ModPackages]`
- Add **`ModPackages=XUIConfigEmptyInt`** at the end of the section
(before the next section starts)

## Make

Compile the packages with:
`ut3 make`

As the script ini file references assets from the same package by strings, and these cannot be created during the compiling, these need to be inserted manually.

- Open the UT3 editor (by `ut3 editor`)
- Open the package `%basedir%\Unpublished\CookedPC\Script\XUIConfigEmptyInt.u` in the ***Generic Browser*** window
- Create a new assert (*File* -> *New*)
 - Package: `XUIConfigEmptyInt`
 - Name: `Config`
 - Select **UIScene** as *Factory*
 - Choose `XEmptyConfigIntUI` as *UISceneClass*
- Close the editor and save the package

## Testing

Copy/move `%basedir%\Unpublished\CookedPC\Script\XUIConfigEmptyInt.u` to the public script folder `%basedir%\Published\CookedPC\Script\` and run the game.

Without copying/moving the file, the game must be started with the *UseUnpublished* command line argument:
`ut3 -useunpublished`

# License
Available under [the MIT license](http://opensource.org/licenses/mit-license.php).

# Author
RattleSN4K3

