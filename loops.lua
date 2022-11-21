local loops = {}

loops.run = function()
  print(string.upper("  Loops"))

  -- Loops
  for i = 1, 10, 1 do
    print(string.rep('*', i))
  end

  for i = 1, 10, 1 do
    local string = ''
    for j = 1, i, 1 do
      string = string .. '#'
    end
    print(string)
  end

  -- Reversed loop
  for i = 10, 1, -1 do
  end

  local array = {2, 3, 45, 92, 86, 6, 27, 74, 17}

  for i = 1, #array do
    io.write(array[i] .. ' ')
  end
  print()

  local counter = 10
  while counter > 0 do
    io.write(counter .. ' ')
    counter = counter - 1
  end
  print()

  counter = 10
  repeat
    io.write(counter .. ' ')
    counter = counter - 1
  until counter < 1
  print()
end

return loops
