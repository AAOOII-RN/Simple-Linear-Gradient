function love.load()
    ww, wh = love.graphics.getDimensions()
end

function love.draw()
    local size = 64
    for i = 0, wh/size do
        love.graphics.setColor(1,1,1,i/(wh/size))
        love.graphics.rectangle("fill", 0, i*size, ww, size)
    end
end
