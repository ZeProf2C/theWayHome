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
  UNUSED 2 - X décroissants (vers la gauche)
  3 - Y croissants (vers le bas)
  UNUSED 4 - Y décroissants (vers le haut)
]]--
--==============================================================================
io.stdout:setvbuf('no')



mainFont = love.graphics.newFont(14)
WIDTH, HEIGHT = love.window.getDesktopDimensions(1)

caseCountWidth  = 11
caseCountHeight = 11
casePxSide      = 80

while caseCountWidth*casePxSide >= WIDTH and caseCountHeight*casePxSide >= HEIGHT do
  casePxSide = casePxSide-3
end
WIDTH, HEIGHT = caseCountWidth*casePxSide, caseCountHeight*casePxSide
love.window.setMode(WIDTH,HEIGHT)

require("timer")
sceneList = {}
sceneList.Intro    = require("titlescreen")
sceneList.Menu     = require("menu")
sceneList.Game     = require("game")
sceneList.victory  = require("victoryscreen")
sceneList.Menulevel= require("menuLevels")
sceneList.settings = require("menu")

currentScene = sceneList.Intro


function love.load()
  backgroundImage = love.graphics.newImage("ressources/Images/Grotte.jpg")

  char.load(Map)

  music = love.audio.newSource("ressources/musiques/Musique1.wav","static")
  music: setLooping(true)
  music: setVolume(1)
  
end

function love.update(dt)
  currentScene.update(dt)
end


function love.draw()
 currentScene.draw()
end

function love.keypressed(key)
  currentScene.keypressed(key)
  if key == "escape" then
      love.event.quit()
  end
end

function love.mousereleased(x, y, button)
  currentScene.mousereleased(x, y, button)
end
