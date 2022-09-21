local vi3d = require("vi3d")

local vec1 = vi3d.vi3d(1, 1, 1)
local vec2 = vi3d.vi3d(2, 2, 2)

setmetatable(vec1, vi3d.metatable)
setmetatable(vec2, vi3d.metatable)

assert(not (vec1 == vec2))

local addTest = vec1 + vec2
assert(vi3d.equals(addTest, {x=3, y=3, z=3}))

local addTest2 = vi3d.add(vec1, vec2)
assert(vi3d.equals(addTest2, {x=3, y=3, z=3}))

local addScalarTest = vi3d.addScalar(vec1, 1)
assert(vi3d.equals(addScalarTest, {x=2, y=2, z=2}))

-- TODO: write tests fro all methods

print("All tests have passed")
