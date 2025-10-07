-- title:  love hurts
-- author: ps
-- desc:   quick 256b for lovebyte25
-- script: lua


t={"love hurts","life heals","lead kills"}
function TIC()
	poke(16379,1)
	poke(0x3FF8,time()//3000%3*12)
	for x=0,240 do
	 for y=0,136 do
			pix(x,y,
			math.sin(y*.1+time()/600+math.sin(time()/1200)*2)*(math.sin(time()/1100)*2+1)
			-math.cos(time()/1200+x*.005+(x~y)//1)*2%3+3
			+math.sin(math.atan(x-120,y-66)*7+time()/1200)*(math.cos(time()/2200)*3+3)
			)
	 end
	end
	rect(10,120,41,7,time()//3000%3*12)
	print(t[time()//3000%3+1],11,121,(time()//3000%3+1)*12,true,1,true)
end
