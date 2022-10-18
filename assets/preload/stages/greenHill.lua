
function onCreate()

	makeLuaSprite('Sky', 'Green Hill Zone/Sky', -1000, -630);
	setScrollFactor('Sky', 0.9, 0.9);
	scaleObject('Sky', 1.2, 1.2);

	makeLuaSprite('Mountains', 'Green Hill Zone/Mountains', -1000, -200);
	setScrollFactor('Mountains', 0.9, 0.9);
	scaleObject('Mountains', 1.3, 1.3);

	makeAnimatedLuaSprite('Water_Fall', 'Green Hill Zone/waterfallbg', -700, 320);
	addAnimationByPrefix('Water_Fall','wotorfall','animation water',24,true)
	scaleObject('Water_Fall', 1.3, 1.3);

	makeAnimatedLuaSprite('Water', 'Green Hill Zone/lake', -900, 580);
	addAnimationByPrefix('Water','wotor','Animated Water',24,true)
	scaleObject('Water', 1.3, 1.3);
	
	makeLuaSprite('clouds', 'Green Hill Zone/Clouds', -1000, -200);
	setScrollFactor('clouds', 0.4, 0.4);

	makeLuaSprite('floor', 'Green Hill Zone/Floor GreenHill', -790, 730);
	setScrollFactor('floor', 0.9, 0.9);
	scaleObject('floor', 1.1, 1.1);

	makeLuaSprite('glitch', 'Green Hill Zone/glitch', -785, 728);
	setScrollFactor('glitch', 0.9, 0.9);
	scaleObject('glitch', 1.1, 1.1);

	makeLuaSprite('tree_one', 'Green Hill Zone/tree', 110, -580);
	setScrollFactor('tree_one', 0.9, 0.9);
	scaleObject('tree_one', 1.0, 1.0);

	makeLuaSprite('tree_dos', 'Green Hill Zone/tree-glitch', -490, -580);
	setScrollFactor('tree_dos', 0.9, 0.9);
	scaleObject('tree_dos', 1.0, 1.0);

	makeAnimatedLuaSprite('pibby', 'Green Hill Zone/pibby anim', 1250, 470);
	addAnimationByPrefix('pibby','pibby','pibby anim idle',15,true)
	scaleObject('pibby', 1.3, 1.3);

	makeLuaText('healthText', 'Health: ' .. math.floor(getProperty("health") * 50), 300, screenWidth / 2 - 300 / 2, screenHeight / 2 - -220 / 1.5)
    addLuaText('healthText')
    setTextSize('healthText', 30);
	setTextFont('healthText', 'exi.ttf')
	setProperty('healthText.antialiasing',true)
	
	makeLuaText('misses', 'Misses :', 0, 20, 130)
	addLuaText('misses')
	setTextColor('misses', 'FFFF00')
	
	makeLuaText('score', 'Score :', 0, 20, 80)
	addLuaText('score')
	setTextColor('score', 'FFFF00')
	
	makeLuaText('time', 'Time :', 0, 20, 30)
	addLuaText('time')
	setTextColor('time', 'FFFF00')
	setObjectCamera('misses', 'hud')
	setObjectCamera('score', 'hud')
	setObjectCamera('time', 'hud')
	
	setTextSize('score', 50)
	setTextSize('time', 50)
	setTextSize('misses', 50)

	makeLuaSprite('readthefiletitlelol', 'makeGraphicsucks', 0, 0);
	scaleObject('readthefiletitlelol', 6.0, 6.0);
	setObjectCamera('readthefiletitlelol', 'other');
	addLuaSprite('readthefiletitlelol', true);

	makeLuaSprite('introcircle', 'CircleFaker', 100, 0);
	setObjectCamera('introcircle', 'other');
	addLuaSprite('introcircle', true);

	makeLuaSprite('introtext', 'TextSonic', -100, 0);
	setObjectCamera('introtext', 'other');
	addLuaSprite('introtext', true);

	addLuaSprite('Sky', false);
	addLuaSprite('clouds', false);
	addLuaSprite('Mountains', false);
	addLuaSprite('Water_Fall',false);
	addLuaSprite('Water',false);
	addLuaSprite('floor', false);
	addLuaSprite('tree_one', false);
	addLuaSprite('tree_dos', false);
	addLuaSprite('glitch', false);
	addLuaSprite('pibby', false);
	
	close(true);

end
function onUpdate(elapsed)
setTextString('misses', 'Misses: ' .. getProperty('songMisses'))
setTextString('score', 'Score: ' .. getProperty('songScore'))
setTextString('time', 'Time: ' .. getTextString('timeTxt'))
end

function onCreatePost()
	setProperty('scoreTxt.visible', 0)
	setProperty("timeTxt.visible", false);
	setProperty("timeBar.visible", false)
end
	 