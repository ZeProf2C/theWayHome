--title           : minecart; the way home
--description     : projet nsi 
--author          : Pierre-Angelo PEYRIE, Norman ALIE, Vassily ROMAN, Zachary LAURET
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

WIDTH, HEIGHT = love.window.getDesktopDimensions(1)
while caseCountWidth*casePxSide >= WIDTH and caseCountHeight*casePxSide >= HEIGHT do
  casePxSide = casePxSide-3
end
WIDTH, HEIGHT = caseCountWidth*casePxSide, caseCountHeight*casePxSide
love.window.setMode(WIDTH,HEIGHT)

obs = obstacle.new(4, 4, 4, 4, , "obs")
uli = obstacle.new(1, 9, 1, 1, {25/255, 14/255, 130/255}, "uli")

function love.update(dt)
  Map.update()
  Perso.update()
  obs.update(Map)
  uli.update(Map)
end

function love.draw()
  love.graphics.setFont(mainFont)
  love.graphics.setBackgroundColor (0.2,0.2,0.2)
  Perso.draw()

  obs.draw()
  uli.draw()

  Map.draw(true)
end


