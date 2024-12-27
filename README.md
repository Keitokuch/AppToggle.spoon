# AppToggle.spoon
A Spoon to toggle switching and hiding of Apps on MacOS.

## Usage
Example shortcut mappping in ~/.hammerspoon/init.lua
``` lua
local app_mod = {"alt"}
local apps = {
  { app_mod, "c", "Google Chrome" },
  { app_mod, "b", "Finder" },
  { app_mod, "d", "Dash" },
  { app_mod, "space", "com.googlecode.iterm2" },
  { { "alt", "shift" }, "c", "Calendar" }
}

hs.loadSpoon("AppToggle")
spoon.AppToggle:setMap(apps)
```
Reload config in Hammerspoon.

Example mapping uses `Option + b` to toggle Finder window and `Option + Space` switches to iTerm2 window, etc.
