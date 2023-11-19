function is_palindrome(str)
	if #str % 2 == 0 then
		return false
	end
	for i = 1, #str // 2 do
		print(str:byte(i), str[-i])
		if str:byte(i) ~= str:byte(-i) then
			return false
		end
	end
	return true
end
