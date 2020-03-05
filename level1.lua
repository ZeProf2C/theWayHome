level1 = {}
function level1.load ()
    A = obstacle.new(7, 3, 4, 3, "ressources/images/bloc.png", "A")
    B = obstacle.new(6, 2, 3, 1, "ressources/images/bloc.png", "B")
    C = obstacle.new(6, 7, 2, 1, "ressources/images/bloc.png", "C")
    D = obstacle.new(0, 0, 0, 1, "ressources/images/bloc.png", "D")
    E = obstacle.new(0, 0, 0, 1, "ressources/images/bloc.png", "E")
end


function level1.update() 
    A.update(Map)
    B.update(Map)
    C.update(Map)
    
end


function level1.draw ()
    A.draw()
    B.draw()
    C.draw()
    
end

return level1