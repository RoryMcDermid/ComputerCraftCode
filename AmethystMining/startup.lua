--this is run when there is space above
local function CircleMine() 
  for i = 1,4 do
    local success, data = turtle.inspect()
    if success then
      --likely spot to break, needs tested
      if data.name == "minecraft:amethyst_cluster" then
        turtle.dig()
      end
    end
    turtle.turnLeft()
  end
end
 
local function GoDown()
  while not turtle.detectDown() do
    turtle.down()
  end
end
 
 
 
 
--Code Starts
print("test")
GoDown()
while true do
  local boolean Space = true
  for i = 1,16 do
    if turtle.getItemCount(i) > 0 then
      turtle.select(i)
      if turtle.dropDown() then
        i = 16
        Space = false
      end
    end
  end
  turtle.select(1)
  sleep(300)
  if Space then
    while turtle.getItemCount(16) == 0 and (not turtle.detectUp()) do
      CircleMine()
      turtle.up()
    end
    if turtle.getItemCount(16) == 0 then
      CircleMine()
    end
    GoDown()
  end
end
