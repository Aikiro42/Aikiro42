```lua
---@diagnostic disable: lowercase-global, undefined-global
-- Requires StarExtensions / oSB
require "/scripts/interp.lua"
require "/scripts/vec2.lua"
function init()
end

local function smoothStep2D(current, target, speed, dt)
  local diff = world.distance(target, current)
  local factor = 1 - math.exp(-speed * dt)
  return vec2.add(current, vec2.mul(diff, factor))
end

function update(dt)
  -- Smoothly interpolate camera position
  camera.override(smoothStep2D(camera.position(), mcontroller.position(), 5, dt), 1)
end
```
