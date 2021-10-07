\\ replacing any two of its digits with any other digit always results in a composite number
test2(n)={v=digits(n);for(a=1,#v,for(b=a+1,#v,w=v;for(i=0,9,for(j=0,9,if(i!=v[a],w[a]=i);if(j!=v[b],w[b]=j);ntest=subst(Pol(w),x,10);if(isprime(ntest),print1(" ",ntest,"\n");return(0));););););return(1);}
\\ replacing any one of its digits with any other digit always results in a composite number
test1(n)={v=digits(n);for(k=1,#v,w=v;for(j=0,9,if(j!=v[k],w[k]=j;ntest=subst(Pol(w),x,10);if(isprime(ntest),return(0)););););return(1);}
list(start,stop)={forprime(p=start,stop,if(test1(p),print1(p);if(test2(p),print1(" ",p,"OK!");return(1));););}
list(2,10^12)
quit()
