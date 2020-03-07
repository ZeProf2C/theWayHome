level3 = {}

level3.name = "niv3"

function level3.reset()
    Perso.XMap = 1
    Perso.YMap = 7
    A.change (2, 3, 3, 3)
    B.change (3, 4, 3, 1)
    C.change (5, 5, 3, 3)
    D.change (3, 9, 3, 1)
    E.change (6, 3, 3, 3)
    F.change (6, 8, 2, 3)
    G.change (7, 2, 3, 1)
    char.Xmap = 1
    char.Ymap = 6
    Map.reset()

end

function level3.update() 
    A.update(Map)
    B.update(Map)
    C.update(Map)
    D.update(Map)
    E.update(Map)
    F.update(Map)
    G.update(Map)
end

function level3.draw ()
    A.draw()
    B.draw()
    C.draw()
    D.draw()
    E.draw()
    F.draw()
    G.draw()
end


return level3