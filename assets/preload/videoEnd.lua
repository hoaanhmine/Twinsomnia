local canEnd = false
local seenCutscene = false;
local song = ''
function onEndSong()
	if canEnd then
	seenCutscene = true
		setProperty('camHUD.visible', true);
		setProperty('camGame.visible', true);
		return Function_Continue;
	end
	if not seenCutscene and isStoryMode then
		setProperty('camHUD.visible', false);
		setProperty('camGame.visible', false);
		setProperty('inCutscene', true);
		startVideo("boogiemanEnd");	
	--	runTimer('vid2o', 0.5);
		seenCutscene = true;
		canEnd = true
		return Function_Stop;
	end	
end

function onCreate()
song = songName
	if not seenCutscene then
		setProperty('camHUD.visible', false);
		setProperty('camGame.visible', false);
	end


end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'vid2o' then
	end
end