AppToggle = {
  app_map = {},
}

-- Constructor
function AppToggle:new(o)
  o = o or {}
  self.__index = self
  setmetatable(o, self)
  o.name = "AppToggle"
  o.version = "1.0"
  o.author = "JC <keitokuch@gmail.com>"
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

function AppToggle:toggle_app(app_name)
  local app = hs.application.get(app_name)
  if app ~= nil then
    if app:isFrontmost() then
      app:hide()
    else
      app:activate()
    end
  else
    hs.application.open(app_name)
  end
end

return AppToggle:new() 
