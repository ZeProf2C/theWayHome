scene_Intro = {}
titleScreen = {}
  titleScreen.image = {}
    titleScreen.image.src = love.graphics.newImage("ressources/Images/ecran_titre.jpg")
    titleScreen.image.width  = titleScreen.image.src:getWidth()
    titleScreen.image.height = titleScreen.image.src:getHeight()
    titleScreen.image.scaleX = titleScreen.image.width/WIDTH
    titleScreen.image.scaleY = titleScreen.image.width/HEIGHT



function scene_Intro.update (delta)
    
end

function scene_Intro.draw()
    love.graphics.draw(titleScreen.image,0,0,1,titleScreen.image.width/titleScreen.image.scaleX,titleScreen.image.height/titleScreen.image.scaleY)
end

function scene_Intro.keypressed(key)
    if key == "space" then
        currentScene = sceneList.Menu
    end

end

return scene_Intro