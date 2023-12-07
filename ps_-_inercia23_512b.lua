-- title:   Inercia23 512b
-- author:  ps
-- desc:    Quick 512b intro for Inercia fantasy console 512b intro competition
-- license: MIT License
-- version: 0.1
-- script:  lua

rect(12,42,106,50,0)
print("TPOLM",14,50,12,-1,7)
rect(118,42,106,50,12)
clip(118,42,106,50)
print("TPOLM",14,50,0,-1,7)
clip()
	
pbtex={}
for y=0,135 do
	pbtex[y]={}
	for x=0,239 do
	 pbtex[y][x]=pix(x,y)
	end
end

d={
  8, 8, 8, 8, 1, 4, 4, 4, 0, 0,
  0,15, 1, 0, 0, 0, 3, 0, 0, 0,
  2, 0, 0, 0, 3, 0, 0, 0, 7, 0,
  0, 0, 3, 0, 2, 0, 2, 3, 2, 3,
  3, 4, 3, 4, 2, 3, 6, 3, 5, 6,
  5, 6, 1, 0, 1, 0, 1, 3, 5, 9,
 10, 7,10,10, 0,10, 0, 7, 7, 8,
  7, 0, 0, 7, 8, 7, 7, 7,10, 7,
 10,
}
m={0,0} -- only need to init up to 2nd position
t=0


function TIC()
	-- hide cursor
	
	--{
	poke(16379,0)
	cls()
	--}
	
	-- rotozoomer, stolen from gasman
 a=t/100
 --{
 s=2+.8*math.sin(a+m[2])
 cx=120+120*math.sin(a)
 cy=68+120*math.sin(a/2)
 --}
 for y=0,135,2 do
  for x=0,239,2 do
   --{
   dx=x-cx
   dy=y-cy
   --}
   --tx=(cx+math.cos(a)*s*dx+math.sin(a)*s*dy)//1
   --ty=((cy+math.cos(a)*s*dy-math.sin(a)*s*dx)//1)
   pix(x,y,pbtex[(cy+math.cos(a)*s*dy-math.sin(a)*s*dx)//1%136][(cx+math.cos(a)*s*dx+math.sin(a)*s*dy)//1%240])
  end
 end
 
 --poke(65764,48) -- set chn 0 wave
 --poke(65830,16) -- set chn 1 wave
 --poke(65896,16) -- set chn 2 wave
 --poke(65962,16) -- set chn 3 wave
 
 -- do the crackle tracker sound
 for k=0,3 do
  --p=t//480 -- orderlist pos
  -- hack wave defines
  poke(65764+k*66,(3-k/3)*16)
  e=t*d[k+1]//8 -- envelope pos
  n=d[
      4*d[5*k+t//480+57]+9 -- patstart
      +e//15%4 -- patrow
      +t%480//60//(8-d[k+8])*4 --fills
     ]
  -- save envelopes for syncs
  -- d[0] = chn 0, d[-1] = chn 1...
  -- % ensures if n=0|pat=0 then env=0
  d[-k]=-e%15%(16*n*d[5*k+t//480+57]+1)
  m[k]=n -- store note info for outside use
  sfx(
   k, -- channel k uses wave k
   -2 -- global pitch:
    +12*d[k+5] -- octave
    +n -- note
    -e%15*d[k+9] -- pitch drop
    +(
      0<d[t//480+77] -- key active?
      and d[
            4*d[t//480+77] -- key pat
            +9+t//120%4 -- key row
           ]
      or 1
     ) -- key change
    ~0, -- convert to int
   2,
   k,
   d[-k] -- stored envelope
  )
 		
			for x=k*60,k*60+60 do
				circ(x,68-d[-k]*s*1.5+x%(d[-k]*s*3),d[-k]+m[1],x/60+a*2)
			end
	 
--		print(k,n,k*6,12)
--  print(k,d[-k],30+k*6,12)
 end
 
 -- change border
 poke(16376,m[1])
 
 t=t+1,t<2399 or exit()
end
