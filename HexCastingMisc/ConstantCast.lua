chatBox = peripheral.wrap("right") --probably set this as back
boundCaster = "Flameballl" --set the name of the person who is casting the spells
boundSpell = "testing" --set the incantation of the spell
spellCircle = peripheral.wrap("back") --not sure if this is exactly correct, need to check ingame
casting = false
 
while true do
 
    event, username, message, uuid, isHidden = os.pullEvent("chat")
 
    if(username == boundCaster and message == boundSpell) then
        casting = true    
		spellCircle.activateCircle()
        while casting do

            event = os.pullEvent()

            if (event == "circle_stopped") then
                spellCircle.activateCircle()
            elseif (event == "chat") then
                if(username == boundCaster and message == boundSpell + ":stop") then
                	casting = false
				end
            end

                

        end
			
    end
    
       
    
 
end