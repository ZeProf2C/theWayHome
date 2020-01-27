chariot = {}

chariot.new = function(Xmap, Ymap, image)
  local Chariot = {}
   Chariot.Xmap = 0
   Chariot.Ymap = -3
   Chariot.X = Chariot.Xmap * casePxSide - casePxSide
   Chariot.Y = Chariot.Ymap * casePxSide - casePxSide
   Chariot.speed = 100
   Chariot.image = love.graphics.newImage(image)
   
   Chariot.update = function(map)
      Chariot.X = Chariot.Xmap * casePxSide - casePxSide
      Chariot.Y = Chariot.Ymap * casePxSide - casePxSide
    end
    
    Chariot.draw = function()
      love.graphics.draw(Chariot.image, Chariot.X, Chariot.Y)
    end
  return Chariot
  end