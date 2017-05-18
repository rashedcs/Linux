#define _CRT_SECURE_NO_WARNINGS
#pragma comment(linker, "/stack:16777216")
#include <string>
#include <vector>
#include <map>
#include <list>
#include <iterator>
#include <set>
#include <queue>
#include <iostream>
#include <sstream>
#include <stack>
#include <deque>
#include <cmath>
#include <memory.h>
#include <cstdlib>
#include <cstdio>
#include <cctype>
#include <algorithm>
#include <utility> 
using namespace std;
 
#define FOR(i, a, b) for(int i = (a); i < (b); ++i)
#define RFOR(i, b, a) for(int i = (b) - 1; i >= (a); --i)
#define REP(i, N) FOR(i, 0, N)
#define RREP(i, N) RFOR(i, N, 0)
#define FILL(A,value) memset(A,value,sizeof(A))
 
#define ALL(V) V.begin(), V.end()
#define SZ(V) (int)V.size()
#define PB push_back
#define MP make_pair
#define Pi 3.14159265358979

typedef long long Int;
typedef unsigned long long UInt;
typedef vector <int> VI;
typedef pair <int, int> PII;

const int INF = 1000000000;
const int MAX = 50001;
#define BASE 127
#define UP 10000001

int T, n;
Int m;
Int A[8];

int main()
{

	// read the number of tests
	scanf("%d", &T);
	FOR (t,0,T)
	{
		// read n, m and array A
		cin >> n >> m;
		FOR (i,0,n)
			cin >> A[i];
		
		int res = INF;
		// try all masks (there will be 2^n such)
		FOR (mask,0,(1 << n))
		{
			int cnt = 0;
			Int sum = 0;
			// count the sum and the number of bits
			FOR (j,0,n)
				if ((mask & (1 << j)) != 0)
				{
					cnt ++;
					sum += A[j];
				}
			// if it's ok, try to make the result better
			if (sum >= m)
				res = min(res, cnt);
		}
		// output the result
		if (res >= INF)
			cout << -1 << endl;
		else
			cout << res << endl;
	}
	

	return 0;
}