local oop = {}

oop.run = function()
  -- object
  local function pet(name, status)
    name = name or ""
    status = status or ""

    return {
      name = name,
      status = status,

      feed = function (self)
        print(self.name .. " is fed")
        self.status = "full"
      end
    }
  end

  local function Vector(x, y)
    x = x or 0
    y = y or 0

    local vector = {
      x = x,
      y = y
    }

    vector.magnitude = function (self)
      return math.sqrt((self.x ^ 2) + (self.y ^ 2))
    end

    vector.print = function (self)
      print("("..tostring(self.x)..", "..tostring(self.y)..")")
    end

    return vector
  end

  -- Inheritance
  local function dog(name, breed)
    local _dog = pet(name)

    _dog.breed = breed
    _dog.loyalty = 0

    _dog.is_loyal = function (self)
      return self.loyalty >= 10
    end

    _dog.feed = function (self)
      self.loyalty = self.loyalty + 1
      print(self.name .. " is fed")
      self.status = "full"
    end

    _dog.bark = function (self)
      print("whoof!")
    end

    return _dog
  end

  local louis = pet("Louis", "adopted")
  local tim = pet("Tim", "hungry")

  print(tim.name, tim.status)

  tim:feed()

  print(louis.name, louis.status)
  print(tim.name, tim.status)

  local timmothy = dog("Timmothy", "Poodle")
  print(timmothy.name, timmothy.status, timmothy.loyalty)
  -- The : is the method operator while the . only acesses members of a table
  timmothy:feed()
  timmothy:feed()
  timmothy:feed()
  timmothy:bark()
  print(timmothy:is_loyal())

  local vec = Vector(2, 7)
  vec:print()
end

return oop
