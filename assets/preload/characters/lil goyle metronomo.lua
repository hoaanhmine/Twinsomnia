musthit = false
function onBeatHit()

	if string.starts(getProperty('gf.animation.curAnim.name'),'dance') then
		if not musthit == mustHitSection then--on change
			characterPlayAnim('gf','turnLeft')
			setProperty('gf.idleSuffix','')
			if mustHitSection then
				setProperty('gf.idleSuffix','-alt')
				characterPlayAnim('gf','turnRight')
				setProperty('gf.danced',true)
			end
			setProperty('gf.danced',false)
		end
		musthit = mustHitSection
	end

end


function string.starts(String,Start)
   return string.sub(String,1,string.len(Start))==Start
end