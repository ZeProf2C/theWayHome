chariot = {}

chariot.new = function(Xmap, Ymap, image)
  local Chariot = {}
   Chariot.Xmap =1
   Chariot.Ymap = 5
   Chariot.X = Chariot.Xmap * casePxSide - casePxSide
   Chariot.Y = Chariot.Ymap * casePxSide - casePxSide
   Chariot.speed = 100
   Chariot.image = love.graphics.newImage(image)
   
   Chariot.update = function(map)
      Chariot.X = Chariot.Xmap * casePxSide - casePxSide
      Chariot.Y = Chariot.Ymap * casePxSide - casePxSide
    end
    
    Chariot.draw = function()
      love.graphics.draw(Chariot.image, Chariot.X, Chariot.Y,0,0.2,0.2)
    end
  return Chariot
  end