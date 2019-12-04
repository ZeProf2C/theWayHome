caseCountWidth  = 10
caseCountHeight = 10
casePxSide      = 80


function CreateCase(i,j)
  local Case = {}
  Case.side     = casePxSide  
  Case.color    = {0.8,0.8,0.8}
  Case.X        = (i-1)*Case.side
  Case.Y        = (j-1)*Case.side
  Case.name      = (i..";"..j)
  Case.state     = "vide"
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
        Map[i][j].state = "occupe"
      else
        Map[i][j].state = "vide"
      end
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
