local a, b, d = 2 + 5, 4, 55

-- Control flow
if a == b then
  print("a == b")
elseif not (a == b) then
  print("a not == b")
end

if a > b and a < d then
  print("a > b and a < d")
end

if not (a == b) then
  print("not (a == b)")
end

-- Ternary operator
local age = 25

local old = age > 40 and true or false
print("old: " .. tostring(old))
