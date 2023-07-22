events.ENTITY_INIT:register(function()
    vanilla_model.PLAYER:setVisible(false)
    if host:isHost() then
       renderer:setRenderLeftArm(false)
       renderer:setRenderRightArm(false)
    end
end)



