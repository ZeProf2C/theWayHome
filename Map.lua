caseCountWidth  = 10
caseCountHeight = 9
casePxSide      = 80


function CreateCase(i,j)
  local Case = {}
    Case.side     = casePxSide  
    Case.color    = {0.8,0.8,0.8}
    Case.X        = (i-1)*Case.side
    Case.Y        = (j-1)*Case.side
    Case.name     = (i..";"..j)
    Case.state    = "vide"  --Décris ce qui se trouve à l'emplacement X;Y de la map (Utiliser .busy pour indique l'état !)
    Case.busy     = false   --Indique l'état de l'emplacment X;Y, si il est busy le perso ne peut pas y aller
  return Case
end

Map ={}
for i = 1, caseCountWidth do
  Map[i] ={}
  for j =1,caseCountHeight do
    Map[i][j]=CreateCase(i,j)
  end
end

function Map.update()
  for i = 1 ,caseCountWidth do
    for j = 1 , caseCountHeight do
      if Map[i][j].state ~= "vide" then
        Map[i][j].busy = true
      else
        Map[i][j].busy = false
      end
    end
  end
end

function Map.draw(debug)
  debug = debug or false
  for i = 1 ,caseCountWidth do
    for j = 1 , caseCountHeight do
      if debug then
        love.graphics.setColor(Map[i][j].color)
        love.graphics.rectangle("line",Map[i][j].X,Map[i][j].Y,Map[i][j].side,Map[i][j].side)
        love.graphics.print(Map[i][j].name,Map[i][j].X + Map[i][j].side/2,Map[i][j].Y + Map[i][j].side/2,0,1,1,mainFont:getWidth(Map[i][j].name)/2,mainFont:getHeight(Map[i][j].name)/2)
        
        love.graphics.setColor(0.8,0.2,0.6)
        love.graphics.print(Map[i][j].state, Map[i][j].X, Map[i][j].Y)
        
        love.graphics.setColor(0.2,0.6,0.8)
        if Map[i][j].busy then love.graphics.print(1, Map[i][j].X+casePxSide-10, Map[i][j].Y)
        else love.graphics.print(0, Map[i][j].X+casePxSide-10, Map[i][j].Y) end
        
      end
    end
  end
end
