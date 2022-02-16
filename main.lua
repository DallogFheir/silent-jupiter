local silentJupiter = RegisterMod("Silent Jupiter", 1)

function silentJupiter:onUpdate()
    for playerNum = 1, Game():GetNumPlayers() do
        local player = Game():GetPlayer(playerNum)

        if player:HasCollectible(CollectibleType.COLLECTIBLE_JUPITER) then
            local sfxManager = SFXManager()

            if sfxManager:IsPlaying(SoundEffect.SOUND_FART) then
                sfxManager:Stop(SoundEffect.SOUND_FART)
            elseif sfxManager:IsPlaying(SoundEffect.SOUND_FART_GURG) then
                sfxManager:Stop(SoundEffect.SOUND_FART_GURG)
            end
        end
    end
end

silentJupiter:AddCallback(ModCallbacks.MC_POST_UPDATE, silentJupiter.onUpdate)
