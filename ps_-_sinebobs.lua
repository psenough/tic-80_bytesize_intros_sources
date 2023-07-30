-- title:   sinebobs
-- author:  ps
-- desc:    128b for Nova 2023
-- license: MIT License
-- version: 0.1
-- script:  lua


function TIC()
	cls(time()//1e3*8)
	for x=-9,9 do
		for y=-5,5 do
			circ(x*11+120, y*10+68,
				3*math.sin(time()/400+x/2-y/3*math.sin(time()/300+y/10))+3,
				7+time()//1e3*3)
			
			circ(x*11+120, y*10+68,
				3*math.sin(time()/400+x/2-y/3*math.sin(time()/300+y/10)),
				4+time()//1e3*8)
		end
	end
end
