function onUpdate(elapsed)

	local lol = math.random(1,2)
	
	if (lol >= 1) then
	
		doTweenAngle('tt', 'iconP2', -0.5, stepCrochet*0.00000000009, 'circOut')
	end
	
	if (lol >= 2) then
	
		doTweenAngle('tt', 'iconP2', 2, stepCrochet*0.00000000009, 'circOut')
	end
	
	setTextString('healthText', 'Health: ' .. math.floor(getProperty("health") * 50))
	
	
	local songPos = getPropertyFromClass('Conductor', 'songPosition') / 800 --How long it will take.

	setTextString('misses', 'Misses: ' .. getProperty('songMisses'))
	setTextString('score', 'Score: ' .. getProperty('songScore'))
	setTextString('time', 'Time: ' .. getTextString('timeTxt'))
	
	end
	
	function onCreatePost()
		setProperty('scoreTxt.visible', 0)
		setProperty("timeTxt.visible", false);
		setProperty("timeBar.visible", false)
	end

	function onStartCountdown()
		doTweenX('circleTween', 'introcircle', -100, 2, 'quintOut')
		doTweenX('textTween', 'introtext', 100, 2, 'quintOut')
		return Function_Continue
	end
	
	function onSongStart()
		doTweenAlpha('graphicAlpha', 'readthefiletitlelol', 0, 0.2, 'quintOut');
		doTweenAlpha('circleAlpha', 'introcircle', 0, 0.2, 'quintOut');
		doTweenAlpha('textAlpha', 'introtext', 0, 0.2, 'quintOut');
	end
	function onCreate()
	
		setPropertyFromClass('GameOverSubstate', 'characterName', 'bf-death'); --Character json file for the death animation
		setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'PibbyDeath'); --put in mods/sounds/
		setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'hugging_death_loop2'); --put in mods/music/
		setPropertyFromClass('GameOverSubstate', 'endSoundName', 'hugging_death_end2'); --put in mods/music/
	
	
	
	
	end	    
    
        
        