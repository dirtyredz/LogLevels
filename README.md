# LogLevels

![alt text](http://imgur.com/UyQU5y2.png)
___
This mod is designed for Modders and Server owners.

LogLevels gives modders the ability to set levels for there print functions
Aswell as allowing server owners to clean up there consoles, making it easier to read.

Weve been using this mod for several months now on the Rusty Servers, and im starting to see modders implement there own versions of log levels inside thier own scripts.

However these methods are not very clean, and easily used accross multiple mods/files

That is why I have decided to release this mod to the public.

![alt text](http://imgur.com/YP4RuRg.png)
___

As you can see LogLevels has many features.

Let me show you how you can start useing LogLevels in your mod or server today!

## SETUP
___

There are two ways of using LogLevels, Basic and Advanced.

__Basic Usage:__
Open any file you wish to silent output from, say a mod you have installed.
once open, drag and drop these couple of lines at the top of the file:

    --LogLevels - Dirtyredz|David McClain
    package.path = package.path .. ";data/scripts/lib/?.lua"
    require("printlog")

This will give Every print function in the file a standard level of INFO.
Then from console or ingame, set the loglevel with the command:

    /loglevel warning

as WARN is lower then INFO, anything in that file is now silenced in the console, but still being printed to the server log.

__Advanced Usage:__
Open any file you wish to silent output from, say a mod you have installed.
once open, drag and drop these couple of lines at the top of the file:

    --LogLevels - Dirtyredz|David McClain
    package.path = package.path .. ";data/scripts/lib/?.lua"
    require("printlog")
    local logLevels = require("loglevels")

This will give Every print function in the file a standard level of INFO, and give you access to the loglevels table.
Now its time to specify what level you want each print function to be at, hers an example:

    function initialize()
      print('MOD initialize', logLevels.trace)
      local X = 10
      if X >= 10 then
        print('All good, no problems here.', logLevels.debug)
      else
        --Loglevel supports standard print arguments
        print('Weve got an issue, X is:',X, logLevels.warning)
      end
    end

Thats it, now we set the level we wish to display
Then from console or ingame, set the loglevel with the command:

    /loglevel trace

Will display every print in the example above
while:

   /loglevel warning

will only display prints with warning and below.

Thats it, your now using LogLevels giving you a clean and easy to read console.

## DEFAULTS
___

Here are the default LogLevels (can be configured to what you want)

off
fatal
error
warning
info
debug
trace
all

## Downloads
___


## Changelog
___
I dont think there will be much of any changing going on, this is a simple mod.
Although if you have an idea for this mod let me no in a reply, thxs.

## GITHUB
___
https://github.com/dirtyredz/LogLevels

## DONATE
___
Wanna show your appreciation?
http://dirtyredz.com/donate

Become a patron:
https://www.patreon.com/Dirtyredz
