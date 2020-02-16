sceneMenu = {}

sceneMenu.image = love.graphics.newImage("ressources/Images/rien.jpg")

bt_PLAY = {}
bt_PLAY.x         = WIDTH*1/2
bt_PLAY.y         = HEIGHT*1/6
bt_PLAY.long      = 100
bt_PLAY.haut      = 25
bt_PLAY.image     = love.graphics.newImage("ressources/Images/rien.jpg")

bt_SETTINGS = {}
bt_SETTINGS.x         = WIDTH/2
bt_SETTINGS.y         = HEIGHT*3/6
bt_SETTINGS.long      = 100
bt_SETTINGS.haut      = 25
bt_SETTINGS.image     = love.graphics.newImage("ressources/Images/rien.jpg")

bt_QUIT = {}
bt_QUIT.x         = WIDTH/2
bt_QUIT.y         = HEIGHT*5/6
bt_QUIT.long      = 100
bt_QUIT.haut      = 25
bt_QUIT.image     = love.graphics.newImage("ressources/Images/rien.jpg")

sceneMenu.IsIn=function (mouseX,mouseY,button)
  if mouseX > button.x and mouseX < button.x + button.long and mouseY > button.y and mouseY < button.y + button.haut 
  then
    return true
  else
    return false
  end
end


function sceneMenu.update()
  
  if sceneMenu.IsIn (love.mouse.getX(),love.mouse.getY(),bt_PLAY) then
    if love.mouse.isDown(1) then
      currentScene = sceneList.Game
    else
    end
  end

if sceneMenu.IsIn (love.mouse.getX(),love.mouse.getY(),bt_SETTINGS) then
    if love.mouse.isDown(1) then
      currentScene = sceneList.settings
      
    else
    end
  end
if sceneMenu.IsIn (love.mouse.getX(),love.mouse.getY(),bt_QUIT) then
    if love.mouse.isDown(1) then
      love.event.quit()
      
    else
    end
  end


end

function sceneMenu.draw  ()
  love.graphics.setColor(1,1,1)
  love.graphics.draw(sceneMenu.image,0,0,0,4,4)
  love.graphics.setColor(0,1,1)
  love.graphics.draw(bt_PLAY.image,bt_PLAY.x,bt_PLAY.y,0,2,0.5)
  love.graphics.setColor(1,0,1)
  love.graphics.draw(bt_SETTINGS.image,bt_QUIT.x,bt_QUIT.y,0,2,0.5)
  love.graphics.setColor(1,1,0)
  love.graphics.draw(bt_QUIT.image,bt_SETTINGS.x,bt_SETTINGS.y,0,2,0.5)

  love.graphics.setColor(0,0,0)
  love.graphics.print("PLAY",bt_PLAY.x,bt_PLAY.y)
  love.graphics.print("settings",bt_SETTINGS.x,bt_SETTINGS.y)
  love.graphics.print("quit",bt_QUIT.x,bt_QUIT.y)

end

function sceneMenu.keypressed(key)
end


return sceneMenu
