level2 = {}

level2.name = "niv2"

function level2.reset()
    Perso.XMap = 1
    Perso.YMap = 4
    A.change (4, 4, 3, 3)
    B.change (4, 3, 3, 1)
    C.change (8, 3, 3, 3)
    D.change (6, 6, 3, 1)
    E.change (9, 4, 3, 3)
    char.Xmap = 1
    char.Ymap = 5
    Map.reset()

end

function level2.update() 
    A.update(Map)
    B.update(Map)
    C.update(Map)
    D.update (Map)
    E.update (Map)

end

function level2.draw ()
    A.draw()
    B.draw()
    C.draw()
    D.draw ()
    E.draw ()

    
end


return level2