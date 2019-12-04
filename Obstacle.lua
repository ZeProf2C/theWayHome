obstacle = {}

obstacle.new = function(Xmap, Ymap, lenght, dir, color, name) --X et Y map, les autres params sont facultatifs. Retourne un obj
    local Obstacle = {}
        Obstacle.Xmap = Xmap 
        Obstacle.Ymap = Ymap          --X et Y de départ sur la map
        Obstacle.XmapEnd, Obstacle.YmapEnd = Xmap, Ymap 
        Obstacle.XEnd, Obstacle.YEnd = Obstacle.X, Obstacle.Y
        Obstacle.lenght = lenght or 1 --Longueur de l'obstalce en blocs
        Obstacle.dir = dir or 1       --Direction 1: X croissant, 2: X décroissant, 3: Y croissant, 4: osjoxcbn
        Obstacle.name = name or "UwU"
        Obstacle.color = {}
            Obstacle.color.bg   = color or {62/255, 142/255, 13/255}    --Couleur de l'obstacle
            Obstacle.color.line = {62/255, 142/255, 13/255}             --Couleur du contour (Non implémenté)
        Obstacle.file = "ressources/images/obstacle.png"    --Image de fond de l'obstacle (Non implémenté)

        Obstacle.update = function(map) --Prends un objet map et calcul les coords reels de l'obstacle. Rends .busy ses positions. Ne retourne rien
            if Obstacle.dir == 1 then
                Obstacle.XmapEnd = Obstacle.lenght
                Obstacle.YmapEnd = 1
                Obstacle.X = Obstacle.Xmap * casePxSide - casePxSide
                Obstacle.Y = Obstacle.Ymap * casePxSide - casePxSide
                for i = Obstacle.Xmap, Obstacle.Xmap + Obstacle.lenght-1 do
                    map[i][Obstacle.Ymap].busy = 1
                end
            elseif Obstacle.dir == 2 then
                Obstacle.XmapEnd = - Obstacle.lenght
                Obstacle.YmapEnd = 1
                Obstacle.X = Obstacle.Xmap * casePxSide 
                Obstacle.Y = Obstacle.Ymap * casePxSide - casePxSide
                for i = Obstacle.Xmap, Obstacle.Xmap - Obstacle.lenght+1, -1 do
                    map[i][Obstacle.Ymap].busy = 1
                end
            elseif Obstacle.dir == 3 then
                Obstacle.XmapEnd = 1
                Obstacle.YmapEnd =  Obstacle.lenght
                Obstacle.X = Obstacle.Xmap * casePxSide - casePxSide
                Obstacle.Y = Obstacle.Ymap * casePxSide - casePxSide
                for i = Obstacle.Ymap, Obstacle.Ymap + Obstacle.lenght-1 do
                    map[Obstacle.Xmap][i].busy = 1
                end
            elseif Obstacle.dir == 4 then
                Obstacle.XmapEnd = 1
                Obstacle.YmapEnd = - Obstacle.lenght
                Obstacle.X = Obstacle.Xmap * casePxSide - casePxSide
                Obstacle.Y = Obstacle.Ymap * casePxSide 
                for i = Obstacle.Ymap, Obstacle.Ymap - Obstacle.lenght+1, -1 do
                    map[Obstacle.Xmap][i].busy = 1
                end
            end
            Obstacle.XEnd = Obstacle.XmapEnd * casePxSide 
            Obstacle.YEnd = Obstacle.YmapEnd * casePxSide 
        end

        Obstacle.draw = function() 
            love.graphics.setColor(Obstacle.color.bg)
            love.graphics.rectangle("fill", Obstacle.X, Obstacle.Y, Obstacle.XEnd, Obstacle.YEnd)
        end
    return Obstacle
end