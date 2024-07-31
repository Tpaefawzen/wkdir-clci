/NIHIL/{print 0;next}
{
   v=0
   if(sub("^XC",""))
      v+=90
   while(sub("C",""))
      v+=100
   if(sub("^XL",""))
      v+=40
   if(sub("L",""))
      v+=50
   while(sub("^X",""))
      v+=10
   while(sub("^IX",""))
      v+=9
      while(sub("^V",""))
      v+=5
   while(sub("^IV",""))
      v+=4
   while(sub("^I",""))
      v+=1
   print v
}
