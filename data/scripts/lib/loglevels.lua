--Customizable,Add or remove what you want.
--I suggest leaving, off/info/all
--info is the default level chosen, when a print function doesnt have a level assigned.
local logLevels = {
  off = 0,
  fatal = 100,
  error = 200,
  warning = 300,
  info = 400,
  debug = 500,
  trace = 600,
  all = 999
}
return logLevels
