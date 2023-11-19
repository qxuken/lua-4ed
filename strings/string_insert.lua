function insert(str, pos, value)
	return str:sub(1, pos - 1) .. value .. str:sub(pos)
end
