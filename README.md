# Terman
Terman (terminal + pacman), is an old pacman clone project which was originally made for a programming tutorial series (It was abandonned). If anyone is willing to translate the code's names for functions, variables, classes, etc. from french to english and/or continue the project into something more than an unfinished demo, it would be great. Please contact me on the Boo discord or open an issue if you're willing to take ownership of this repo.
## Windows Environment Setup
To get Terman development operational on Windows, follow these steps:

1. Download the latest version of boo from https://github.com/boo-lang/boo/releases/tag/unstable, use boo-latest.zip  
2. Before unzipping the contents of boo-latest.zip, right click on the Zip file in windows explorer and activate "Properties".  
3. In the properties window that appears, at the bottom there is a section called "Security" that has the warning: *This file came from another computer and might be blocked to help protect the computer.*  
4. Check the [  ] Unblock checkbox to clear the Security warning and secret file-stream tag.  
5. Unzip boo-latest.zip into a directory of choice: *C:\\Boo\\Boo-Latest\\*  
6. Press the Windows key and search for "Edit the System Environment Variables". Activate the item when the match appears (this will take you to the dialog in Control Panel).  
7. In the System Properties dialog window that comes up, it will already be on the "Advanced" tab, and there will be a button at the bottom for "Environment Variables...". Activate that button to launch the control panel for it.  
8. In the next dialog that comes up, select the Path variable, then click "Edit..." for the User variables for «username». (You may also do this at a System level instead if you prefer, but you may need to reboot to allow this to take effect.)  
9. In the next dialog that comes up, click "New", and edit the new list entry, adding in the path where you unzipped boo-latest.zip (ex. *C:\\Boo\\Boo-Latest\\*)  
10. Click "OK" through all open dialogs to return to your desktop.  
11. Download SharpDevelop from https://sourceforge.net/projects/sharpdevelop/files/SharpDevelop%204.x/4.4/ and run the executable installer.
12. During installation, set File Associations to link Boo Projects to SharpDevelop 4.4; the others are optional and do not need to be installed. Installing the others may also cause issues with VS Code / Visual Studio installations that you may have.
13. You may launch SharpDevelop and open the Terman.sln file, or right click on Terman.sln and activate "Open With...", then navigate to the installation binary at ""%PROGRAMFILES% (x86)\SharpDevelop\4.4\bin\SharpDevelop.exe"
14. Press F8 to build, or Press F5 to build and launch.