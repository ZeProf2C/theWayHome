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

obs = obstacle.new(4, 4, 3, 4, {25/255, 14/255, 130/255}, "obs")
uli = obstacle.new(1, 9, 1, 1, {25/255, 14/255, 130/255}, "uli")

char = chariot.new(5, 1, "ressources/images/chariot.png")

function love.load ()
  Perso.Img       = love.graphics.newImage("ressources/Images/Pascal.png")   -- chargement des fichiers son et image
  Perso.Width     = Perso.Img:getWidth()
  Perso.Height    = Perso.Img:getHeight()
  obstacle.Img    = love.graphics.newImage("ressources/Images/bloc.png")
  obstacle.Width  = obstacle.Img:getWidth()
  obstacle.scale  = obstacle.Width/casePxSide -- variable adaptant l'image au format des cases
  Background      = love.graphics.newImage("ressources/Images/Grotte.jpg")
  music           = love.audio.newSource("ressources/musiques/Musique1.wav","stream")

    
end

function love.update(dt)
  Map.update()
  Perso.update()
  obs.update(Map)
  uli.update(Map)
  char.update(Map)
  music: setLooping(true)
  music: play()
end


function love.draw()
  love.graphics.setColor(1,1,1)
  love.graphics.draw(Background,0,0,0,0.4,0.4)
  love.graphics.setFont(mainFont)
  Perso.draw()

  obs.draw()
  uli.draw()
  
  char.draw()
  
  Map.draw(false)
  
end