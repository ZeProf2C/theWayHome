--title           : minecart; the way home
--description     : projet nsi 
--author          : Pierre-Angelo PEYRIE, Norman ALIE, Vassily ROMAN, Zachary LAURET
--date            : 2019
--version         : 1.0
--language        : lua
--licence         : CC-BY-NC
--statut          : Dev Alpha
--==============================================================================
--[[
Directions : 
  1 - X croissants (vers la droite)
  2 - X décroissants (vers la gauche)
  3 - Y croissants (vers le bas)
  4 - Y décroissants (vers le haut)
]]--
--==============================================================================
io.stdout:setvbuf('no')

mainFont = love.graphics.newFont(14)

require("xml")
require("Map")
require("Perso")  
require("Obstacle")
require("Chariot")

WIDTH, HEIGHT = love.window.getDesktopDimensions(1)
while caseCountWidth*casePxSide >= WIDTH and caseCountHeight*casePxSide >= HEIGHT do
  casePxSide = casePxSide-3
end
WIDTH, HEIGHT = caseCountWidth*casePxSide, caseCountHeight*casePxSide
love.window.setMode(WIDTH,HEIGHT)

obs = obstacle.new(7, 6, 4, 4, "ressources/images/bloc.png", "obs")
uli = obstacle.new(3, 2, 3, 1, "ressources/images/bloc.png", "uli")

char = chariot.new(5, 1, "ressources/images/chariot.png", "ressources/Images/rail.png")
charSpeed = 100

dtSum = 0 
UpdtTime = 1 

function love.load ()
  backgroundImage = love.graphics.newImage("ressources/Images/Grotte.jpg")
  music           = love.audio.newSource("ressources/musiques/Musique1.wav","static")

  music: setLooping(true)
  music: setVolume(1)
  music: play()  
end

function love.update(dt)
  dtSum = dtSum + dt
  Map.update()
  Perso.update()
  obs.update(Map)
  uli.update(Map)
  

  if dtSum > UpdtTime then
    char.update(Map)
    dtSum = 0
  end
end


function love.draw()
  love.graphics.setColor(1,1,1)
  love.graphics.draw(backgroundImage,0,0,0,0.4,0.4)
  love.graphics.setFont(mainFont)

  char.draw()

  Perso.draw()

  obs.draw()
  uli.draw()
  

  Map.draw(false)

  
end