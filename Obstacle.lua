obstacle = {}


obstacle.new = function(Xmap, Ymap, lenght, dir, image, name) 
    local Obstacle = {}
        Obstacle.Xmap = Xmap 
        Obstacle.Ymap = Ymap          --X et Y de départ sur la map
        Obstacle.XmapEnd, Obstacle.YmapEnd = Xmap, Ymap 
        Obstacle.XEnd, Obstacle.YEnd = Obstacle.X, Obstacle.Y
        Obstacle.lenght = lenght or 1 --Longueur de l'obstalce en blocs
        Obstacle.dir = dir or 1       --Direction 1: X croissant, 2: X décroissant, 3: Y croissant, 4: osjoxcbn
        Obstacle.name = name
        Obstacle.image = {}
            Obstacle.image.src   = love.graphics.newImage(image)
            Obstacle.image.width = Obstacle.image.src:getWidth()
            Obstacle.image.scale = Obstacle.image.width/casePxSide
        

        Obstacle.update = function(map) --Prends un objet map et calcul les coords reels de l'obstacle. Rends .busy ses positions. Ne retourne rien
            if Obstacle.dir == 1 then
                Obstacle.XmapEnd = Obstacle.lenght
                Obstacle.YmapEnd = 1
                Obstacle.X = Obstacle.Xmap * casePxSide - casePxSide
                Obstacle.Y = Obstacle.Ymap * casePxSide - casePxSide
                for i = Obstacle.Xmap, Obstacle.Xmap + Obstacle.lenght-1 do
                    map[i][Obstacle.Ymap].state = Obstacle.name
                end
            elseif Obstacle.dir == 2 then
                Obstacle.XmapEnd = - Obstacle.lenght
                Obstacle.YmapEnd = 1
                Obstacle.X = Obstacle.Xmap * casePxSide 
                Obstacle.Y = Obstacle.Ymap * casePxSide - casePxSide
                for i = Obstacle.Xmap, Obstacle.Xmap - Obstacle.lenght+1, -1 do
                    map[i][Obstacle.Ymap].state = Obstacle.name
                end
            elseif Obstacle.dir == 3 then
                Obstacle.XmapEnd = 1
                Obstacle.YmapEnd =  Obstacle.lenght
                Obstacle.X = Obstacle.Xmap * casePxSide - casePxSide
                Obstacle.Y = Obstacle.Ymap * casePxSide - casePxSide
                for i = Obstacle.Ymap, Obstacle.Ymap + Obstacle.lenght-1 do
                    map[Obstacle.Xmap][i].state = Obstacle.name
                end
            elseif Obstacle.dir == 4 then
                Obstacle.XmapEnd = 1
                Obstacle.YmapEnd = - Obstacle.lenght
                Obstacle.X = Obstacle.Xmap * casePxSide - casePxSide
                Obstacle.Y = Obstacle.Ymap * casePxSide 
                for i = Obstacle.Ymap, Obstacle.Ymap - Obstacle.lenght+1, -1 do
                    map[Obstacle.Xmap][i].state = Obstacle.name
                end
            end
            Obstacle.XEnd = Obstacle.XmapEnd * casePxSide 
            Obstacle.YEnd = Obstacle.YmapEnd * casePxSide 
        end

        Obstacle.draw = function() 
            love.graphics.draw(Obstacle.image.src, Obstacle.X, Obstacle.Y,0,Obstacle.XmapEnd/Obstacle.image.scale, Obstacle.YmapEnd/Obstacle.image.scale)
        end

        Obstacle.move = function(key, map)
            if (Obstacle.dir == 1 or Obstacle.dir == 2) and key == controls.right then
                if Perso.XMap == Obstacle.Xmap-1 and Perso.YMap == Obstacle.Ymap then
                    Obstacle.Xmap = Obstacle.Xmap + 1
                    Obstacle.XmapEnd = Obstacle.XmapEnd + 1
                    map[Obstacle.Xmap-1][Obstacle.Ymap].state = "vide"
                end
            end
            if (Obstacle.dir == 1 or Obstacle.dir == 2) and key == controls.left then
                if Perso.XMap == Obstacle.Xmap+1 and Perso.YMap == Obstacle.Ymap then
                    Obstacle.Xmap = Obstacle.Xmap - 1
                    Obstacle.XmapEnd = Obstacle.XmapEnd - 1
                    map[Obstacle.Xmap+1][Obstacle.Ymap].state = "vide"
                end
            end
        end
    return Obstacle
end

obstacle.move = function()
end