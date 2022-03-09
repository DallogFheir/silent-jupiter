local silentJupiter = RegisterMod("Silent Jupiter", 2)

function silentJupiter:onUpdate()
    for playerNum = 1, Game():GetNumPlayers() do
        local player = Game():GetPlayer(playerNum)

        if player:HasCollectible(CollectibleType.COLLECTIBLE_JUPITER) then
            SFXManager():AdjustVolume(SoundEffect.SOUND_FART, 0)
        end
    end
end

silentJupiter:AddCallback(ModCallbacks.MC_POST_UPDATE, silentJupiter.onUpdate)
