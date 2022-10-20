function onEvent(name,value1,value2)

    if name == "Set Cam Zoom" then
        
        setProperty("defaultCamZoom",value1) 
        if value2 == '1' then
            setProperty("camGame.zoom",value1) 
	end
            
    end


end