Star Wars Jedi Knight II dedicated server for Linux.
Version 1.04b (this binary requires the pak files from the 1.03 and 1.04 patches)


With much gratitude to James Drews (drews@engr.wisc.edu) for compiling this 
and sorting out the problems.

The 1.04a binary is not compiled staticly to improve compatibility with 
newer libc releases. Because of this, the libcxa.so.1 library is included in 
the 1.04b archive file.

Updated Binary includes fixes for:
Protocol changed to prevent confusion attempting to connect to previous versions.
( you must install the 1.03 and 1.04 patches first to get the new pk3 files! )


previous releases:
1.03a-fix com_error on very large packet fragments
1.03- compatible with pc point release 1.03 ( you must install assets2.pk3 from the 1.03 patch!)
c)-empty connect msg exploit crash
b)-random server crashes
  -ERROR: opStack corrupted in compiled code

This archive file contains:
  readme.txt      : The file your reading now
  jk2ded          : Jedi Knight 2 linux binary
  libcxa.so.1     : Intel compiler shared library (redistributable)
  base/server.cfg : example config file

Install instructions:

On your linux box:
-copy the libcxa.so.1 file to your system's share library directory
  (usually /usr/lib)
-Mark the file readable by everyone. example:
    chmod a+r /usr/lib/libcxa.so.1
-Create a directory for the game. example: 
    mkdir /usr/local/games/jk2
-Copy the linux binary into this directory
-Mark the file as executable. example:
    chmod a+x /usr/local/games/jk2/jk2ded
-Create the 'base' directory. example:
     mkdir /usr/local/games/jk2/base
   Note, YES, it is case sensitive and the program will look for all lower case
-Copy the files from the base directory of the retail CD into the
   base directory you just created. In particular, the assets0.pk3 and assets1.pk3.
And assets2.pk3 from the 1.03 patch!

Running the dedicated server:

-"cd" into the game directory (cd /usr/local/games/jk2)
-Run the binary. An example is:
    ./jk2ded +exec server.cfg

This example assumes you have created a configuration file called server.cfg and placed
it into the "base" directory.

By default, the server will run in "internet" play mode and advertise its presense to 
the master server. If you wish to have a LAN play only server, change your server 
config to set dedicated 1, or change the command line to be:
    ./jk2ded +set dedicated 1 + exec server.cfg


Notes:
-The game will look in the base directory or home directory of the user running the 
  program (~/.jk2/)
-If you set the logfile option to 1, the files will be stored in your user
  home directory in ~/.jk2/base/
-Running the jk2ded binary under FreeBSD use
   brandelf -t Linux /path/to/jk2/jk2ded
-If you are running the server behind a NAT box, any client machine also behind
 that NAT box will not be able to see the server listed in the "internet" list.
 Switch to the local lan setting instead.


© 2002 LucasArts Entertainment Company LLC, © 2002 Lucasfilm Ltd 
& ™ or ® as indicated. All rights reserved. Used Under Authorization. 
LucasArts and the LucasArts logo are registered trademarks of Lucasfilm Ltd. 
Activision is a registered trademark of Activision, Inc. © 2002 Activision, Inc. 
This product contains software technology licensed from Id Software, Inc. Id Technology © 1999-2002 Id Software, Inc. 
All other trademarks and trade names are the properties of their respective owners.
