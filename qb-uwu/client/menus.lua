
-- target

Citizen.CreateThread(function()
	exports['berkie-target']:AddBoxZone("uwuDuty", vector3(-593.99, -1052.34, 22.34), 1, 1.2, {
		name = "uwuDuty",
		heading = 91,
		debugPoly = false,
		minZ=21.0,
		maxZ=24.6,
	}, {
		options = {
		    {  
			event = "qb-uwu:DutyB",
			icon = "far fa-clipboard",
			label = "Clock On/Off",
			job = "uwu",
		    },
		},
		distance = 1.5
	})

		exports['berkie-target']:AddBoxZone("uwu_tray_1", vector3(-584.1, -1062.1, 22.6), 0.5, 0.7, {
			name = "uwu_tray_1",
			heading = 87.8,
			debugPoly = false,
			minZ=21.1,
			maxZ=22.6,
		}, {
			options = {
			    {
				event = "qb-uwu:Tray1",
				icon = "far fa-clipboard",
				label = "Tray 1",
			    },
			},
			distance = 1.5
		})

	exports['berkie-target']:AddBoxZone("uwu_tray_2", vector3(-584.11, -1059.39, 22.67), 0.5, 0.7, {
		name="uwu_tray_2",
		heading=87.8,
		debugPoly = false,
		minZ=21.1,
		maxZ=22.6,
	}, {
		options = {
		    {
			event = "qb-uwu:Tray4",
			icon = "far fa-clipboard",
			label = "Tray 2",
		    },
		},
		distance = 1.5
	})

	exports['berkie-target']:AddBoxZone("uwu_tray_3", vector3(-587.59, -1059.67, 22.5), 1.6, 4.6, {
		name="uwu_tray_3",
		heading=89,
		debugPoly = false,
		minZ=21.0,
		maxZ=22.6,
	}, {
		options = {
		    {
			event = "qb-uwu:Tray3",
			icon = "far fa-clipboard",
			label = "Kitchen to Front of House",
		    },
		},
		distance = 3.5
	})

--Unused functions without additional ingredients
--[[
	exports['berkie-target']:AddBoxZone("uwucooker", vector3(-590.86, -1056.49, 22.44), 0.8, 2.1, {
		name="uwucooker",
		heading=91,
		debugPoly = false,
		minZ=21.0,
		maxZ=22.4,
	}, {
		options = {
			{
				event = "qb-uwu:PattyFry",
				icon = "fas fa-hamburger",
				label = "Cooking Station",
				job = "uwu",
			},
		},
		distance = 1.5
	})

	exports['berkie-target']:AddBoxZone("uwucooker2 ", vector3(-1202.94, -897.38, 14.0), 1.7, 1, {
		name="uwucooker2 ",
		heading=34,
		debugPoly=false,
		minZ=13.0,
		maxZ=14.3,
	}, {
		options = {
			{
				event = "qb-uwu:PattyFry",
				icon = "fas fa-hamburger",
				label = "Cook Station 2",
				job = "uwu",
			},
		},
		distance = 1.5
	})

		exports['berkie-target']:AddBoxZone("uwufryer", vector3(-1202.01, -899.27, 14.0), 2.5, 1.5, {
		name="uwufryer",
		heading=35,
		debugPoly=false,
		minZ=13.0,
		maxZ=14.4,
		}, {
		    options = {
			{
			    event = "qb-uwu:Fries",
			    icon = "fas fa-box",
			    label = "Make Fries",
			    job = "uwu",
			},
		    },
		    distance = 1.5
		})


	exports['berkie-target']:AddBoxZone("uwudrinks", vector3(-1199.54, -895.52, 14.0), 2.2, 0.6, {
	    name="uwudrinks",
	    heading=34,
	    debugPoly=false,
	    minZ=13.8,
	    maxZ=14.8,
	    }, {
		options = {
		    {
			event = "nh-context:DrinkMenu",
			icon = "fas fa-filter",
			label = "Make Some Drinks",
			job = "uwu",
		    },
		},
		distance = 1.5
	    })

        exports['berkie-target']:AddBoxZone("uwudrinks2", vector3(-1189.08, -905.28, 14.0), 1.15, 0.7, {
            name="uwudrinks2",
            heading=33,
            debugPoly=false,
            minZ=13.8,
            maxZ=14.8,
            }, {
                options = {
                    {
                        event = "nh-context:DrinkMenu",
                        icon = "fas fa-filter",
                        label = "Make Some Drinks",
                        job = "uwu",
                    },
                },
                distance = 1.5
            })

--]]
         exports['berkie-target']:AddBoxZone("uwufridge", vector3(-591.31, -1058.67, 22.43), 1.6, 1, {
            name="uwufridge",
            heading=89.0,
            debugPoly = false,
            minZ=21.0,
            maxZ=23.6,
        }, {
                options = {
                    {
                        event = "nh-context:ordermenu2",
                        icon = "fas fa-laptop",
                        label = "Select Pre-made food items",
                        job = "uwu",
                    },
                },
                distance = 1.5
            })
-- Not sure why this doesn't work
--[[
        exports['berkie-target']:AddBoxZone("uwudisplay", vector3(-587.1, -1059.55, 22.43), 1.6, 4.6, {
            name="uwudisplay",
            heading=270,
            debugPoly = false,
            minZ=21.6,
            maxZ=22.8,
        }, {
                options = {
                    {
                        event = "qb-uwu:Storage",
                        icon = "fas fa-box",
                        label = "Storage",
                        job = "uwu",
                    },
                },
                distance = 1.5
            })
--]]
-- Unfunctional without adding ingredients
--[[
        exports['berkie-target']:AddBoxZone("craftburger", vector3(-1197.57, -899.41, 14.0), 1.8, 0.7, {
            name="craftburger",
            heading=304,
            debugPoly=false,
            minZ=13.0,
            maxZ=14.4,
        }, {
                options = {
                    {
                        event = "nh-context:Burgers",
                        icon = "fas fa-cheeseburger",
                        label = "Burger Work Station",
                        job = "uwu",
                    },
                },
                distance = 1.5
            })
--]]

        exports['berkie-target']:AddBoxZone("uwu_register_1", vector3(-584.25, -1058.8, 22.37), 0.5, 0.4, {
            name="uwu_register_1",
            debugPoly = false,
            heading=270,
            minZ=21.0,
            maxZ=22.8,
        }, {
                options = {
                    {
                        event = "qb-uwu:bill",
                        parms = "1",
                        icon = "fas fa-credit-card",
                        label = "Charge Customer",
                        job = "uwu",
                    },
                },
                distance = 1.5
            })

        exports['berkie-target']:AddBoxZone("uwu_register_2", vector3(-584.25, -1061.5, 22.37), 0.6, 0.5, {
            name="uwu_register_2",
            debugPoly = false,
            heading=270,
            minZ=21.0,
            maxZ=22.8,
            }, {
                    options = {
                        {
                            event = "qb-uwu:bill",
                            parms = "2",
                            icon = "fas fa-credit-card",
                            label = "Charge Customer",
                            job = "uwu",
                        },
                    },
                    distance = 1.5
                })  

-- Not needed
--[[
        exports['berkie-target']:AddBoxZone("uwu_register_3", vector3(-1193.39, -895.22, 14.0), 0.6, 0.4, {
            name="uwu_register_3",
            debugPoly=false,
            heading=125,
            minZ=14.0,
            maxZ=14.4,
                    }, {
                            options = {
                                {
                                    event = "qb-uwu:bill",
                                    parms = "3",
                                    icon = "fas fa-credit-card",
                                    label = "Charge Customer",
                                    job = "uwu",
                                },
                            },
                            distance = 1.5
                        })  




        exports['berkie-target']:AddBoxZone("uwu_register_4", vector3(-1192.52, -906.65, 14.0), 0.5, 0.5, {
            name="uwu_register_4",
            heading=0,
            debugPoly=false,
            minZ=13.8,
            maxZ=14.2,
                }, {
                        options = {
                            {
                                event = "qb-uwu:bill",
                                parms = "4",
                                icon = "fas fa-credit-card",
                                label = "Charge Customer",
                                job = "uwu",
                            },
                        },
                        distance = 1.5
            })
--]]
end)


-- NH - Context --
--[[
RegisterNetEvent('nh-context:Burgers', function(data)
    TriggerEvent('nh-context:sendMenu', {
        {
            id = 0,
            header = "| Available Burgers |",
            txt = "",
        },
        {
            id = 1,
            header = "• Moneyshot Burger",
            txt = "Bun , Cooked Patty , Tomato , Lettuce",
            params = {
                event = "qb-uwu:MoneyShot"
            }
        },
        {
            id = 2,
            header = "• Meat Free Burger",
            txt = "Bun , Tomato , Lettuce",
            params = {
                event = "qb-uwu:MeatFree"
            }
        },
        {
            id = 3,
            header = "• Bleeder Burger",
            txt = "Bun , Cooked Patty , Tomato , Lettuce",
            params = {
                event = "qb-uwu:BleederBurger"
            }
        },
        {
            id = 4,
            header = "• The Heart Stopper",
            txt = "Bun , Cooked Patty , Tomato , Lettuce",
            params = {
                event = "qb-uwu:HeartStopper"
            }
        },
        {
            id = 5,
            header = "• Torpedo Roll",
            txt = "Bun , Cooked Meat",
            params = {
                event = "qb-uwu:Torpedo"
            }
        },
        {
            id = 6,
            header = "• Murder Meal",
            txt = "The Heart Stopper, Fries and SoftDrink",
            params = {
                event = "qb-uwu:CreateMurderMeal"
            }
        },
        {
            id = 7,
            header = "Close (ESC)",
            txt = "",
        },
    })
end)

--]]

RegisterNetEvent('nh-context:ordermenu2', function(data)
    TriggerEvent('nh-context:sendMenu', {
        {
            id = 0,
            header = "| Fridge |",
            txt = "",
        },
        {
            id = 1,
            header = "• Browse Food & Drink Items",
            txt = "Availability access.",
            params = {
                event = "qb-uwu:shop"
            }
        },
        {
            id = 2,
            header = "• Open Fridge",
            txt = "See what you have in storage",
            params = {
                event = "qb-uwu:Storage2"
            }
        },
        {
            id = 3,
            header = "Close (ESC)",
            txt = "",
        },
    })
end)

--[[
RegisterNetEvent('nh-context:DrinkMenu', function(data)
    TriggerEvent('nh-context:sendMenu', {
        {
            id = 0,
            header = "| Drink Menu |",
            txt = "",
        },
        {
            id = 1,
            header = "• Soft Drink",
            txt = "Soda Syrup",
            params = {
                event = "qb-uwu:SoftDrink"
            }
        },
        {
            id = 2,
            header = "• Milkshake",
            txt = "Milkshake Formula",
            params = {
                event = "qb-uwu:mShake"
            }
        },
        {
            id = 3,
            header = "Close (ESC)",
            txt = "",
        },
    })
end)
--]]

-- Till Stuff --
RegisterNetEvent("qb-uwu:bill")
AddEventHandler("qb-uwu:bill", function()
    local bill = exports["nh-keyboard"]:KeyboardInput({
        header = "Create Receipt",
        rows = {
            {
                id = 0,
                txt = "Server ID"
            },
            {
                id = 1,
                txt = "Amount"
            }
        }
    })
    if bill ~= nil then
        if bill[1].input == nil or bill[2].input == nil then 
            return 
        end
        TriggerServerEvent("qb-uwu:bill:player", bill[1].input, bill[2].input)
    end
end)

