level2 = {}

A = obstacle.new(5, 5, 1, 3, "ressources/images/bloc.png", "A")
B = obstacle.new(3, 4, 5, 1, "ressources/images/bloc.png", "B")
C = obstacle.new(1, 4, 3, 4, "ressources/images/bloc.png", "C")
D = obstacle.new(9, 4, 3, 4, "ressources/images/bloc.png", "D")
E = obstacle.new(1, 8, 3, 1, "ressources/images/bloc.png", "E")

function level2.draw ()
    A.draw()
    B.draw()
    C.draw()
   -- D.draw ()
    --E.draw ()

    
end


return level2