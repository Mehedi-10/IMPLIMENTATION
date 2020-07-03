vector<data_type> prime;
bitset<100000>mark;
inline void sieve( data_type n)
{
    mark[0]=mark[1]=1;
    data_type i,j,limit=sqrt(n*1.0)+2;
    prime.emplace_back(2);
    for(i=4; i<=n; i+=2)
        mark[i]=1;
    for(i=3; i<=n; i+=2)
        {
            if(!mark[i])
                {
                    prime.emplace_back(i);
                    if(i<=limit)
                        {
                            for(j=i*i; j<=n; j+=i*2)
                                mark[j]=1;
                        }
                }
        }
}
