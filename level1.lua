level1 = {}

obs = obstacle.new(7, 3, 4, 3, "ressources/images/bloc.png", "obs")
uli = obstacle.new(6, 2, 3, 1, "ressources/images/bloc.png", "uli")
nenenene = obstacle.new(6, 7, 2, 1, "ressources/images/bloc.png", "nenenene")

function level1.draw ()
    obs.draw()
    uli.draw()
    nenenene.draw()
    
end


return level1