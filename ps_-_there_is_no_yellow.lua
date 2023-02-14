-- title:   there is no yellow
-- author:  ps
-- desc:    illusory yellow using blue white and grey
-- license: MIT License
-- version: 0.1
-- script:  lua

d={"there","is","no","yellow"}

function printc(s,x,y,c,scale)
 w=print(s,0,-136,0,false,scale)
 print(s,x-(w/2),y,c,false,scale)
end

function heart(x,y,c)
	circ(x			,y,10,c)
	circ(x+20,y,10,c)
	tri(x-10,y,x+30,y,x+10,y+30,c)
end


function TIC()
	poke(0x3FFB,0)
--	vbank(0)
	
--	cls(12)
	
	for i=1,#d do
		printc(d[i],120,i*30-22,14,5)
	end
	
	heart(24,60,14)
	heart(190,60,14)
	
	vbank(1)
	
	for x=0,376,4 do
		line(x,0,x-136,136,9)
		line(x+1,0,x+1-136,136,9)
	end
	
	for i=1,#d do
		printc(d[i],120,i*30-22,0,5)
	end
	
	heart(24,60,0)
	heart(190,60,0)
		
	vbank(0)
	
	for x=2,376,4 do
		line(x,0,x-136,136,12)
		line(x+1,0,x+1-136,136,12)
	end

end

--function BDR(l)
--	if l>80 then
--	poke(0x3FF8,14)
--	else
--	poke(0x3FF8,9)
--	end
--end
