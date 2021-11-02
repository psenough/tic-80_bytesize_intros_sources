t=0g=70l=120w=240q=50h=136 r=math.random cls()
TIC=load't=time()/g for i=0,g do f=9-t%h//l poke(2^16-l+i,r()*f-g*f)end pix(r()*t,0,r()*8%3+7)rect(r()*t,2,6,1,r()*8%3+8)memcpy(2^15,0,w*g)memcpy(l*4,2^15,w*66)rect(q-t*.2,q,q,g,1)rect(g-t*.1,l,q,g,1)rect(h+t*.1,g,q,g,1)'
SCN=load'for k=0,5 do v=0 if l-t%h<9 and l-t%h>7 and k<3 then v=w-...*w/h end poke(0x03FC0+k,v) end'