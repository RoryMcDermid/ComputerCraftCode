local x, y, z = gps.locate()

local gridSquareSize = 16

local sx,sz = math.floor(x/gridSquareSize) * gridSquareSize, math.floor(z/gridSquareSize) * gridSquareSize


local northEdge = sz
local westEdge = sx
local eastEdge = westEdge + 15
local southEdge = northEdge + 15

print("North:" .. northEdge)
print("West:" .. westEdge)
print("East:" .. eastEdge)
print("South:" .. southEdge)