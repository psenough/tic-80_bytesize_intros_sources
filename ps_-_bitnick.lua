-- title:   bitnick
-- author:  ps
-- desc:    256b intro for Evoke 2023
-- site:    
-- license: MIT License
-- version: 1.0
-- script:  lua

function TIC()
	poke(16379,1)
	cls()
	math.randomseed(2)

	for x=0,71 do
		w=math.random()*70+30
		h=math.random()*20+10
		posx=(math.random()*240+(time()/w*4)*x/20)%(240+w+x)-w
		posy=math.random()*(136+h)-h
		col=math.random()*2+math.cos(time()/2000)*2+13
		
		if x<3 then
			v=0
			if time()/64%136>68 then
				v=255
				col = 4
			end
			sfx(0,(v+x*12)//64,-1,x,3)
			poke(16320+x,v)
		end
		
			clip(posx,posy,w,h)
			for i=posx,posx+w do
				circ(i,posy+i//1%h,w/(v/col+16),col+i/300)
			end
			clip()
	end
	rect(25+v/2,0,10,136,0)	
end
