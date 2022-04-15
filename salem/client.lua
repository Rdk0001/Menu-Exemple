ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)



RMenu.Add('test', 'main', RageUI.CreateMenu("cc", ""))
RMenu.Add('test', 'testp', RageUI.CreateSubMenu(RMenu:Get('test', 'main'), "cc", ""))



Citizen.CreateThread(function()
    while true do 

        RageUI.IsVisible(RMenu:Get('test', 'main'), true, true, true, function()

            RageUI.ButtonWithStyle("CC", nil, {},true, function()
            end, RMenu:Get('test', 'testp'))

        end, function()
        end)

        RageUI.IsVisible(RMenu:Get('test', 'testp'), true, true, true, function()

        RageUI.ButtonWithStyle("Cc", nil, {RightLabel = ">>>"},true, function(_,_,s)
            if s then 
            end
        end)

        end, function()
        end)

        Citizen.Wait(0)
    end
end)


Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if IsControlJustPressed(1,344) then 
            RageUI.Visible(RMenu:Get('test', 'main'), not RageUI.Visible(RMenu:Get('test', 'main')))
        end
    end
end) 
            