ESX = exports["es_extended"]:getSharedObject()

_k = Citizen

local id = GetPlayerServerId(PlayerId())
local name = GetPlayerFromServerId(PlayerId())
local playerName = GetPlayerName(PlayerId())
local GetPlayer = GetActivePlayers()
local playerSrc = PlayerPedId(id)
local coords = GetEntityCoords(playerSrc)

local ox_inventory = exports.ox_inventory

exports.ox_target:addBoxZone({
  coords =  vec3(223.4952, -794.283447, 33.13295),
  size = vec3(1, 1, 1),
  rotation = 45,
  debug = drawZones,
  options = {
      {
        name = 'box',
        icon = "fa-solid fa-star",
        label = "AirBox",
        onSelect = function()
          TriggerEvent('AirBox1')
        end
      }
      }
    }
)

exports.ox_target:addBoxZone({
  coords =  vec3(247.513, -775.7894, 33.13295),
  size = vec3(1, 1, 1),
  rotation = 45,
  debug = drawZones,
  options = {
      {
        name = 'box',
        icon = "fa-solid fa-star",
        label = "AirBox",
        onSelect = function()
          TriggerEvent('AirBox2')
        end
      }
      }
    }
)

RegisterNetEvent('AirBox1')
AddEventHandler('AirBox1', function()
    ox_inventory:openInventory('stash', { id = 'AirBox1' })
end)

RegisterNetEvent('AirBox2')
AddEventHandler('AirBox2', function()
    ox_inventory:openInventory('stash', { id = 'AirBox2' })
end)