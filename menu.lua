sceneMenu = {}

bt_PLAY = {}
bt_PLAY.x         = 0
bt_PLAY.y         = 0
bt_PLAY.long      = 200
bt_PLAY.haut      = 50

bt_SETTINGS = {}
bt_SETTINGS.x         = 0
bt_SETTINGS.y         = 0
bt_SETTINGS.long      = 200
bt_SETTINGS.haut      = 50

bt_QUIT = {}
bt_QUIT.x         = 0
bt_QUIT.y         = 0
bt_QUIT.long      = 200
bt_QUIT.haut      = 50

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
      love.event.quit
      
    else
    end
  end


end
