-- title:   sinebobs 2
-- author:  ps
-- desc:    256b for deadline 2024
-- license: MIT License
-- version: 0.1
-- script:  lua

function TIC()
	poke(16379,0)
	cls(time()//1e3*8)
	n=time()/1e3
	for x=-9,9 do
		for y=-5,5 do
			circ(x*11+120, y*10+68,
				3*math.sin(time()/400+x/2-y/3*math.sin(time()/300+y/10))+3,
				7+time()//1e3*3)
			
			circb(x*11+120, y*10+68,
				3*math.sin(time()/400+x/2-y/3*math.sin(time()/300+y/10))+2,
				4+time()//1e3*8)
	end
	end

	print("greetings to superogue and pestis",250-time()/10%500,128,12)


	for x=-9,9 do
		for y=-5,5 do			
				
				i=y*math.sin(time()/300-11)+x*math.sin(time()/400)
				
 			circ(
    	(x*math.sin(time()/300-11)-y*math.sin(time()/400))*9+120,
					(i-(x//1~y//1))*3+61,
					math.sin(n*5+x+y)*3+4,
					time()//1e3*3+i/9)
				circb(
    	(x*math.sin(time()/300-11)-y*math.sin(time()/400))*9+120,
					(i-(x//1~y//1))*3+61,
					math.sin(n*5+x+y)*3+3,
					time()//1e3*8)
		end
	end
end
