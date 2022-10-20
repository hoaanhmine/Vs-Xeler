local newx = -500;
local newy = -300;

local r = 1;

function onCreate()

	r = math.floor(getRandomInt(1,4))
	
	setPropertyFromClass('GameOverSubstate', 'characterName', 'deathfest')
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'GAMEOVER')
    setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'GAMEOVER')
	--setPropertyFromClass('GameOverSubstate', 'endSoundName', '')

	makeLuaSprite('skybox', 'TFBG/SilirBG', newx, newy)
	scaleObject('skybox', 1.5, 1.5);
	addLuaSprite('skybox', false)

	setProperty('gfGroup.visible', false)

	makeLuaText('watermark','Silir Death Scene ' .. tostring(r),screenWidth,0,700);
    setObjectCamera('watermark', 'camHud')
    setTextBorder('watermark',1.5,'000000');
    setTextSize('watermark',18);
    setTextAlignment('watermark','left');
    --addLuaText('watermark');
end

function onGameOver()

	startVideo('Silir Death Scene ' .. tostring(r))
end