local variables = {}

variables.run = function()
  print(string.upper("  Variables"))

  --[[ Multiline comments
  are quite nice
  to be quite honest ]]

  -- Global variables start with capital letters
  Global = 20
  _G.hello = "hello"

  -- Local variable
  local message = "Hello World"

  -- String concatenation
  print(message .. ", how are you doing tonight?")
  print("Global variables: " .. Global .. ", " .. _G.hello)

  --[[ Variable types:
  - nil
  - number
  - string
  - bool
  - tables ]]

  local a
  a = 2 + 5

  -- Multiple initilaization
  local b, c, d, e = 4, 4, 55, "hello"

  local name = "Jack"
  local surname = "Smitter"
  print(name .. ' ' .. surname .. '\n')

  -- Mutliline Strings
  local multilineString = [[
  This is a
  multiline
  String ]]

  print(multilineString .. '\n')

  -- Prints variable type
  print(type(a) .. " " .. type(multilineString))

  -- Number as a string
  local number = "22"

  -- Const variables
  local const <const> = 12

  -- Close variables
  -- local close <close> = {}
end

return variables
