function isInArgs(query,matchCase,isFullCopy)
	for i,v in pairs(args or{})do
		if isFullCopy then
			if matchCase then
				if query == v then
					return true
				end
			else
				if query:lower() == v:lower() then
					return true
				end
			end
		else
			if matchCase then
				if v:find(query:gsub('%p','%%%1')) then
					return true
				end
			else
				if v:lower():find(query:lower():gsub('%p','%%%1') then
					return true
				end
			end
		end
	end
end

if isInArgs('--help', true, true) or isInArgs('-h', true, true) or isInArgs('-?', true, true) then
	print('Args:')
	print('\t--no-lit-log | uses io.popen to block lit logs popping up on console')
	os.exit()
end

print('this script it is running on luvit ENV')
io.write('enter lit package manager name ["./lit" for example on linux]> ')
local lit = io.input():read('*line')
			lit = lit ~= '' and (require('jit').os ~= 'Windows' and './')..'lit'
local command = isInArgs('--no-lit-log', true, true) and (function(cmd)
	repeat
		a = io.popen(cmd)
	until a
	return a:read('*all')
end) or os.execute
print('Downloading coro-http')
command(lit..' install creationix/coro-http')
print('Downloading secure-socket > required by coro-http')
command(lit..' install luvit/secure-socket')
print('now you can start script by running:')
print((args or { [0] = (require('jit').os ~= 'Windows' and './')..'luvit' } )[0]..' init')