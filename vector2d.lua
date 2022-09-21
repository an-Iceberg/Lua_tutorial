local function Vector2d(x, y)
  local vector2d = {
    x = x,
    y = y
  }

  vector2d.mag = function (self)
    return math.sqrt((self.x ^ 2) + (self.y ^ 2))
  end

  vector2d.mag2 = function (self)
    return (self.x ^ 2) + (self.y ^ 2)
  end

  vector2d.norm = function (self)
    return Vector2d(self.x * (1 / self:magnitude()), self.y * (1 / self:magnitude()))
  end

  vector2d.perp = function (self)
    return Vector2d(-self.y, self.x)
  end

  vector2d.self_perp = function (self)
    local old_x = self.x
    local old_y = self.y
    self.x = -old_y
    self.y = old_x
  end

  vector2d.floor = function (self)
    return Vector2d(math.floor(self.x), math.floor(self.y))
  end

  vector2d.ceil = function (self)
    return Vector2d(math.ceil(self.x), math.ceil(self.y))
  end

  vector2d.max = function (self, vector)
    return Vector2d(math.max(self.x, vector.x), math.max(self.y, vector.y))
  end

  vector2d.min = function (self, vector)
    return Vector2d(math.min(self.x, vector.x), math.min(self.y, vector.y))
  end

  vector2d.cart = function (self)
    return Vector2d(math.cos(self.y) * self.x, math.sin(self.y) * x)
  end

  vector2d.polar = function (self)
    return Vector2d(self:mag(), math.atan(self.y, self.x))
  end

  vector2d.dot = function (self, vector)
    return Vector2d(self.x * vector.x, self.y * vector.y)
  end

  vector2d.cross = function (self, vector)
    return Vector2d(self.x * vector.y, self.y * vector.x)
  end

  vector2d.print = function (self)
    print("("..self.x..", "..self.y..")")
  end

  vector2d.to_string = function (self)
    return "("..self.x..", "..self.y..")"
  end

  return vector2d
end

local vec1 = Vector2d(15, 39)
vec1:print()

local vec3 = vec1

local vec2 = Vector2d(2.45, 6.9)
vec2:print()
vec1:cart():perp():print() -- Chaining methods like this is possible in Lua
vec2:cart():print()

vec3:self_perp()
vec3:print()
