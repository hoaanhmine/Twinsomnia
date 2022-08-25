local allowCountdown = false
local seenCutscene = false;
function onStartCountdown()
	if not seenCutscene and isStoryMode then
		setProperty('inCutscene', true);	
		runTimer('vido', 0.5);
		seenCutscene = true;
		return Function_Stop;
	end	
	
	seenCutscene = true
		setProperty('camHUD.visible', true);
		setProperty('camGame.visible', true);
		return Function_Continue;
end

function onCreate()

	if not seenCutscene then
		setProperty('camHUD.visible', false);
		setProperty('camGame.visible', false);
	end


end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'vido' then
		startVideo(songName);
	end
end