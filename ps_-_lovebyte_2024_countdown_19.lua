
function TIC()
	poke(16379,1)
	--poke(0x3FF8,0)
	cls()
	math.randomseed(2)

	for y=0,16 do
	for x=0,22 do
		print("19",((x+(time()/500))*12+y%2*6)%252-12,1+y*8,13,1,1,true)
	end
	end

	for x=0,51 do
		w=math.random()*70+30
		h=math.random()*20+10
		posx=(math.random()*240+(time()/w*4)*x/20)%(240+w+x)-w
		posy=math.random()*(136+h)-h
		col=math.random()*2+math.cos(time()/2000)*2+5
		
		if x==30 then print("19",60,30,12,10,16,true) end
			clip(posx,posy,w,h)
			for i=posx,posx+w do
				circ(i,posy+i//1%h,w/(col+16),col+i/300)
			end
			clip()
	end

end
