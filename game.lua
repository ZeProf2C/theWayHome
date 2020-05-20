Game = {}

require("xml")
require("Map")
require("Perso")  
require("Obstacle")
require("Chariot")

levelList = {}
levelList.lv1 = require ("levels/level1")
levelList.lv2 = require ("levels/level2")
levelList.lv3 = require ("levels/level3")
levelList.lv4 = require ("levels/level4")


currentlevel = levelList.lv1

char = chariot.new(6, 1, "ressources/images/chariot.png", "ressources/Images/rail.png")
charSpeed = 100

dtSum = 0 
UpdtTime = 1 






function Game.update(dt)
    dtSum = dtSum + dt
    
    Map.update()
    Perso.update()
    currentlevel.update()

    if dtSum > UpdtTime then
        char.update(Map)
        dtSum = 0
    end
end


function Game.draw()
    love.graphics.setColor(1,1,1)
    love.graphics.draw(backgroundImage,0,0,0,0.5,0.5)
    love.graphics.setFont(mainFont) 

    char.draw()

    Perso.draw()

    currentlevel.draw()
    Map.draw(false)

    
end

function Game.keypressed(key)
  Perso.keypressed(key)
end
function Game.mousereleased()
end


return Game