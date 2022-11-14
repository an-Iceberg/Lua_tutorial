local functions = {}

functions.run = function()
  -- Functions
  local function thisIsAFunction()
    print("This is a function")
  end

  local function age(Age)
    Age = Age or 15 -- This is how to do default parameter values in Lua
    print("The Age is " .. Age)
  end

  local function add(first, second)
    return first + second
  end

  local function increment(number)
    return number + 1
  end

  local function decrement(number)
    return number - 1
  end

  -- Multiple return values
  local function add10(number)
    local outcome = 10 + number
    return number, outcome
  end

  -- Interesting counter function (I need to study functional programming)
  local function counter()
    local count = 0

    return function()
      count = count + 1
      return count
    end
  end

  local _, output = add10(20) -- the _ is equivalent to a trash can

  thisIsAFunction()
  age()
  age(45)
  print(add(34, 89))
  print(output)

  local x = counter()

  print(x())
  print(x())
  print(x())
  print(x())
  print(x())
  print(x())

  print()

  -- Multiple return values are possible in Lua :D
  local function multiple_return_types()
    local msg = "Hello World"
    local num = 423893
    local string = "some other string"
    return msg, num, string
  end

  print(multiple_return_types())

  -- Callbacks
  local function something(a, b)
    b(a)
  end

  something(12, function(number)
    print("number: "..number)
  end)
end

return functions
