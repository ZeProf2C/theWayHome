timer = {}

timer.reset = function()
    timer.timestamp = 0
    timer.time = 0
end

timer.start = function()
    timer.timestamp = os.time(os.date("!*t"))
end

timer.stop = function()
    timer.time = os.time(os.date("!*t")) - timer.timestamp
    return timer.time
end