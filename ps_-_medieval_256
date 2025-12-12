-- title:   medieval 256
-- author:  ps
-- desc:    256b version of intro by EviL
-- license: MIT License
-- version: 0.1
-- script:  lua

f=0
l={}
y={136,240,0,3,5,7,10,12}

for a=1,15 do
	l[a]={}
	for i=1,4 do
		l[a][i]=math.random(y[i%2+1])
		l[a][i+4]=math.random()*4-2
	end
end

function TIC()
	--poke(16379,1)
	if math.random(5)<2 then cls() end
	for a=1,15 do
	 c=l[a]
		for i=1,4 do
			c[i]=c[i]+c[i+4]
			if c[i]<0 or c[i]>y[i%2+1] then
			c[i+4]=-c[i+4] end
		end
		
		line(c[1],c[2],c[3],c[4],a)
	end
	f=1+f
	if f%12<1 then
		sfx(0,math.random(2,4)*12+y[math.random(6)+2],10,0,14,15)
	end
	if f%48<1 then
	 b=math.random(2,4)*12+y[math.random(6)+2]
		sfx(0,b,30,1,10,10)
		sfx(0,b+7,30,2,10,10)
		sfx(0,b+12,30,3,10,10)
	end
end
