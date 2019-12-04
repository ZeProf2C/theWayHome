Perso = {}
Perso.XMap  = 1
Perso.YMap  = 1
Perso.radius = 30
Perso.nom   = "Pascal"
Perso.Color = {} 
Perso.Color.bg = {0.8,0.8,0.8}
Perso.Color.name = {0.2,0.2,0.2}

function Perso.update ()
  Perso.X     = Perso.XMap * casePxSide - casePxSide/2
  Perso.Y     = Perso.YMap * casePxSide - casePxSide/2
 
end
function Perso.draw ()
  love.graphics.setColor(Perso.Color.bg)
  love.graphics.circle("fill",Perso.X,Perso.Y,Perso.radius,111)
  love.graphics.setColor(Perso.Color.name)
  love.graphics.print( Perso.nom,Perso.X,Perso.Y,0,1,1,mainFont:getWidth(Perso.nom)/2,mainFont:getHeight(Perso.nom)/2)
end

function love.keypressed (key)
  if key == "right" and Perso.XMap < caseCountWidth and Map[Perso.XMap + 1][Perso.YMap].state =="vide" then
    Perso.XMap = Perso.XMap + 1
  end
  if  key =="left"  and Perso.XMap > 1 and Map[Perso.XMap - 1][Perso.YMap].state =="vide"  then
    Perso.XMap = Perso.XMap - 1
  end
  
  if  key =="up"    and Perso.YMap > 1 and Map[Perso.XMap][Perso.YMap - 1].state =="vide" then
    Perso.YMap = Perso.YMap - 1
  end
  
  if  key =="down" and Perso.YMap < caseCountHeight and Map[Perso.XMap][Perso.YMap + 1].state =="vide" then
    Perso.YMap = Perso.YMap + 1
  end
  if key=="escape" then
    love.event.quit()
  end
end