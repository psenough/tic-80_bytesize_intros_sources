-- title:   Illegal Implants
-- author:  ps
-- desc:    256b intro for Deadline
-- license: MIT License
-- version: 0.1
-- script:  lua

function TIC()
	poke(0x3ffb,1)
 --poke(16379,1)

	vbank(0)
	for x=0,240 do
	 for y=0,136 do
			pix(x,y,math.sin(y/9+time()/600)*2+8+((x~y-time()//60))%12//(time()/1e3%4))
		end

	end

	vbank(1)

--for i=1,16 do
--	poke(0x3FC0+i*2,peek(0x3FC0+i*2)-10)
--end

	for x=0,240 do
	 for y=0,136 do
			pix(x,y,math.sin(y/9+time()/600)*2+8+((x~y-time()//60))%12//(time()//60%2))
		end
	 --poke(65436+time()/600%2*x,math.random(600))
		poke(0xff9c+time()/600%2*x,math.random(600))

	end
	circ(120,68,68,0)
 rect(60,8,120,20,2)
-- t=
	print(({" warning!!","  illegal","cybernetic","xenography"," implants"," detected"})[time()//2e3%6+1],80,12,12,1,2,1)

end

