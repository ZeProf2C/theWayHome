menuLevels = {}

menuLevels = {}
menuLevels.image = {}
    menuLevels.image.src = love.graphics.newImage("ressources/Images/rien.jpg")
    menuLevels.image.width  = menuLevels.image.src:getWidth()
    menuLevels.image.scale = menuLevels.image.width/WIDTH

bt_lv1 = {}
  bt_lv1.x         = WIDTH*2/10
  bt_lv1.y         = HEIGHT*2/10
  bt_lv1.long      = 400
  bt_lv1.haut      = 100
  bt_lv1.image     = {}
    bt_lv1.image.src    = love.graphics.newImage("ressources/Images/rien.jpg")
    bt_lv1.image.width  = bt_lv1.image.src:getWidth() 
    bt_lv1.image.height = bt_lv1.image.src:getHeight()
    bt_lv1.image.scaleX = bt_lv1.image.width/bt_lv1.long
    bt_lv1.image.scaleY = bt_lv1.image.height/bt_lv1.haut

bt_lv2 = {}
  bt_lv2.x         = WIDTH*2/10
  bt_lv2.y         = HEIGHT*4/10
  bt_lv2.long      = 400
  bt_lv2.haut      = 100
  bt_lv2.image     = {}
    bt_lv2.image.src    = love.graphics.newImage("ressources/Images/rien.jpg")
    bt_lv2.image.width  = bt_lv2.image.src:getWidth() 
    bt_lv2.image.height = bt_lv2.image.src:getHeight()
    bt_lv2.image.scaleX = bt_lv2.image.width/bt_lv2.long
    bt_lv2.image.scaleY = bt_lv2.image.height/bt_lv2.haut

bt_lv3 = {}
  bt_lv3.x         = WIDTH*2/10
  bt_lv3.y         = HEIGHT*6/10
  bt_lv3.long      = 400
  bt_lv3.haut      = 100
  bt_lv3.image     = {}
    bt_lv3.image.src    = love.graphics.newImage("ressources/Images/rien.jpg")
    bt_lv3.image.width  = bt_lv3.image.src:getWidth() 
    bt_lv3.image.height = bt_lv3.image.src:getHeight()
    bt_lv3.image.scaleX = bt_lv3.image.width/bt_lv3.long
    bt_lv3.image.scaleY = bt_lv3.image.height/bt_lv3.haut
  
bt_lv4 = {}
  bt_lv4.x         = WIDTH*2/10
  bt_lv4.y         = HEIGHT*8/10
  bt_lv4.long      = 400
  bt_lv4.haut      = 100
  bt_lv4.image     = {}
    bt_lv4.image.src    = love.graphics.newImage("ressources/Images/rien.jpg")
    bt_lv4.image.width  = bt_lv4.image.src:getWidth() 
    bt_lv4.image.height = bt_lv4.image.src:getHeight()
    bt_lv4.image.scaleX = bt_lv4.image.width/bt_lv4.long
    bt_lv4.image.scaleY = bt_lv4.image.height/bt_lv4.haut


bt_menu = {}
  bt_menu.x         = WIDTH*7/10
  bt_menu.y         = HEIGHT*9/10
  bt_menu.long      = 400
  bt_menu.haut      = 100
  bt_menu.image     = {}
    bt_menu.image.src    = love.graphics.newImage("ressources/Images/rien.jpg")
    bt_menu.image.width  = bt_menu.image.src:getWidth()
    bt_menu.image.height = bt_menu.image.src:getHeight()
    bt_menu.image.scaleX = bt_menu.image.width/bt_menu.long
    bt_menu.image.scaleY = bt_menu.image.height/bt_menu.haut


menuLevels.IsIn=function (mouseX,mouseY,button)
  if mouseX > button.x - button.long/2 and mouseX < button.x + button.long - button.long/2 and mouseY > button.y - button.haut/2 and mouseY < button.y + button.haut - button.haut/2 
  then
    return true
  else
    return false
  end
end

local u = true --Sert a faire un "load" dans le update

function menuLevels.update (delta)
    if u then
      timer.reset()
      u = false
    end
    if menuLevels.IsIn (love.mouse.getX(),love.mouse.getY(),bt_lv1) then
        if love.mouse.isDown(1) then

        end
      end
      if menuLevels.IsIn (love.mouse.getX(),love.mouse.getY(),bt_lv2) then
        if love.mouse.isDown(1) then

        end
      end
    if menuLevels.IsIn (love.mouse.getX(),love.mouse.getY(),bt_lv3) then
        if love.mouse.isDown(1) then

        end
      end
    if menuLevels.IsIn (love.mouse.getX(),love.mouse.getY(),bt_lv4) then
        if love.mouse.isDown(1) then

        end
      end
    if menuLevels.IsIn (love.mouse.getX(),love.mouse.getY(),bt_menu) then
        if love.mouse.isDown(1) then

        end
      end
end

function menuLevels.draw()
    love .graphics.setColor(1,1,1)
    love.graphics.draw(menuLevels.image.src,0,0,0,1/menuLevels.image.scale,1/menuLevels.image.scale)
    love .graphics.setColor(0,0,0)
    love.graphics.print("CHOOSE YOUR LEVEL ")
    love.graphics.setColor(0,1,1)
    love.graphics.draw(bt_lv1.image.src,bt_lv1.x,bt_lv1.y,0,1/bt_lv1.image.scaleX,1/bt_lv1.image.scaleY,bt_lv1.image.width/2,bt_lv1.image.width/2)
    love.graphics.draw(bt_lv2.image.src,bt_lv2.x,bt_lv2.y,0,1/bt_lv2.image.scaleX,1/bt_lv2.image.scaleY,bt_lv2.image.width/2,bt_lv2.image.width/2)
    love.graphics.draw(bt_lv3.image.src,bt_lv3.x,bt_lv3.y,0,1/bt_lv3.image.scaleX,1/bt_lv3.image.scaleY,bt_lv3.image.width/2,bt_lv3.image.width/2)
    love.graphics.draw(bt_lv4.image.src,bt_lv4.x,bt_lv4.y,0,1/bt_lv4.image.scaleX,1/bt_lv4.image.scaleY,bt_lv4.image.width/2,bt_lv4.image.width/2)
    love.graphics.draw(bt_menu.image.src,bt_menu.x,bt_menu.y,0,1/bt_menu.image.scaleX,1/bt_menu.image.scaleY,bt_menu.image.width/2,bt_menu.image.width/2)
    love .graphics.setColor(0,0,0)
    love.graphics.print("LEVEL 1",bt_lv1.x,bt_lv1.y)
    love.graphics.print("LEVEL 2",bt_lv2.x,bt_lv2.y)
    love.graphics.print("LEVEL 3",bt_lv3.x,bt_lv3.y)
    love.graphics.print("LEVEL 4",bt_lv4.x,bt_lv4.y)
    love.graphics.print("back to menu",bt_menu.x,bt_menu.y)

end

function menuLevels.keypressed()
end


function menuLevels.mousereleased(x, y, button)
  if menuLevels.IsIn (x,y,bt_lv1) and button == 1 then
    currentlevel = levelList.lv1
    currentlevel.reset()
    currentScene = sceneList.Game
    music: play()
    timer.start()
  end

  if menuLevels.IsIn (x,y,bt_lv2) and button == 1 then
    currentlevel = levelList.lv2
    currentlevel.reset()
    currentScene = sceneList.Game
    music: play()
    timer.start()
  end
  if menuLevels.IsIn (x,y,bt_lv3) and button == 1 then
    currentlevel = levelList.lv3
    currentlevel.reset()
    currentScene = sceneList.Game
    music: play()
    timer.start()
  end
  if menuLevels.IsIn (x,y,bt_lv4) and button == 1 then
    currentlevel = levelList.lv4
    currentlevel.reset()
    currentScene = sceneList.Game
    music: play()
    timer.start()
  end


  if menuLevels.IsIn (x,y,bt_menu) then 
    currentScene = sceneList.Menu
  end
end

return menuLevels