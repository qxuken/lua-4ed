function prints_all(arr)
  for i = 1, #arr do
    print(arr[i])
  end
end


function stip_first(_first, ...)
  return ...
end

function stip_last(...)
  local args = table.pack(...)
  prints_all(args)
  return table.unpack(args, 1, #args - 1)
end

