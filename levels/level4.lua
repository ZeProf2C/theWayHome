level4 = {}

level4.name = "niv3"

function level4.reset()
    Perso.XMap = 1
    Perso.YMap = 7
    A.change (2, 3, 3, 1)
    B.change (4, 6, 2, 3)
    C.change (4, 8, 2, 1)
    D.change (5, 4, 4, 3)
    E.change (6, 6, 3, 3)
    F.change (8, 3, 2, 1)
    G.change (8, 4, 5, 3)
    H.change (9, 4, 3, 3)
    I.change (11,4, 5, 3)

    char.Xmap = 1
    char.Ymap = 6
    Map.reset()

end

function level4.update() 
    A.update(Map)
    B.update(Map)
    C.update(Map)
    D.update(Map)
    E.update(Map)
    F.update(Map)
    G.update(Map)
    H.update(Map)
    I.update(Map)
    J.update(Map)

end

function level4.draw ()
    A.draw()
    B.draw()
    C.draw()
    D.draw()
    E.draw()
    F.draw()
    G.draw()
    H.draw()
    I.draw()
    J.draw()

end


return level4