function prints_all(arr)
  for i = 1, #arr do
    io.write(arr[i])
    if i ~= #arr then
      io.write(" ")
    end
  end
  io.write("\n")
end

function strip_first(_, ...)
  return ...
end

function strip_last(...)
  local args = table.pack(...)
  return table.unpack(args, 1, #args - 1)
end

function shuffle(arr)
  for i = #arr, 2, -1 do
    local j = math.random(i)
    arr[i], arr[j] = arr[j], arr[i]
  end
end

function swap(s, i, j)
  if i == j then
    return s
  end
  return s:sub(1, i - 1) .. s:sub(j, j) .. s:sub(i + 1, j - 1) .. s:sub(i, i) .. s:sub(j + 1)
end

function print_all_combinations(arr)
  local str = table.concat(arr);
  local function print_combinations(s, l)
    if l == #s then
      print(s)
      return
    end
    for i = l, #s do
      local new_str = swap(s, l, i)
      print_combinations(new_str, l + 1)
    end
  end

  print_combinations(str, 1)
end
