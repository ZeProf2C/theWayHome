Game = {}

require("xml")
require("Map")
require("Perso")  
require("Obstacle")
require("Chariot")

obs = obstacle.new(7, 3, 4, 3, "ressources/images/bloc.png", "obs")
uli = obstacle.new(6, 2, 3, 1, "ressources/images/bloc.png", "uli")
nenenene = obstacle.new(6, 7, 2, 1, "ressources/images/bloc.png", "nenenene")

char = chariot.new(5, 1, "ressources/images/chariot.png", "ressources/Images/rail.png")
charSpeed = 100

dtSum = 0 
UpdtTime = 1 


function Game.update(dt)
    dtSum = dtSum + dt
    Map.update()
    Perso.update()
    obs.update(Map)
    uli.update(Map)
    nenenene.update(Map)

    if dtSum > UpdtTime then
        char.update(Map)
        dtSum = 0
    end
end


function Game.draw()
    love.graphics.setColor(1,1,1)
    love.graphics.draw(backgroundImage,0,0,0,0.4,0.4)
    love.graphics.setFont(mainFont) 

    char.draw()

    Perso.draw()

    obs.draw()
    uli.draw()
    nenenene.draw()


    Map.draw(true)

end

function Game.keypressed(key)
  Perso.keypressed(key)
end

return Game