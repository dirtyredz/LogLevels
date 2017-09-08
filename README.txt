[center][b][size=32pt]LogLevels[/size][/b][/center]

[center][img]http://imgur.com/UyQU5y2.png[/img][/center]
[hr]
This mod is designed for Modders and Server owners.

LogLevels gives modders the ability to set levels for there print functions
Aswell as allowing server owners to clean up there consoles, making it easier to read.

Weve been using this mod for several months now on the Rusty Servers, and im starting to see modders implement there own versions of log levels inside thier own scripts.

However these methods are not very clean, and easily used accross multiple mods/files

That is why I have decided to release this mod to the public.

[center][img]http://imgur.com/YP4RuRg.png[/img][/center]
[hr]

As you can see LogLevels has many features.

Let me show you how you can start useing LogLevels in your mod or server today!

[b][size=24pt]SETUP[/size][/b]
[hr]
Make sure to move the files inside the zip to your server, properly.
If you have a modified server.lua, just grab the few lines out of my file and place in yours.

There are two ways of using LogLevels, Basic and Advanced.

[b]Basic Usage:[/b]
Open any file you wish to silent output from, say a mod you have installed.
once open, drag and drop these couple of lines at the top of the file:

    [code]
    --LogLevels - Dirtyredz|David McClain
    package.path = package.path .. ";mods/LogLevels/scripts/lib/?.lua"
    require("PrintLog")
    [/code]

This will give Every print function in the file a standard level of INFO.
Then from console or ingame, set the loglevel with the command:

    [code]
    /loglevel warning
    [/code]

as WARN is lower then INFO, anything in that file is now silenced in the console, but still being printed to the server log.

[b]Advanced Usage:[/b]
Open any file you wish to silent output from, say a mod you have installed.
once open, drag and drop these couple of lines at the top of the file:

    [code]
    --LogLevels - Dirtyredz|David McClain
    package.path = package.path .. ";mods/LogLevels/scripts/lib/?.lua"
    require("PrintLog")
    local logLevels = require("LogLevels")
    [/code]

This will give Every print function in the file a standard level of INFO, and give you access to the loglevels table.
Now its time to specify what level you want each print function to be at, hers an example:

    [code]
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
    [/code]

Thats it, now we set the level we wish to display
Then from console or ingame, set the loglevel with the command:

    [code]
    /loglevel trace
    [/code]

Will display every print in the example above
while:

    [code]
    /loglevel warning
    [/code]

will only display prints with warning and below.

Thats it, your now using LogLevels giving you a clean and easy to read console.


[b][size=24pt]DEFAULTS[/size][/b]
[hr]

Here are the default LogLevels (can be configured to what you want)

[b]off[/b]

[b]fatal[/b]

[b]error[/b]

[b]warning[/b]

[b]info[/b]

[b]debug[/b]

[b]trace[/b]

[b]all[/b]


[b][size=24pt]Downloads[/size][/b]
[hr]
[url=https://github.com/dirtyredz/LogLevels/releases/download/1.0.1/LogLevels.v1.0.1.zip]LogLevels v1.0.1[/url]


[b][size=24pt]Changelog[/size][/b]
[hr]
--1.0.1  Moved files to a new directory, in preperation for steam support of mods.


[b][size=24pt]GITHUB[/size][/b]
[hr]
https://github.com/dirtyredz/LogLevels


[b][size=24pt]DONATE[/size][/b]
[hr]
Wanna show your appreciation?
http://dirtyredz.com/donate

Become a patron:
https://www.patreon.com/Dirtyredz


[b][size=24pt]MY OTHER MODS[/size][/b]
[hr]
[spoiler]
[b]DSM[/b]
-A project dedicated to server deployment, management, and exposing features to a web interface.
http://www.avorion.net/forum/index.php/topic,3507.0.html

[b]Reganerative Asteroid Fields[/b]
-Regenerates designated sectors, and randomly appearing sectors, of minable asteroids.
http://www.avorion.net/forum/index.php/topic,3055.0.html

[b]MoveUI[/b]
-A mod for adding custom UIs to the screen.
http://www.avorion.net/forum/index.php/topic,3834.0.html

[b]Subspace Corridor[/b]
-A modders recources, designed to mimick /teleport, due to server commands not being available through the api.
http://www.avorion.net/forum/index.php/topic,3148.0.html

[b]Dirty Buoy's[/b]
-Allows players to spawn Navigational and Sentry Buoys, More to come soon.
-These buoys have unique features players cant get in normal game play, for example: Navigational buoys are invincible and cannot be moved. A great way to mark a distance wreckage or minarable rich asteroid field.
--Rusty Servers only at the moment.

[b]LogLevels[/b]
-LogLevels gives modders the ability to set levels for there print functions.
-Aswell as allowing server owners to clean up there consoles, making it easier to read.
http://www.avorion.net/forum/index.php/topic,3799.0.html

[b]NoNeutralCore[/b]
-A small script for stopping the creation of neutral zones inside the core.
http://www.avorion.net/forum/index.php/topic,3472.0.html

[b]DirtyCargoExtender[/b]
-Extends the cargo hold of any NPC station discovered with low cargo holds.
--Patreon Members only

[b]DirtySecure[/b]
-A mod which assigned PVP or PVE sectors based on distance from core.
-Provides Offline Protection to Players ships.
-Provides protection for NPC stations.
--Rusty Servers only at the moment

[b]Reganerative Claimable Asteroids[/b]
-A mod which respawns claimable asteroids, when theyve been moved or turned into a mine.
-Also will unclaim or unsell an asteroid after a configured number of days
-Keeps the galaxy alive, providing claimable asteroids for new players.
--Rusty Servers only at the moment

[b]Death Info[/b]
-Used to track cords of a players death point, assigning player values, for other mods to use.
--Rusty Servers only at the moment.

[b]/Back[/b]
-A command using DeathInfo and Subspace Corridor, to teleport a players drone BACK to there death point.
--Rusty Servers only at the moment.

[b]DistCore HUD[/b]
-Displays distance to the core on the players hud
--Rusty Servers only at the moment.

Any mod listed as Rusty Servers only, are live and active on the Rusty Servers.
Want the mod for your server? Lets talk and ill see about releasing the mod to you/public.
Not all mods on Rusty will remain there, they will eventually be released to the public.
[/spoiler]
