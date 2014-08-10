require('typo')

function love.load()
    typo_new("Hello, World", 0.5, 500, 'center', 0, 0, love.graphics.newFont(30), { 255, 255, 255 })
end

function love.update(dt)
    typo_update(dt)
end

function love.draw()
    typo_draw()
end