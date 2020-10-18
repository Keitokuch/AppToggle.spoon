AppToggle = {
  app_map = {},
}

-- Constructor
function AppToggle:new(o)
  o = o or {}
  self.__index = self
  setmetatable(o, self)
  o.name = "AppToggle"
  o.version = "0.1"
  o.author = "keitokuch <keitokuch@gmail.com>"
  return o
end

function AppToggle:setMap(app_map)
  self.app_map = app_map
  for i, map in ipairs(app_map) do
    hs.hotkey.bind(map[1], map[2], function()
      self:toggle_app(map[3])
    end)
  end
end

function AppToggle:toggle_app(appName)
  local app = hs.application.get(appName)
  if app ~= nil then
    if app:isFrontmost() then
      app:hide()
    else
      app:activate()
    end
  else
    hs.application.open(appName)
  end
end

return AppToggle:new() 