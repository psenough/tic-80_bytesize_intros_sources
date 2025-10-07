-- title:  entrappy
-- author: ps
-- desc:   quick 256b for inercia24
-- script: lua

function teeth(posx,posy,wid,ang,col,rec)
	px=posx+wid*math.cos(ang)
	py=posy+wid
	circ(px+wid,py,wid,col)
	line(px,py,px+math.cos(ang)*wid*5,py+math.sin(ang)*wid*5,col)
	if rec > 0 then
		teeth(px+wid,py,wid*(math.random()+.4),math.random(),
					(col+ang)%2*2+5,rec-1)
	end
end

function TIC()
--{
	poke(16379,1)
	poke(16376,-2--|14
	)
	cls(-2--|14
	)
	math.randomseed(time()//500%2)
--}
	
	for y=140,-30,-9 do
		for ang=1,4,.05 do
			teeth(120+math.sin(ang+time()//300%3)*160+math.sin(time()/1000+y/ang)*10,
									y+math.cos(ang+time()/300+time()//1000%5)*10,time()//1000%5+1,2,5,32)
			end
	end

 memcpy(0xFF9C,0,2)

end
