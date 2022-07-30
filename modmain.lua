local hornChance = GetModConfigData("hornChanceOption")

local function OnShavedBeefalo(inst)

  if not GLOBAL.TheWorld.ismastersim then
    return inst
  end

  -- This dictates the chance the horn will spawn. < 0.01 means it'll only spawn 1% of the time.
  if math.random() < hornChance then
    -- This code was adapted from the beard.lua component for dropping beard/silk/beefalo wool
    local bit = GLOBAL.SpawnPrefab("horn")
    local x, y, z = inst.Transform:GetWorldPosition()
    bit.Transform:SetPosition(x, y + 2, z)
    local speed = 1 + math.random()
    local angle = math.random() * 2 * GLOBAL.PI
    bit.Physics:SetVel(speed * math.cos(angle), 2 + math.random() * 3, speed * math.sin(angle))
  end

end

AddPrefabPostInit("beefalo", function(inst)
  inst:ListenForEvent("shaved", OnShavedBeefalo)
end)
