# AppToggle.spoon
A Spoon to toggle focusing and hiding of applications with keyboard shortcuts.

## Usage
Clone this repo to any location or download AppToggle.spoon.zip from the release page.

Double click on the cloned repo/ unzipped .spoon file and Hammerspoon will load it automatically.

Add your shortcut map to ~/.hammerspoon/init.lua

For example,
``` lua
local app_mod = "alt"
local apps = {
  { app_mod, "z", "Typora" },
  { app_mod, "x", "PDF Expert" },
  { app_mod, "c", "Google Chrome" },
  { app_mod, "v", "WeChat" },
  { app_mod, "b", "Finder" },
  { app_mod, "d", "Dash" },
  { { "alt", "shift" }, "c", "Calendar" }
}

hs.loadSpoon("AppToggle")
spoon.AppToggle:setMap(apps)
```
Then reload init.lua in Hammerspoon.

This would set `Option` + `c` to toggle showing and hiding of Chrome, etc.
