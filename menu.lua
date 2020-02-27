Menu = {}
Menu.image = {}
  Menu.image.src   = love.graphics.newImage("ressources/Images/rien.jpg")
  Menu.image.width = Menu.image.src:getWidth()
  Menu.image.scale = Menu.image.width/WIDTH

bt_PLAY = {}
  bt_PLAY.x         = WIDTH*1/2
  bt_PLAY.y         = HEIGHT*1/6
  bt_PLAY.long      = 400
  bt_PLAY.haut      = 100
  bt_PLAY.image     = {}
    bt_PLAY.image.src    = love.graphics.newImage("ressources/Images/rien.jpg")
    bt_PLAY.image.width  = bt_PLAY.image.src:getWidth()
    bt_PLAY.image.height = bt_PLAY.image.src:getHeight()
    bt_PLAY.image.scaleX = bt_PLAY.image.width/bt_PLAY.long
    bt_PLAY.image.scaleY = bt_PLAY.image.height/bt_PLAY.haut

bt_SETTINGS = {}
  bt_SETTINGS.x         = WIDTH/2
  bt_SETTINGS.y         = HEIGHT*3/6
  bt_SETTINGS.long      = 400
  bt_SETTINGS.haut      = 100
  bt_SETTINGS.image     = {}
    bt_SETTINGS.image.src    = love.graphics.newImage("ressources/Images/rien.jpg")
    bt_SETTINGS.image.width  = bt_SETTINGS.image.src:getWidth()
    bt_SETTINGS.image.height = bt_SETTINGS.image.src:getHeight()
    bt_SETTINGS.image.scaleX = bt_SETTINGS.image.width/bt_SETTINGS.long
    bt_SETTINGS.image.scaleY = bt_SETTINGS.image.height/bt_SETTINGS.haut

bt_QUIT = {}
  bt_QUIT.x         = WIDTH/2
  bt_QUIT.y         = HEIGHT*5/6
  bt_QUIT.long      = 400
  bt_QUIT.haut      = 100
  bt_QUIT.image     = {}
    bt_QUIT.image.src    = love.graphics.newImage("ressources/Images/rien.jpg")
    bt_QUIT.image.width  = bt_QUIT.image.src:getWidth()
    bt_QUIT.image.height = bt_QUIT.image.src:getHeight()
    bt_QUIT.image.scaleX = bt_QUIT.image.width/bt_QUIT.long
    bt_QUIT.image.scaleY = bt_QUIT.image.height/bt_QUIT.haut


Menu.IsIn=function (mouseX,mouseY,button)
  if mouseX > button.x - button.long/2 and mouseX < button.x + button.long - button.long/2 and mouseY > button.y - button.haut/2 and mouseY < button.y + button.haut - button.haut/2 
  then
    return true
  else
    return false
  end
end


function Menu.update()

  if Menu.IsIn (love.mouse.getX(),love.mouse.getY(),bt_PLAY) then
    if love.mouse.isDown(1) then
      
    end
  end

  if Menu.IsIn (love.mouse.getX(),love.mouse.getY(),bt_SETTINGS) then
    if love.mouse.isDown(1) then
      
    end
  end

  if Menu.IsIn (love.mouse.getX(),love.mouse.getY(),bt_QUIT) then
    if love.mouse.isDown(1) then
      
    end
  end

end

function Menu.draw  ()
  love.graphics.setColor(1,1,1)
  love.graphics.draw (Menu.image.src,0,0,0,1/Menu.image.scale,1/Menu.image.scale)

  love.graphics.setColor(0,1,1)
  love.graphics.draw(bt_PLAY.image.src,bt_PLAY.x,bt_PLAY.y,0,1/bt_PLAY.image.scaleX,1/bt_PLAY.image.scaleY,bt_PLAY.image.width/2,bt_PLAY.image.width/2)

  love.graphics.setColor(1,0,1)
  love.graphics.draw(bt_SETTINGS.image.src,bt_SETTINGS.x,bt_SETTINGS.y,0,1/bt_SETTINGS.image.scaleX,1/bt_SETTINGS.image.scaleY,bt_SETTINGS.image.width/2,bt_SETTINGS.image.width/2)

  love.graphics.setColor(1,1,0)
  love.graphics.draw(bt_QUIT.image.src,bt_QUIT.x,bt_QUIT.y,0,1/bt_QUIT.image.scaleX,1/bt_QUIT.image.scaleY,bt_QUIT.image.width/2,bt_QUIT.image.width/2)

  love.graphics.setColor(0,0,0)
  love.graphics.print("PLAY",bt_PLAY.x,bt_PLAY.y)
  love.graphics.print("SETTINGS",bt_SETTINGS.x,bt_SETTINGS.y)
  love.graphics.print("QUIT",bt_QUIT.x,bt_QUIT.y)
  love.graphics.print("MENU")


end

function Menu.keypressed(key)
end

function Menu.mousereleased(x, y, button)
  if Menu.IsIn (x,y,bt_PLAY) then
    if button == 1 then
      currentScene = sceneList.Game
      music: play()
    end
  end
  
  if Menu.IsIn (x,y,bt_SETTINGS) then
    if button == 1 then
      currentScene = sceneList.settings
    end
  end
  
  if Menu.IsIn (love.mouse.getX(),love.mouse.getY(),bt_QUIT) then
    if button == 1 then
      love.event.quit()
    end
  end
end


return Menu
