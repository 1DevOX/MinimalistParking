ESX = exports["es_extended"]:getSharedObject()

local GetCurrentResourceName = GetCurrentResourceName()
local ox_inventory = exports.ox_inventory

-- These stashes are all created on resource start
local stashes = {
	{
		-- Owned stash
		id = 'AirBox1',
		label = 'AirBox',
		slots = 50,
		weight = 100000,
	},
	{
		-- Personal stashes
		id = 'AirBox2',
		label = 'AirBox',
		slots = 50,
		weight = 100000,
	},
}

AddEventHandler('onServerResourceStart', function(resourceName)
	if resourceName == 'ox_inventory' or resourceName == GetCurrentResourceName then
		for i=1, #stashes do
			local stash = stashes[i]
			ox_inventory:RegisterStash(stash.id, stash.label, stash.slots, stash.weight, stash.owner, stash.jobs)
		end
	end

	Wait(500)

	local inventory = ox_inventory:GetInventory({id = 'example_stash_3', owner = 115})
	ox_inventory:AddItem(inventory.id, 'water', 1)
end)