local skins = {
    "Boxer",
    "Cyclist",
    "Default",
    "Dev",
    "Prisoner",
    "Regional",
    "Tennis",
    "Tuxedo"
}

local widths = {
    "Steve",
    "Alex"
}

--
-- Why does the counting system for textures start at one.
-- Any sane person would have it start at zero, but
-- in this particular implementation, it is one.
-- Meaning instead of the first item being 'list[0]'
-- it is 'list[1]' WHY!!! WHAT POSSESED THE AUTHOR?!
-- I will find whoever did this...
--
-- - Supranicus 19/07/2023
--
local skin = skins[3]
local width = widths[1]

function pings.State()
    models.model.Root:setPrimaryTexture("CUSTOM", textures[width..skin])
    if width == widths[1] then
        models.model.Root.SteveArms:setVisible(true)
        models.model.Root.AlexArms:setVisible(false)
    else
        models.model.Root.SteveArms:setVisible(false)
        models.model.Root.AlexArms:setVisible(true)
    end
end

events.ENTITY_INIT:register(function()
    vanilla_model.PLAYER:setVisible(false)
    pings.State()
end)


function playerModel()

    if width == widths[1] then
        width = widths[2]
    else
        width = widths[1]
    end

    pings.State()

end


-- BEGIN THE GREAT ACTION WHEEL CIRCUS

page = action_wheel:newPage("Skins")
action_wheel:setPage(page)

page:newAction(9)
  :title("Steve/Alex")
  :onToggle(playerModel)
  :item("minecraft:player_head{SkullOwner:{Id:[I;-1626783818,-1126740982,-1343194842,260815884],Properties:{textures:[{Value:'eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZWI3YWY5ZTQ0MTEyMTdjN2RlOWM2MGFjYmQzYzNmZDY1MTk3ODMzMzJhMWIzYmM1NmZiZmNlOTA3MjFlZjM1In19fQ=='}]}}}")
  :toggleItem("minecraft:player_head{SkullOwner:{Id:[I;-731408145,-304985227,-1778597514,158507129],Properties:{textures:[{Value:'eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjNiMDk4OTY3MzQwZGFhYzUyOTI5M2MyNGUwNDkxMDUwOWIyMDhlN2I5NDU2M2MzZWYzMWRlYzdiMzc1MCJ9fX0='}]}}}")

page:newAction(1)
  :title("Default")
  :onLeftClick(function() skin = skins[3] pings.State() end)
  :setTexture(textures[width..skins[3]],8,8,8,8)
page:newAction(2)
  :title("Boxer")
  :onLeftClick(function() skin = skins[1] pings.State() end)
  :setTexture(textures[width..skins[1]],8,8,8,8)
page:newAction(3)
  :title("Cyclist")
  :onLeftClick(function() skin = skins[2] pings.State() end)
  :setTexture(textures[width..skins[2]],8,8,8,8)
page:newAction(4)
  :title("Developer")
  :onLeftClick(function() skin = skins[4] pings.State() end)
  :setTexture(textures[width..skins[4]],8,8,8,8)
page:newAction(5)
  :title("Prisoner")
  :onLeftClick(function() skin = skins[5] pings.State() end)
  :setTexture(textures[width..skins[5]],8,8,8,8)
page:newAction(6)
  :title("Scottish/Swedish")
  :onLeftClick(function() skin = skins[6] pings.State() end)
  :setTexture(textures[width..skins[6]],8,8,8,8)
page:newAction(7)
  :title("Tennis")
  :onLeftClick(function() skin = skins[7] pings.State() end)
  :setTexture(textures[width..skins[7]],8,8,8,8)
page:newAction(8)
  :title("Tuxedo")
  :onLeftClick(function() skin = skins[8] pings.State() end)
  :setTexture(textures[width..skins[8]],8,8,8,8)