chariot = {}

chariot.new = function(Xmap, Ymap, image, railImage)
  local Chariot = {}
   Chariot.Xmap =1
   Chariot.Ymap = 5
   Chariot.X = Chariot.Xmap * casePxSide - casePxSide
   Chariot.Y = Chariot.Ymap * casePxSide - casePxSide
   Chariot.speed = 100
   Chariot.image = love.graphics.newImage(image)

   Chariot.rail = {}
    Chariot.rail.src = love.graphics.newImage(railImage)

   Chariot.update = function(map)
      Chariot.X = Chariot.Xmap * casePxSide - casePxSide
      Chariot.Y = Chariot.Ymap * casePxSide - casePxSide
    end
    
    Chariot.draw = function()
      for i = 0,10 do
        love.graphics.draw(Chariot.rail.src, 80*i, Chariot.Y,0,0.08,0.1)
      end
      
      love.graphics.draw(Chariot.image, Chariot.X, Chariot.Y,0,0.2,0.2)
    end

  return Chariot
end

