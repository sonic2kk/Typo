typo = {}

function typo_new(text, delay, width, align, x, y, font, colour)
  local t = {
    t = text,
    delay = delay,
    width = width,
    align = align,
    x = x,
    y = y,
    font = font,
    colour = colour,

    string = {},
    index = 1,
    timer = 0,

    text = ''
  }

  local i = 1

  for c in text:gmatch('.') do
    t.string[i] = c

    i = i + 1
  end

  table.insert(typo, t)
end

function typo_update(dt)
  for i,v in ipairs(typo) do
    v.timer = v.timer + dt

    if v.timer >= v.delay and v.index <= #v.string then
      v.text = v.text .. tostring(v.string[v.index])

      v.index = v.index + 1

      v.timer = 0
    end
  end
end

function typo_draw()
  for i,v in ipairs(typo) do
    love.graphics.setColor(v.colour)
    love.graphics.setFont(v.font)
    love.graphics.printf(v.text, v.x, v.y, v.width, v.align)
  end
end