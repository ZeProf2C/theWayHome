Perso = {}
Perso.XMap  = 1
Perso.YMap  = 1
Perso.radius = 30
Perso.nom   = "Pascal"
Perso.Color = {} 
  Perso.Color.bg = {0.8,0.8,0.8}
  Perso.Color.name = {0.2,0.2,0.2}

function Perso.update()
  Perso.X     = Perso.XMap * casePxSide - casePxSide/2
  Perso.Y     = Perso.YMap * casePxSide - casePxSide/2
end

function Perso.draw()
  love.graphics.setColor(Perso.Color.bg)
  love.graphics.circle("fill",Perso.X,Perso.Y,Perso.radius,111)
  love.graphics.setColor(Perso.Color.name)
  love.graphics.print( Perso.nom,Perso.X,Perso.Y,0,1,1,mainFont:getWidth(Perso.nom)/2,mainFont:getHeight(Perso.nom)/2)
end

function love.keypressed(key)
  if key == controls.right and Perso.XMap < caseCountWidth then
    if Map[Perso.XMap + 1][Perso.YMap].busy == true then
      obstacle.move(Map[Perso.XMap + 1][Perso.YMap].state)
    else
      Map[Perso.XMap][Perso.YMap].state = "vide"
      Perso.XMap = Perso.XMap + 1
      Map[Perso.XMap][Perso.YMap].state = "perso"
    end
  end
  if  key == controls.left and Perso.XMap > 1 and Map[Perso.XMap - 1][Perso.YMap].busy == false  then
    Map[Perso.XMap][Perso.YMap].state = "vide"
    Perso.XMap = Perso.XMap - 1
    Map[Perso.XMap][Perso.YMap].state = "perso"
  end
  
  if  key == controls.up and Perso.YMap > 1 and Map[Perso.XMap][Perso.YMap - 1].busy == false then
    Map[Perso.XMap][Perso.YMap].state = "vide"
    Perso.YMap = Perso.YMap - 1
    Map[Perso.XMap][Perso.YMap].state = "perso"
  end
  
  if  key == controls.down and Perso.YMap < caseCountHeight and Map[Perso.XMap][Perso.YMap + 1].busy == false then
    Map[Perso.XMap][Perso.YMap].state = "vide"
    Perso.YMap = Perso.YMap + 1
    Map[Perso.XMap][Perso.YMap].state = "perso"
  end

  if key==controls.quit then
    love.event.quit()
  end
end