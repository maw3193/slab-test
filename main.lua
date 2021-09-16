local Slab = require "Slab"

function love.load(args)
    Slab.Initialize(args)
    showBox = true
end

function love.update(dt)
    Slab.Update(dt)
    if showBox then
        local Result = Slab.MessageBox("Message Box", "This is a test mesage box.", {Buttons = {"OK", "NO"}})
        if Result ~= "" then
            showBox = false
        end
    end
end

function love.draw()
    Slab.Draw()
end
