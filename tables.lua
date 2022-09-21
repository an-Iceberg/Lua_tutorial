local array = {2, 3, 45, 92, 86, 6, 27, 74, 17}

-- Tables
local vi3d = {
  x = 12,
  y = 3,
  z = -32
}
print('(' .. vi3d.x .. ', ' .. vi3d.y .. ', ' .. vi3d.z .. ')')

table.sort(array)

local structure =
{
  name = "some structure name",
  width = 300,
  height = 250,
  depth = 50,
  age = 45,
  category = "struct",
  position =
  {
    x = 3,
    y = 4,
    z = 5
  }
}

print("position.y: " .. structure.position.y)

for key, value in pairs(structure) do
  print(key, value)
end

table.insert(array, 1, 932)

print()
io.write("array: ")
for key, value in pairs(array) do
  io.write(value .. " ")
end

-- table.insert and table.remove can emulate a stack or a queue
