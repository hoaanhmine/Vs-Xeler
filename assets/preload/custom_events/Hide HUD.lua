function onEvent(name,value1,value2)

    if name == "Hide HUD" then
        
        if value1 == '1' then
            doTweenAlpha("coso", "camHUD", 1, 1, 'quadInOut') 
        else
            doTweenAlpha("coso", "camHUD", 0, 1, 'quadInOut') 
	end
            
    end


end