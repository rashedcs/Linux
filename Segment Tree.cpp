#include <cstdio>
#include <cmath>
#include <algorithm>
#include <iostream>
#include <deque>
#include <queue>
#include <stack>
#include <vector>
#include <map>
#include <cstdlib>
#include <cstring>
#include <string>
#include <ctime>
#include <sstream>

#define MAX 100010

using namespace std;

int tree[MAX<<2];
int value[MAX];


///initialize the tree.

void build(int ind,int l,int r)
{
    if(l==r)
    {
        tree[ind]=value[l];
        return ;
    }
    int mid=(l+r)>>1,indl=(ind<<1);
    build(indl,l,mid);
    build(indl+1,mid+1,r);
    tree[ind] = tree[indl]+tree[indl+1];
    return ;
}

///update at position pos by value val.

void update(int ind,int l,int r,int pos,int val)
{
    if(l==r)
    {
        tree[ind] = val;
        return ;
    }
    int mid=(l+r)>>1,indl=(ind<<1);
    if(pos<=mid) update(indl,l,mid,pos,val);
    else update(indl+1,mid+1,r,pos,val);
    tree[ind] = tree[indl]+tree[indl+1];
    return ;
}

///give the sum in range ql to qr(inclusive).

int query(int ind,int l,int r,int ql,int qr)
{
    if(l>r || l>qr || r<ql) return 0;
    if(l>=ql&&r<=qr) return tree[ind];
    int mid=(l+r)>>1,indl=(ind<<1);
    return query(indl,l,mid,ql,qr)+query(indl+1,mid+1,r,ql,qr);
}

int main()
{
    int test,cas=0,Q,n,x,y,ans;
    char ch;
    scanf("%d",&test);
    while(test--)
    {
        scanf("%d %d",&n,&Q);
        for(int i=1;i<=n;i++)
        {
            scanf("%d",&value[i]);
        }
        build(1,1,n);
        printf("Case %d:\n",++cas);
        while(Q--)
        {
            scanf(" %c %d %d",&ch,&x,&y);
            if(ch=='S')
            {
                ans=query(1,1,n,x,y);
                printf("%d\n",ans);
            }
            else if(ch=='U')
            {
                update(1,1,n,x,y);
            }
        }
    }
    return 0;
}

/**
U = update
S = sum
Sample input:
1
5 6
1 5 4 6 7
S 2 5
U 5 -9
S 1 5
U 1 10
U 4 8
S 1 4

Sample output:
22
7
27
*/















