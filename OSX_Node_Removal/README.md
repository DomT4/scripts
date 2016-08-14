terminatenode.sh
=======

You will need to run ``` chmod +x /path/to/terminatenode.sh ``` for this script to execute. To then execute the script run either ``` sh /path/to/terminatenode.sh ``` or ``` cd ``` into the directory the script is in and then run ``` ./terminatenode.sh ```.

This is an *extremely* methodical script to **completely** purge Node & npm and every file connected to those two environments. The script could be compacted but it is deliberately exploded to enable people to see exactly what the script is doing, and for clarity if any errors are kicked out.

I like to write scripts where people can actually see what's going on. I find it helpful for education and clarity, even if it is more clunky than the traditional couple of compact lines.

This script will remove **everything** about Node & npm, including any npm modules you currently have installed.

This script is only tested on OS X, but theoretically it may well work on Linux as well.

It's MIT Licensed, so feel free to do whatever you wish with it.
