chariot = {}

chariot.new = function(Xmap, Ymap, image, railImage)
  local Chariot = {}
   Chariot.Xmap =1
   Chariot.Ymap = 6
   Chariot.X = Chariot.Xmap * casePxSide - casePxSide
   Chariot.Y = Chariot.Ymap * casePxSide - casePxSide
   Chariot.speed = 1
   Chariot.image = love.graphics.newImage(image)

   Chariot.rail = {}
    Chariot.rail.src = love.graphics.newImage(railImage)
  
   Chariot.load = function(map)
    map[Chariot.Xmap][Chariot.Ymap].state = "chariot"
    map[Chariot.Xmap+1][Chariot.Ymap].state = "chariot"
   end

   Chariot.update = function(map)
      if map[Chariot.Xmap+2][Chariot.Ymap].busy == false and Chariot.Xmap+Chariot.speed+1 < caseCountWidth then
        Chariot.Xmap = Chariot.Xmap + Chariot.speed
      elseif map[Chariot.Xmap+2][Chariot.Ymap].busy == false and Chariot.Xmap+Chariot.speed+1 == caseCountWidth then
        music: stop()
        
        currentScene = sceneList.victory
      end
      
      Chariot.X = Chariot.Xmap * casePxSide - casePxSide
      Chariot.Y = Chariot.Ymap * casePxSide - casePxSide
      
      map[Chariot.Xmap-1][Chariot.Ymap].state = "vide"
      map[Chariot.Xmap][Chariot.Ymap].state = "chariot"
      map[Chariot.Xmap+1][Chariot.Ymap].state = "chariot"
    end
    
    Chariot.draw = function()
      for i = 0,10 do
        love.graphics.draw(Chariot.rail.src, 80*i, Chariot.Y,0,0.08,0.1)
      end

      love.graphics.draw(Chariot.image, Chariot.X, Chariot.Y,0,0.2,0.2)
    end

  return Chariot
end

