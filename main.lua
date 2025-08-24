local rects = 128
local ww, wh = love.graphics.getDimensions()

function love.load()
    gradient = love.graphics.newCanvas(1000, 1000)

    love.graphics.setCanvas(gradient)
    for i = 0, rects do
        love.graphics.setColor(i/rects,0,0.5)
        love.graphics.rectangle("fill", 0, i*(1000/rects), 1000, 1000/rects)
    end
    love.graphics.setCanvas()
end

function love.resize(w, h)
    ww = w
    wh = h
end

function love.draw()
    love.graphics.setColor(1,1,1)
    local scale = ((ww*ww + wh*wh)^0.5)/1000 -- I pay attention to my trigo classes
    love.graphics.draw(gradient, ww/2, wh/2, os.clock(), scale, scale, gradient:getWidth()/2, gradient:getHeight()/2)
end
