-- A simple implementation of a simple data structure
local function stack()
  return {
    values = {},

    push = function (self, number)
      table.insert(self.values, 1, number)
    end,

    top = function (self)
      return self.values[1]
    end,

    pop = function (self)
      local top_of_stack = self.values[1]
      table.remove(self.values, 1)
      return top_of_stack
    end,

    empty = function (self)
      if self.values == {} then
        return true
      end

      return false
    end,

    clear = function (self)
      self.values = {}
    end,

    size = function (self)
      return #self.values
    end,

    print = function (self)
      io.write("[")

      -- Iterating over all the values
      for key, value in pairs(self.values) do
        io.write(value)

        -- Printing a separator in between values
        if key ~= #self.values then
          io.write(", ")
        end
      end

      io.write("]\n")
    end,

    to_string = function (self)
      local string_value = "["

      -- Iterating over all the values
      for key, value in pairs(self.values) do
        string_value = string_value .. tostring(value)

        -- Printing a separator in between values
        if key ~= #self.values then
          string_value = string_value .. ", "
        end
      end

      string_value = string_value .. "]"

      return string_value
    end
  }
end

local some_stack = stack()
some_stack:push(2)
some_stack:print()
some_stack:push(9)
some_stack:print()
some_stack:push(1)

some_stack:print()

assert(some_stack:to_string() == "[1, 9, 2]")
assert(some_stack:size() == 3)
assert(some_stack:top() == 1)
assert(some_stack:pop() == 1)
assert(some_stack:to_string() == "[9, 2]")
assert(some_stack:size() == 2)

some_stack:print()
