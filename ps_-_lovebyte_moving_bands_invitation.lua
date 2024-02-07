-- title: lovebyte moving bands invitation
-- author: ps
-- script: lua

function TIC()

 -- hide mouse
 poke(0x3FFB,0)
 
 t=time()
 --bg=time()//256--t//128%2

	vbank(0)
  poke(0x3FF8,time()//256)
		cls(time()//256)
	 for x=0,240,10 do
	 	for y=0,192,8 do
	  	local tpx = x-120+math.cos(t/2000)*120
	  	local wx = 10*math.cos(tpx/200)
	  	local posy = (y+t/tpx*20)%(192+8)-8
	   local c = ((y/8+x)%2)*12
	  	if c~=0 then rect(x+5-wx*.5,posy,wx,8,c+math.cos(tpx/200)*16) end
	  end
	 end
print("LOVE",10,10,0,1,10,true)
print("BYTE",80,76,0,1,10,true)

	vbank(1)
		cls()
	 for x=0,240,10 do
	 	for y=0,192,8 do
	  	local tpx = x-120+math.cos(t/3000)*120
	  	local wx = 10*math.cos(tpx/200)
	   local posy = (y+t/tpx*20)%(192+8)-8
	   local c = ((y/8+x)%2)*12
	  	if c~=0 then rect(x+5-wx*.5,posy,wx,8,c+math.cos(tpx/200)*16+8) end
	  end
	 end
end
