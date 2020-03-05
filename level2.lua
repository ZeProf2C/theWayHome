level2 = {}

function level2.load()
    A = obstacle.new(5, 5, 1, 3, "ressources/images/bloc.png", "A")
    B = obstacle.new(3, 4, 5, 1, "ressources/images/bloc.png", "B")
    C = obstacle.new(1, 1, 3, 3, "ressources/images/bloc.png", "C")
    D = obstacle.new(9, 1, 3, 3, "ressources/images/bloc.png", "D")
    E = obstacle.new(1, 8, 3, 1, "ressources/images/bloc.png", "E")

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