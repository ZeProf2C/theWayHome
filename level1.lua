level1 = {}

level1.name = "niv1"

A = obstacle.new(7, 3, 4, 3, "ressources/images/bloc.png", "A")
B = obstacle.new(6, 2, 3, 1, "ressources/images/bloc.png", "B")
C = obstacle.new(6, 7, 2, 1, "ressources/images/bloc.png", "C")
D = obstacle.new(0, 0, 0, 1, "ressources/images/bloc.png", "D")
E = obstacle.new(0, 0, 0, 1, "ressources/images/bloc.png", "E")
F = obstacle.new(0, 0, 0, 1, "ressources/images/bloc.png", "F")
G = obstacle.new(0, 0, 0, 1, "ressources/images/bloc.png", "G")
H = obstacle.new(0, 0, 0, 1, "ressources/images/bloc.png", "H")
I = obstacle.new(0, 0, 0, 1, "ressources/images/bloc.png", "I")
J = obstacle.new(0, 0, 0, 1, "ressources/images/bloc.png", "J")
   
function level1.reset()
    Perso.XMap = 1
    Perso.YMap = 4
    A.change (7, 3, 4, 3)
    B.change (6, 2, 3, 1)
    C.change (6, 7, 2, 1)
   
    char.Xmap = 1
    char.Ymap = 5
    Map.reset()
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