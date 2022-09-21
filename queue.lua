local function Queue()
  local queue = {
    size = 0,
    values = {} -- The end of this table is the 'front' of the queue (where items get dequeued) and index 1 is the 'back' (where items get enqueued)
  }

  queue.enqueue = function (self, number)
    table.insert(self.values, 1, number)
    self.size = self.size + 1
  end

  queue.dequeue = function (self)
    local front_of_queue = self.values[#self.values]

    table.remove(self.values, #self.values)
    self.size = self.size - 1

    return front_of_queue
  end

  queue.front = function (self)
    return self.values[#self.values]
  end

  queue.back = function (self)
    return self.values[1]
  end

  queue.empty = function (self)
    if self.size == 0 and self.values == {} then
      return true
    end

    return false
  end

  queue.clear = function (self)
    self.size = 0
    self.values = {}
  end

  queue.to_string = function (self)
    local string = "["

    for key, value in pairs(self.values) do
      string = string .. value

      if key ~= self.size then
        string = string .. ", "
      end
    end

    string = string .. "]"

    return string
  end

  queue.print = function (self)
    io.write("[")

    for key, value in pairs(self.values) do
      io.write(value)

      if key ~= self.size then
        io.write(", ")
      end
    end

    io.write("]\n")
  end

  return queue
end

local some_queue = Queue()
some_queue:enqueue(4)
some_queue:print()
some_queue:enqueue(2)
some_queue:print()
some_queue:enqueue(9)
some_queue:print()
some_queue:enqueue(3)

some_queue:print()

assert(some_queue:dequeue() == 4)

some_queue:print()

assert(some_queue:dequeue() == 2)

some_queue:print()
