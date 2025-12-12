-- title:   scroll256
-- author:  ps
-- desc:    256b intro for Inercia 2025
-- license: MIT License
-- version: 0.1
-- script:  lua


words = {'one','two','pix','pip','lip','tip','oxy','box','bob'}

t=0

function TIC()

	--poke(0x3FFB,0)

	cls()

	math.randomseed(1)
	
	for y=0,17 do
		for i=0,16 do
			xx =(t*(y%4-1)+i*15)%255-15
			yy =(t+y*8)%144-8
		
			n=math.atan2(yy-68,xx-120)
			rs=math.sin(t/32+n*3)*5/((yy-68)^2+(xx-120)^2)^.3
			
			--words[0]=math.random(t//16+1)*t//128
			--words[1]=((((xx//3+t+yy))>>3)%4+t//64)
			--words[2]=math.sin(t/32+n/2+math.sin(rs))*8
			--words[3]=math.sin(t/32+n/2+math.sin(rs))*8
			--words[3]=math.sin(t/32+n/1.5)*8
	
			print(
									--words[math.random(t//32+1)%12],
									words[math.random(11)],
									xx,
									yy,
				((3+t//256)%4//3)*math.random(t//32+1)+
				((2+t//256)%4//3)*((((xx//3+t+yy))>>3)%4+t//64)+
				((t//256)%4//2)*math.sin(t/32+n/2+math.sin(rs))*8
									,0,1,0)
		
		end
	end
	
	--print(((t//16+1)%4//3),0,0,12)
	--print(((t//16+2)%4//3),0,10,12)
 --print(((t//16+3)%4//2),0,20,12)
	t=t+1
end
