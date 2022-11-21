local libs = {}

libs.run = function()
  print(string.upper("  Libraries"))

  local number = "22"
  local multilineString = [[
  This is a
  multiline
  String
  ]]
  local message = "Hello World"

  -- String to number conversion
  print(tonumber(number))

  -- Random number
  math.randomseed(os.time())
  print(math.random(2, 50))

  -- Some math
  print(math.tointeger(2 ^ 5))
  print(5 % 2)
  print(math.pi)

  -- Length of a string
  print("length of a string: " .. string.len(multilineString)) -- Same as string.len()
  print("helllo", "world")
  print("\"hello\nworld\tI am Steve\"")
  print(string.sub(message, 1, 5))
  print(string.sub(message, 7, #message))
  print(string.format("Pi: %.3f\n", math.pi))
end

return libs
