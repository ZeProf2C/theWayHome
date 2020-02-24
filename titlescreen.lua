titleScreen = {}
  titleScreen.image = {}
    titleScreen.image.src = love.graphics.newImage("ressources/Images/rien.jpg")
    titleScreen.image.width  = titleScreen.image.src:getWidth()
    titleScreen.image.scale = titleScreen.image.width/WIDTH



function titleScreen.update (delta)
    
end

function titleScreen.draw()
    love .graphics.setColor(1,1,1)
    love.graphics.draw(titleScreen.image.src,0,0,0,1/titleScreen.image.scale,1/titleScreen.image.scale)
    love .graphics.setColor(0,0,0)
    love.graphics.print("PRESS SPACE     TITLE SCREEN")
end

function titleScreen.keypressed(key)
    if key == "space" then
        goToUpdate = true
        currentScene = sceneList.Menu
    end

end

return titleScreen