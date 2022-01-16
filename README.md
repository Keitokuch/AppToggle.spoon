# AppToggle.spoon
A Spoon to toggle activation and hiding of applications with keyboard shortcuts.

## Usage
Clone this repo to any location or download AppToggle.spoon.zip from the release page.

Directly open the cloned repo or the unzipped .spoon file and the Spoon will be automatically loaded by Hammerspoon.

Add your shortcut map to ~/.hammerspoon/init.lua

For example,
``` lua
local app_mod = "alt"
local apps = {
  { app_mod, "c", "Google Chrome" },
  { app_mod, "v", "WeChat" },
  { app_mod, "b", "Finder" },
  { app_mod, "d", "Dash" },
  { app_mod, "space", "iTerm" },
  { { "alt", "shift" }, "c", "Calendar" }
}

hs.loadSpoon("AppToggle")
spoon.AppToggle:setMap(apps)
```
Reload init.lua in Hammerspoon.

With this setting, pressing `Option + c` will toggle the showing and hiding of Chrome window and `Option + <space>` will toggle iTerm2 window, etc.
