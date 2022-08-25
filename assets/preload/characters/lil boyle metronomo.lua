musthit = false
function onBeatHit()
	if not musthit == mustHitSection then--on change
		characterPlayAnim('gf','turnLeft')
		setProperty('gf.idleSuffix','')
		
		if mustHitSection then
			characterPlayAnim('gf','turnRight')
			setProperty('gf.idleSuffix','-alt')
			setProperty('gf.danced',true)
		end
		setProperty('gf.danced',false)
	end
	musthit = mustHitSection
end