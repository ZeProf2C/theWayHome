caseCountWidth  = 10
caseCountHeight = 10
casePxSide      = 80


function CreateCase(i,j)
  local Case = {}
    Case.side     = casePxSide  
    Case.color    = {0.8,0.8,0.8}
    Case.X        = (i-1)*Case.side
    Case.Y        = (j-1)*Case.side
    Case.name     = (i..";"..j)
    Case.state    = "vide"  --Décris ce qui se trouve à l'emplacement X;Y de la map (Utiliser .busy pour indique l'état !)
    Case.busy     = 0       --Indique l'état de l'emplacment X;Y, si il est busy le perso ne peut pas y aller
  return Case
end

Map ={}
for i = 1, caseCountWidth do
  Map[i] ={}
  for j =1,caseCountHeight do
    Map[i][j]=CreateCase(i,j)
  end
end

function Map.update ()
  for i = 1 ,caseCountWidth do
    for j = 1 , caseCountHeight do
      if i == Perso.XMap and j == Perso.YMap then
        Map[i][j].state = "perso"
      else
        Map[i][j].state = "vide"
      end

      if Map[i][j].state == "vide" then   --
        Map[i][j].busy = 0
      else
        Map[i][j].busy = 1
      end

      if Map[i][j].busy == 0 then
        Map[i][j].state = "vide"
      end                                 --Rend un emplacement occupé (.busy) s'il n'est pas vide (.state "vide"), ne fonctionne pas !
    end
  end
end
function Map.draw ()
  for i = 1 ,caseCountWidth do
    for j = 1 , caseCountHeight do
      love.graphics.setColor(Map[i][j].color)
      love.graphics.rectangle("line",Map[i][j].X,Map[i][j].Y,Map[i][j].side,Map[i][j].side)
      love.graphics.print(Map[i][j].name,Map[i][j].X + Map[i][j].side/2,Map[i][j].Y + Map[i][j].side/2,0,1,1,mainFont:getWidth(Map[i][j].name)/2,mainFont:getHeight(Map[i][j].name)/2)
    end
  end
end
