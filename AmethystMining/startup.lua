--this is run when there is space above
local function CircleMineUp() 
  turtle.up()
  for i = 0,4 do
    local success, data = turtle.inspect()
    if success then
      --likely spot to break, needs tested
      if data.name == "amethyst_cluster" then
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
  print(Space)
  print((turtle.getItemCount(16) == 0))
  print((not turtle.detectUp()))
  print("A")
  if Space then
    print("check")
    while turtle.getItemCount(16) == 0 and (not turtle.detectUp()) do
      CircleMineUp()
    end
    GoDown()
  end
end
      
  
  
