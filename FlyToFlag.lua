-- Define character conditions with corresponding IDs
CharacterCondition = {
    mounted = 4,
    jumping48 = 48,
    jumping61 = 61,
    occupied = 33,
}

-- Check if the character meets a specific condition
function IsCharacterInCondition(condition)
    if CharacterCondition[condition] then
        return GetCharacterCondition(CharacterCondition[condition])
    end
    return false
end

-- Ensure the player is mounted; proceed directly if already mounted
function EnsureMounted()
    local conditionsPreventingMount = {}

    if IsCharacterInCondition("mounted") then
        UseNavmesh()
        return
    end

    if IsCharacterInCondition("jumping48") or IsCharacterInCondition("jumping61") then
        table.insert(conditionsPreventingMount, "jumping")
    end

    if IsCharacterInCondition("occupied") then
        table.insert(conditionsPreventingMount, "occupied")
    end

    if #conditionsPreventingMount > 0 then
        return
    end

    yield('/gaction "mount roulette"')
    yield('/wait 4')

    if not IsCharacterInCondition("mounted") then
        EnsureMounted()
    else
        UseNavmesh()
    end
end

-- Activate navmesh and monitor pathfinding status
function UseNavmesh()
    yield('/vnav flyflag')
    yield('/wait 3')

    while PathIsRunning() do
        yield('/wait 3')
    end

    Dismount()
end

-- Dismount the player if currently mounted
function Dismount()
    if IsCharacterInCondition("mounted") then
        yield('/gaction "dismount"')
        yield('/wait 1')
    end
end

-- Start the process
EnsureMounted()
