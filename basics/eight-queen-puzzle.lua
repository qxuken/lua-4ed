N = 8 -- board size
local isplaceok_calls = 0
local addqueen_calls = 0

-- check whether position (n,c) is free from attacks
local function isplaceok(a, n, c)
  isplaceok_calls = isplaceok_calls + 1
  for i = 1, n - 1 do            -- for each queen already placed
    if (a[i] == c) or            -- same column?
        (a[i] - i == c - n) or   -- same diagonal?
        (a[i] + i == c + n) then -- same diagonal?
      return false               -- place can be attacked
    end
  end
  return true -- no attacks; place is OK
end

-- print a board
local function printsolution(a)
  for i = 1, N do   -- for each row
    for j = 1, N do -- and for each column
      -- write "X" or "-" plus a space
      io.write(a[i] == j and "X" or "-", " ")
    end
    io.write("\n")
  end
  io.write("\n")
end

-- add to board 'a' all queens from 'n' to 'N'
local function addqueen(a, n)
  addqueen_calls = addqueen_calls + 1
  if n > N then -- all queens have been placed?
    printsolution(a)
  else          -- try to place n-th queen
    for c = 1, N do
      if isplaceok(a, n, c) then
        a[n] = c -- place n-th queen at column 'c'
        addqueen(a, n + 1)
      end
    end
  end
end

-- run the program
addqueen({}, 1)
print("isplaceok_calls " .. isplaceok_calls)
print("addqueen_calls " .. addqueen_calls)

