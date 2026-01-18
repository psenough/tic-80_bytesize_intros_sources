-- title:   stranded green pattern
-- author:  ps
-- desc:    128b intro for Operator Digitalfest
-- site:    
-- license: MIT License (change this to your license of choice)
-- version: 0.1
-- script:  lua

function TIC()
 poke(16379,1) -- hide cursor
 poke(16376,6) -- set border
 cls(12) -- clear background
 for i=0,12 do
  for k=0,80 do
   	rect(k*((time()//2e3)%3+4),
    				 (i*15+(time()/20)+math.sin(-time()/300+k)*4)%146-10,
         4,8,6)
		end
	end
end

