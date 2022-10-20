local newx = -500;
local newy = -400;

function onCreate()
	-- background shi	

	setPropertyFromClass('GameOverSubstate', 'characterName', 'HottlerBF')

	--BAD BG

	makeLuaSprite('skybad', 'BG/bad/BG-Sky-2', newx, newy)
	setProperty('skybad.visible', false)
	setScrollFactor('skybad', 0.1, 0.1);
	scaleObject('skybad', 1.5, 1.5);

	makeAnimatedLuaSprite('bgbad', 'BG/bad/back2', newx - 300, newy)
	addAnimationByPrefix('bgbad', 'idle', 'Símbolo 18 instancia 1', 24, true)
	luaSpritePlayAnimation('bgbad', 'idle')
	setProperty('bgbad.visible', false)
	setScrollFactor('bgbad', 0.4, 0.4);
	scaleObject('bgbad', 1.5, 1.5);

	makeLuaSprite('floorbad', 'BG/bad/Principal-2', newx, newy)
	setScrollFactor('floorbad', 1, 1);
	scaleObject('floorbad', 1.5, 1.5);

	makeAnimatedLuaSprite('floowerbad', 'BG/bad/flowers 2', newx - 260, newy + 880)
	addAnimationByPrefix('floowerbad', 'idle', 'plantites copia copia', 24, true)
	luaSpritePlayAnimation('floowerbad', 'idle')
	setScrollFactor('floowerbad', 1, 1);
	scaleObject('floowerbad', 1.5, 1.5);

	makeAnimatedLuaSprite('floowerbad2', 'BG/bad/flowers 2', newx - 700, newy + 880)
	addAnimationByPrefix('floowerbad2', 'idle', 'plantites copia copia', 24, true)
	luaSpritePlayAnimation('floowerbad2', 'idle')
	setScrollFactor('floowerbad2', 1, 1);
	scaleObject('floowerbad2', 1.5, 1.5);



	--GOOD BG

	makeLuaSprite('sky', 'BG/good/BG-Sky-1', newx, newy)
	setScrollFactor('sky', 0.1, 0.1);
	scaleObject('sky', 1.5, 1.5);

	makeLuaSprite('bg', 'BG/good/back1', newx - 300, newy)
	setScrollFactor('bg', 0.4, 0.4);
	scaleObject('bg', 1.5, 1.5);

	makeLuaSprite('floor', 'BG/good/Principal-1', newx, newy)
	setScrollFactor('floor', 1, 1);
	scaleObject('floor', 1.5, 1.5);

	makeLuaSprite('floower', 'BG/good/flowers 1', newx + 1020, newy + 900)
	setScrollFactor('floower', 1, 1);
	scaleObject('floower', 1.5, 1.5);

	makeAnimatedLuaSprite('thehand', 'BG/bad/Devil Hand', newx + 1320, newy + 100)
	addAnimationByPrefix('thehand', 'whensales', 'transicion', 25, false)
	setProperty('thehand.visible', false)
	scaleObject('thehand', 1.4, 1.4);
	--luaSpritePlayAnimation('thehand', 'whensales')

	makeGraphic('fadeblack', 2000, 2000, 0xFF000000)
	setObjectCamera('fadeblack', 'camHUD')
	setProperty('gfGroup.alpha', 0);
	
	addLuaSprite('skybad', false)
	addLuaSprite('skybad', false)
	addLuaSprite('bgbad', false)
	addLuaSprite('floorbad', false)
	addLuaSprite('floowerbad', false)
	addLuaSprite('floowerbad2', false)

	addLuaSprite('sky', false)
	addLuaSprite('bg', false)
	addLuaSprite('floor', false)
	addLuaSprite('floower', false)
	addLuaSprite('thehand', true)

	addLuaSprite('fadeblack')

	setProperty('gfGroup.visible', false);
	
end

function onBeatHit()


	if curBeat == 280 then
		doTweenAlpha('alphalol', 'sky', 0, 1)
	end

	if curBeat == 291 then
		setProperty('thehand.visible', true)
		luaSpritePlayAnimation('thehand', 'whensales')
	end

	if curBeat == 296 then
		cameraFlash('camGame', 0xFFFFFFFF, 0.7)
		setProperty('sky.visible', false)
		setProperty('skybad.visible', true)
		setProperty('bg.visible', false)
		setProperty('bgbad.visible', true)
		setProperty('floor.visible', false)
		setProperty('floower.visible', false)
		setProperty('thehand.visible', false)
	end

	if curBeat >= 392 and curBeat <= 423 then
		triggerEvent('Add Camera Zoom', '0.03', '0.05')
	end

	if curBeat >= 432 and curBeat <= 555 then
		triggerEvent('Add Camera Zoom', '0.03', '0.05')
	end

	if curBeat == 696 then
		cameraFade('camGame', '0xFF000000', 10)
	end

end

function onStepHit() 

	if curStep >= 1632 and curStep <= 1695 then
		if curStep % 4 ~= 0 and curStep % 2 == 0 then
			triggerEvent('Add Camera Zoom', '', '')
		end

	end

end