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
    package.path = package.path .. ";mods/LogLevels/scripts/lib/?.lua"
    require("PrintLog")

This will give Every print function in the file a standard level of INFO.
Then from console or ingame, set the consolelevel with the command:

    /consolelevel warning

as WARN is lower then INFO, anything in that file is now silenced in the console, but still being printed to the server log.

__Advanced Usage:__
Open any file you wish to silent output from, say a mod you have installed.
once open, drag and drop these couple of lines at the top of the file:

    --LogLevels - Dirtyredz|David McClain
    package.path = package.path .. ";mods/LogLevels/scripts/lib/?.lua"
    require("PrintLog")
    local logLevels = require("LogLevels")

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
Then from console or ingame, set the consolelevel with the command:

    /consolelevel trace

Will display every print in the example above
while:

    /consolelevel warning

will only display prints with warning and below.

Thats it, your now using LogLevels giving you a clean and easy to read console.


## DEFAULTS
___

Here are the default LogLevels (can be configured to what you want)

__off__

__fatal__

__error__

__warning__

__info__

__debug__

__trace__

__all__


## Downloads
___
https://github.com/dirtyredz/LogLevels/releases/download/1.1.0/LogLevels.v1.1.0.zip

https://github.com/dirtyredz/LogLevels/releases/download/1.0.1/LogLevels.v1.0.1.zip


## Changelog
___
1.1.0
  -Inserting Level type infront of message instead on concatenate, fixs erros when printing nil variables.
  -introduced new command /consolelevel, now when wanting to adjust whats shown on the console, use /consolelevel
  /loglevel will now restrict whats printed to the log in the case the console message is not printed

  ie:

  /consolelevel warning
  /loglevel debug

  the console will only show console messages warning,error,fatel
  and the serverLog will show debug,info,warning,error,fatel

  note:
  setting the /loglevel lower then /consolelevel, will have no effect since all console messages are automatically sent to the server log (this cannot be changed)

1.0.1
  -Moved files to a new directory, in preperation for steam support of mods.


## GITHUB
___
https://github.com/dirtyredz/LogLevels


## DONATE
___
Wanna show your appreciation?
http://dirtyredz.com/donate

Become a patron:
https://www.patreon.com/Dirtyredz


## MY OTHER MODS
___
__DSM_
-A project dedicated to server deployment, management, and exposing features to a web interface.
http://www.avorion.net/forum/index.php/topic,3507.0.html

__Reganerative Asteroid Fields__
-Regenerates designated sectors, and randomly appearing sectors, of minable asteroids.
http://www.avorion.net/forum/index.php/topic,3055.0.html

__MoveUI__
-A mod for adding custom UIs to the screen.
http://www.avorion.net/forum/index.php/topic,3834.0.html

__Subspace Corridor__
-A modders recources, designed to mimick /teleport, due to server commands not being available through the api.
http://www.avorion.net/forum/index.php/topic,3148.0.html

__Dirty Buoy's__
-Allows players to spawn Navigational and Sentry Buoys, More to come soon.
-These buoys have unique features players cant get in normal game play, for example: Navigational buoys are invincible and cannot be moved. A great way to mark a distance wreckage or minarable rich asteroid field.
--Rusty Servers only at the moment.

__LogLevels__
-LogLevels gives modders the ability to set levels for there print functions.
-Aswell as allowing server owners to clean up there consoles, making it easier to read.
http://www.avorion.net/forum/index.php/topic,3799.0.html

__NoNeutralCore__
-A small script for stopping the creation of neutral zones inside the core.
http://www.avorion.net/forum/index.php/topic,3472.0.html

__DirtyCargoExtender__
-Extends the cargo hold of any NPC station discovered with low cargo holds.
--Patreon Members only

__DirtySecure__
-A mod which assigned PVP or PVE sectors based on distance from core.
-Provides Offline Protection to Players ships.
-Provides protection for NPC stations.
--Rusty Servers only at the moment

__Reganerative Claimable Asteroids__
-A mod which respawns claimable asteroids, when theyve been moved or turned into a mine.
-Also will unclaim or unsell an asteroid after a configured number of days
-Keeps the galaxy alive, providing claimable asteroids for new players.
--Rusty Servers only at the moment

__Death Info__
-Used to track cords of a players death point, assigning player values, for other mods to use.
--Rusty Servers only at the moment.

__/Back__
-A command using DeathInfo and Subspace Corridor, to teleport a players drone BACK to there death point.
--Rusty Servers only at the moment.

__DistCore HUD__
-Displays distance to the core on the players hud
--Rusty Servers only at the moment.

Any mod listed as Rusty Servers only, are live and active on the Rusty Servers.
Want the mod for your server? Lets talk and ill see about releasing the mod to you/public.
Not all mods on Rusty will remain there, they will eventually be released to the public.
