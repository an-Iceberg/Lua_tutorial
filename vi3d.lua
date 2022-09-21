local vi3d =
{
  -- Constructor
  vi3d = function (x, y, z)
    x = x or 0
    y = y or 0
    z = z or 0

    return {
      x = x,
      y = y,
      z = z,
    }
  end,

  add = function (first, second)
    return {
      x = first.x + second.x,
      y = first.y + second.y,
      z = first.z + second.z
    }
  end,

  addScalar = function (vector, scalar)
    return {
      x = vector.x + scalar,
      y = vector.y + scalar,
      z = vector.z + scalar
    }
  end,

  sub = function (first, second)
    return {
      x = first.x - second.x,
      y = first.y - second.y,
      z = first.z - second.z
    }
  end,

  subScalar = function (vector, scalar)
    return {
      x = vector.x - scalar,
      y = vector.y - scalar,
      z = vector.z - scalar
    }
  end,

  mult = function (first, second)
    return {
      x = first.x * second.x,
      y = first.y * second.y,
      z = first.z * second.z
    }
  end,

  multScalar = function (vector, scalar)
    return {
      x = vector.x * scalar,
      y = vector.y * scalar,
      z = vector.z * scalar
    }
  end,

  div = function (first, second)
    return {
      x = first.x / second.x,
      y = first.y / second.y,
      z = first.z / second.z
    }
  end,

  divScalar = function (vector, scalar)
    return {
      x = vector.x / scalar,
      y = vector.y / scalar,
      z = vector.z / scalar
    }
  end,

  equals = function (first, second)
    return first.x == second.x and first.y == second.y and first.z == second.z
  end,

  --[[ Metamethods:
    __add => +
    __sub => -
    __mul => *
    __div => /
    __mod => %
    __pow => ^
    __concat => ..
    __len => #
    __eq => ==
    __lt => <
    __le => <=
    __gt => >
    __ge => >=
  ]]

  metatable =
  {
    __add = function (first, second)
      return {
        x = first.x + second.x,
        y = first.y + second.y,
        z = first.z + second.z
      }
    end,

    __sub = function (first, second)
      return {
        x = first.x - second.x,
        y = first.y - second.y,
        z = first.z - second.z
      }
    end,

    __mul = function (first, second)
      return {
        x = first.x * second.x,
        y = first.y * second.y,
        z = first.z * second.z
      }
    end,

    __div = function (first, second)
      return {
        x = first.x / second.x,
        y = first.y / second.y,
        z = first.z / second.z
      }
    end,

    __eq = function (first, second)
      return first.x == second.x and first.y == second.y and first.z == second.z
    end
  }
}

return vi3d
