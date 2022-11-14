local coroutines = {}

coroutines.run = function()
  print("\nCoroutines")

  local routine1 = coroutine.create(function ()
    for i = 1, 10, 1 do
      print(i)

      if i == 5 then
        coroutine.yield()
      end
    end
  end)

  local function routine2Function()
    for i = 20, 30, 1 do
      print("Routine 2: " .. i)
    end
  end

  local routine2 = coroutine.create(routine2Function)

  coroutine.resume(routine1)
  coroutine.resume(routine2)

  print(coroutine.status(routine1))
  print(coroutine.status(routine2))

  if coroutine.status(routine1) == "suspended" then
    coroutine.resume(routine1)
  end

  coroutine.close(routine1)
  coroutine.close(routine2)
end

return coroutines
