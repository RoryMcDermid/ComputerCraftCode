local function getSingleChunkCoords(north, west)
    local tempCoords = {}
    tempCoords["north"] = north
    tempCoords["west"] = west
    tempCoords["east"] = tempCoords["west"] + 15
    tempCoords["south"] = tempCoords["north"] + 15

    return tempCoords

end

local function get9ChunkCoords(middleNorth, middleWest)

    local tempCoords = {}

    for i = -1,1 do
        for j = -1,1 do

            currentNorth = middleNorth + i * 16
            currentWest = middleWest + j * 16

            local currentCoords = getSingleChunkCoords(currentNorth, currentWest)

            tempCoords[i .. j .. "North"] = currentCoords["north"]
            tempCoords[i .. j .. "West"] = currentCoords["west"]
            tempCoords[i .. j .. "East"] = currentCoords["east"]
            tempCoords[i .. j .. "South"] = currentCoords["south"]

        end
    end

    return tempCoords


end


local function getShafts(coordinates)




end

local x, y, z = gps.locate()

local gridSquareSize = 16

local sx,sz = math.floor(x/gridSquareSize) * gridSquareSize, math.floor(z/gridSquareSize) * gridSquareSize


--chunks are names -1-1 throught to 11 (that is 1,1), with negative being north/west, and positive being south/east


local coordinates = {}

local coordinates = get9ChunkCoords(sz, sx)


print(coordinates["-1-1South"])


--start with -1-1North by -1-1West, add 1 to both x and y
--get add 3 to both of those 16 times
