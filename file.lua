local file = io.open("myFile.txt", "a")

print(file)

if file ~= nil then
  file:write("\nHello World")
end

io.close(file)
