events.ENTITY_INIT:register(function()
    vanilla_model.PLAYER:setVisible(false)
    vanilla_model.HELMET_HEAD:setPos(0,-14,0)
    vanilla_model.HELMET_HAT:setPos(0,-14,0)
    vanilla_model.HELMET_ITEM:setPos(0,-14,0)
    vanilla_model.CHESTPLATE_BODY:setPos(0,-12,0)
    vanilla_model.CHESTPLATE_LEFT_ARM:setPos(0,-12,0)
    vanilla_model.CHESTPLATE_RIGHT_ARM:setPos(0,-12,0)
    vanilla_model.LEGGINGS_BODY:setPos(0,-4,0)
    vanilla_model.LEGGINGS_LEFT_LEG:setPos(0,-4,0)
    vanilla_model.LEGGINGS_RIGHT_LEG:setPos(0,-4,0)
    vanilla_model.ELYTRA:setPos(0,-12,0)
    if host:isHost() then
       renderer:setRenderLeftArm(false)
       renderer:setRenderRightArm(false)
    end
end)



