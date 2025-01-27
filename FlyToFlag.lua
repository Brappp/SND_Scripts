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
        yield('/echo [MOUNT] Already mounted.')
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
        yield('/echo [MOUNT] Cannot mount due to: ' .. table.concat(conditionsPreventingMount, ", "))
        return
    end

    yield('/echo [MOUNT] Attempting to mount using "mount roulette"...')
    yield('/gaction "mount roulette"')
    yield('/wait 4')

    if not IsCharacterInCondition("mounted") then
        yield('/echo [MOUNT] Mounting failed. Retrying...')
        EnsureMounted()
    else
        yield('/echo [MOUNT] Successfully mounted.')
        UseNavmesh()
    end
end

-- Activate navmesh and monitor pathfinding status
function UseNavmesh()
    yield('/echo [NAVMESH] Activating navmesh for movement...')
    yield('/vnav flyflag')
    yield('/wait 3')

    while PathIsRunning() do
        yield('/echo [NAVMESH] Pathfinding in progress...')
        yield('/wait 3')
    end

    yield('/echo [NAVMESH] Navigation completed.')
    Dismount()
end

-- Dismount the player if currently mounted
function Dismount()
    if IsCharacterInCondition("mounted") then
        yield('/echo [MOUNT] Dismounting...')
        yield('/gaction "dismount"')
        yield('/wait 1')
    else
        yield('/echo [MOUNT] Already dismounted.')
    end
end

-- Start the process
EnsureMounted()
