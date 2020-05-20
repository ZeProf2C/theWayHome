victorySceen = {}

victorySceen.image = {}
    victorySceen.image.src = love.graphics.newImage("ressources/Images/rien.jpg")
    victorySceen.image.width  = victorySceen.image.src:getWidth()
    victorySceen.image.scale = victorySceen.image.width/WIDTH

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

victorySceen.IsIn=function (mouseX,mouseY,button)
  if mouseX > button.x - button.long/2 and mouseX < button.x + button.long - button.long/2 and mouseY > button.y - button.haut/2 and mouseY < button.y + button.haut - button.haut/2 
  then
    return true
  else
    return false
  end
end

local u = true --Sert a faire un "load" dans le update

function victorySceen.update (delta)
    if u then
      addScore(timer.stop())
      u = false
    end
    if Menu.IsIn (love.mouse.getX(),love.mouse.getY(),bt_menu) then
        if love.mouse.isDown(1) then

        end
      end
end

function victorySceen.draw()
    love .graphics.setColor(1,1,1)
    love.graphics.draw(victorySceen.image.src,0,0,0,1/victorySceen.image.scale,1/victorySceen.image.scale)
    love .graphics.setColor(0,0,0)
    love.graphics.print("VICTORY !")
    love.graphics.setColor(0,1,1)
    love.graphics.draw(bt_menu.image.src,bt_menu.x,bt_menu.y,0,1/bt_menu.image.scaleX,1/bt_menu.image.scaleY,bt_menu.image.width/2,bt_menu.image.width/2)
    love .graphics.setColor(0,0,0)
    love.graphics.print("back to selection menu",bt_menu.x,bt_menu.y)

end

function victorySceen.keypressed()
end


function victorySceen.mousereleased(x, y, button)
    if victorySceen.IsIn (x,y,bt_menu) then
      if button == 1 then
        currentScene = sceneList.Menulevel
      end
    end
end

return victorySceen