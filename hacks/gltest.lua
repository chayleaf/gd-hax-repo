GL = OpenGL()
GL:PushMatrix()
GL:Translatef(x+width/2, y+height/2, 0) --set box position
GL:Rotatef(rot, 0, 0, 1)                --rotate the box
GL:Begin(GL_QUADS)
GL:Color3f(0, 1.0, 0)                   --set box color
GL:Vertex2f(0, 0)                       --actually
GL:Vertex2f(0, 0 + height)              --draw
GL:Vertex2f(0 + width, 0 + height)      --it
GL:Vertex2f(0 + width, 0)
GL:End()
GL:PopMatrix()
GL:start()                              --send the info to game

--[[
You can also use GL:stop(), it's automatically triggered when user stops the hack
GL:reset() clears all used functions
Each started OpenGL object slows the game, so try to use as few as possible
]]
