-- title: the chasm
-- author: ps
-- desc: 256b executable graphics lovebyte22
for p=0,15 do poke(0x03FC0+p*3+0,p*(155/15))poke(0x03FC0+p*3+1,0)poke(0x03FC0+p*3+2,p*(255/15))end TIC=load'cls(15)r=time()t=math.sin(r/1000)*9 C=math.cos(r/1000)*9 for i=-10,39 do for f=-10,32 do circ((f%2)*4+i*8,f*5,2,0)end end o=16*3n=120-o d=0.5 for i=0,o do for f=0,136 do x=pix(i+n,f)e=x-(i)*d if(e<0)then e=0 end pix(i+n,f,e)x=pix(i+n+o,f)e=x-(o-i)*d if(e<0)then e=0 end pix(i+n+o,f,e)end end'