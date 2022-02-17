
for i=0,15 do
	poke(0x03FC0+i*3+0,i*(255/15))
	poke(0x03FC0+i*3+1,0)
	poke(0x03FC0+i*3+2,i*(255/15))
end

function TIC()
t=time()

cls()

poke(0x3FF8,t%5+4+math.sin(t/1000)*4)

print('the',
	20,
	30+t%3,
	4+math.sin(t/1000)*4,2,12)

for x=-10,39 do
 for y=-10,32 do
		circ((y%2)*(math.sin(t/1000)*9
							-math.sin(t/1000)*9+11)+x*9,
						 y*6+math.sin(t/1000)*9+t%3,
							3+math.sin(y+x+t/500)*2,
							5+math.sin(y*x+t/500)*2)
 end
end

for x=0,240 do
for y=t/4%136,t/3%136+10 do
	poke(65436+x,(t/x)+math.sin(t/1000)*4)
	pix(x,y,(pix(x,y)+y%3+(x+y)%3+math.sin(t/1000)*4))
end
end


end
