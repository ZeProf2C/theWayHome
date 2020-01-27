Perso = {}
Perso.XMap  = 1
Perso.YMap  = 1
Perso.radius = 30
Perso.nom   = "Pascal"
Perso.dir = 0 --Orientation du perso en Degre
Perso.image = {} 
  Perso.image.src    = love.graphics.newImage("ressources/Images/Pascal.png")
  Perso.image.width  = Perso.image.src:getWidth()
  Perso.image.height = Perso.image.src:getHeight()

function Perso.update()
  Perso.X     = Perso.XMap * casePxSide - casePxSide/2
  Perso.Y     = Perso.YMap * casePxSide - casePxSide/2
end

function Perso.draw()
  love.graphics.draw(Perso.image.src,Perso.X,Perso.Y, math.rad(Perso.dir),0.15,0.15,Perso.image.width/2,Perso.image.height/2)
end

function love.keypressed(key)
  if key == controls.right and Perso.XMap < caseCountWidth then
    Perso.dir = 0
    if Map[Perso.XMap + 1][Perso.YMap].busy == true then
      obstacle.move(Map[Perso.XMap + 1][Perso.YMap].state, Perso.Xmap, Perso.Ymap,  1)
    else
      Map[Perso.XMap][Perso.YMap].state = "vide"
      Perso.XMap = Perso.XMap + 1
      Map[Perso.XMap][Perso.YMap].state = "perso"
    end
  end
  if  key == controls.left and Perso.XMap > 1 then
    Perso.dir = 180
    if Map[Perso.XMap - 1][Perso.YMap].busy == true then
      obstacle.move(Map[Perso.XMap - 1][Perso.YMap].state, Perso.Xmap, Perso.Ymap,  2)
    else
      Map[Perso.XMap][Perso.YMap].state = "vide"
      Perso.XMap = Perso.XMap - 1
      Map[Perso.XMap][Perso.YMap].state = "perso"
    end
  end
  
  if  key == controls.up and Perso.YMap > 1 then
    Perso.dir = 270
    if Map[Perso.XMap][Perso.YMap - 1].busy == true then
      obstacle.move(Map[Perso.XMap][Perso.YMap - 1].state, Perso.Xmap, Perso.Ymap,  4)
    else
      Map[Perso.XMap][Perso.YMap].state = "vide"
      Perso.YMap = Perso.YMap - 1
      Map[Perso.XMap][Perso.YMap].state = "perso"
    end
  end
  
  if  key == controls.down and Perso.YMap < caseCountHeight then
    Perso.dir = 90
    if Map[Perso.XMap][Perso.YMap + 1].busy == true then
      obstacle.move(Map[Perso.XMap][Perso.YMap + 1].state, Perso.Xmap, Perso.Ymap,  3)
    else
      Map[Perso.XMap][Perso.YMap].state = "vide"
      Perso.YMap = Perso.YMap + 1
      Map[Perso.XMap][Perso.YMap].state = "perso"
    end
  end

  if key==controls.quit then
    love.event.quit()
  end
end