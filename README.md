# qb-methcar

# Description

Craft meth in a van anywhere in around Los Santos. As you are cooking, answer a questionaire. How you answer will dictate the quantity of meth you recieve after your cook. If you are not careful, some of your decisions could result in your meth lab exploding or even you being snitched on. [Questionaire Preview](https://i.imgur.com/WkRxIb9.png)

# Doesn't include the shop ped featured in the preview video.

- [Preview](https://www.youtube.com/watch?v=DxdVkQSX17I) (Old preview)

## To do list
    
    • Add ps-dispatch support
    • Better questionaire randomization
    • Convert default notify to ox_lib notify

## Dependencies
- [qb-core](https://github.com/qbcore-framework/qb-core)
- [ox_target](https://github.com/overextended/ox_target)
- [ox_lib](https://github.com/overextended/ox_lib)

## Optional
- [gfa-items](https://github.com/Griefa/gfa-items)

## Credits & Support

🔗 > [Samuel's Developments](https://discord.gg/Tu94MCDDEa) (Original Creator)

🔗 > [qb-methcar](https://github.com/Samuels-Development/qb-methcar) (Original Repo)

🔗 > [Maliwan Developments](https://discord.gg/9tqRdwsVpW) (Support Discord)

## Installation

### Manually
1. Place the qb-methcar folder anywhere into your resources folder and ensure/start it in your server/resources.cfg

2. Add these items to your qb-core/shared/items.lua
#

	["acetone"] 				 	 = {["name"] = "acetone", 			  			["label"] = "Acetone", 					["weight"] = 5000, 		["type"] = "item", 		["image"] = "acetone.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "It is a colourless, highly volatile and flammable liquid with a characteristic pungent odour."},
  
	["methlab"] 				 	 = {["name"] = "methlab", 			  			["label"] = "Lab", 						["weight"] = 15000, 	["type"] = "item", 		["image"] = "lab.png", 					["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "A portable Meth Lab"},
  
	["lithium"] 				 	 = {["name"] = "lithium", 			  			["label"] = "Lithium", 					["weight"] = 1000, 		["type"] = "item", 		["image"] = "lithium.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Lithium, something you can make Meth with!"},

If you are using ox_inventory use these:

#
    	['acetone'] = {
		label = 'Acetone',
		weight = 200,
		stack = true,
		close = false,
		description = "It is a colourless, highly volatile and flammable liquid with a characteristic pungent odour."
	},
    	['lithium'] = {
		label = 'Lithium',
		weight = 100,
		stack = true,
		close = false,
		description = "Lithium, something you can make Meth with!"
	},
    	['methlab'] = {
		label = 'Portable Methlab',
		weight = 5000,
		stack = true,
		close = false,
		description = "A portable Meth Lab. marked for Police Seizure"
	},



3. You can find the images [here](https://github.com/Griefa/gfa-items)

5. Done! :)
