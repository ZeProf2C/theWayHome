--title           : minecart; the way home
--description     : projet nsi 
--author          : Pierre-Angelo PEYRIE, Norman ALIE, Vassily ROMAN, Zachary
--date            : 2019
--version         : 1.0
--language        : lua
--licence         : CC-BY-NC
--statut          : Dev Alpha
--==============================================================================
io.stdout:setvbuf('no')

mainFont = love.graphics.newFont(14)
 
require("Map")
require("Perso")  
require("Obstacle")

WIDTH, HEIGHT = caseCountWidth*casePxSide, caseCountHeight*casePxSide
love.window.setMode(WIDTH,HEIGHT)

obs = obstacle.new(4, 4, 4, 4)
uli = obstacle.new(1, 1, 1, 1, {25/255, 14/255, 130/255}, "Uli Behringer")
function love.update(dt)
  Map.update()
  Perso.update()
  obs.update(Map)
  uli.update(Map)
end

function love.draw ()
  love.graphics.setFont(mainFont)
  love.graphics.setBackgroundColor (0.2,0.2,0.2)
  Map.draw ()
  Perso.draw ()
  love.graphics.setColor(0.8,0.2,0.6)

  love.graphics.print(Map[1][1].state)
  love.graphics.print(Perso.XMap..";"..Perso.YMap,60)

  obs.draw()
  uli.draw()
end


