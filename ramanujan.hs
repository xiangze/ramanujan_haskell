--ramanujan_num = 1729

temp = [x^2|x<-[1..5]]
tempp = head [x|x<-[1..], x<4 ]

--ramanujan_num = head [y| y<-[i^2+j^2|i<-[1..1000],

--up = 1000
--rpre = [(i^3+j^3,i,j)|i<-[1..up], j<-[1..up]]
rpre = [(i^3+j^3,i,j)|i<-[1..], j<-[1..]]

ramanujan1 = head [y|(y,i,j)<-pre, (x,k,l)<-pre,
	       y==x,i/=k ,j/=l,i/=l]
    where pre=[(i^3+j^3,i,j)|i<-[1..], j<-[1..]]

ramanujan_u = head [y|(y,i,j)<-pre, (x,k,l)<-pre,
	       y==x,i/=k ,j/=l,i/=l]
    where pre=[(i^3+j^3,i,j)|i<-[1..1000], j<-[1..1000]]


ramanujan_un = head [y|(y,i,j)<-pre, (x,k,l)<-pre, y==x,i/=k,j/=l,i/=l]
    where pre=[(i^3+j^3,i,j)|i<-ll, j<-ll]
              where ll=[1..1000]

ramanujan_num = head [((y,i,j),(x,k,l))|(y,i,j)<-rpre,
	      (x,k,l)<-rpre,
	       y==x,i/=k ,
	       j/=l,i/=l]



l1 = head [[y,x]|(y,i,j)<-pre, (x,k,l)<-pre,
           y/=x]
    where pre=[(i^3+j^3,i,j)|i<-[1..], j<-[1..]]

ramanujan_num_p = [y| y<-[i^2+j^2+k^2+l^2|i<-[1..1000],
					j<-[1..1000],
					k<-[1..1000],
					l<-[1..1000]],
					y<10]

main = print ramanujan1
--take 4 [i^2+j^2+k^2+l^2|i<-[1..1000],j<-[1..1000],k<-[1..1000],l<-[1..1000]]
--kuku = array ((2,2),(9,9)) [((i,j),i*j)| i<-[2..9],j<-[2..9]]