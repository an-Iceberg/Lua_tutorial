local file = io.open("myFile.txt", "r")

if file ~= nil then
  -- print(file)

  --[[
  for line in file:lines() do
    print(line)
  end
  ]]

  --[[
  for i = 1, 11, 1 do
    io.write(file:read(1).." ")
  end
  ]]

  local letter
  while true do
    -- Reads 1 (the next) character from the file
    letter = file:read(1)
    if letter == nil then break end

    io.write(letter.." ")
  end

  -- print(file:read("n"))

  -- file:write("\nHello World")

  file:close()
end

print()
print()
print("###")
print()

io.input("myFile.txt")

local letter
while true do
  letter = io.read(1)
  if letter == nil then break end

  io.write(letter.." ")
end
