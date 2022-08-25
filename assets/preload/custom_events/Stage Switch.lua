--[[
NOTE:

This will cause a lag spike due to it loadinng new graphics mid game. it's recommended you cache/load the graphics before hand


function onEvent(n,v,b)
	if n == 'Stage Switch' then
		addLuaScript('stages/'..v,true)
		setObjectOrder('gfGroup',getObjectOrder('dadGroup'))
	end


end

]]--