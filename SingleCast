chatBox = peripheral.wrap("right") --probably set this as back
boundCaster = "Flameballl" --set the name of the person who is casting the spells
boundSpell = "testing" --set the incantation of the spell
spellCircle = peripheral.wrap("back") --not sure if this is exactly correct, need to check ingame

 
while true do
 
    event, username, message, uuid, isHidden = os.pullEvent("chat")
 
    if(username == boundCaster) then
        if(message == boundSpell) then
            if(spellCircle.isCasting()) then
                chatBox.sendMessageToPlayer("Spell Currently Casting", boundCaster)
                
            else
                spellCircle.activateCircle()
        		--activateCircle always returns true
				
            end
        end
    
        
    end
    
 
end