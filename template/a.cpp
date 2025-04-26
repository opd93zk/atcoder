#ifdef _DEBUG
#include <ownenv.h>
#define _GLIBCXX_DEBUG
#define debug(var) DEBUG(#var, var)
#else
#define debug(var)
#include <bits/stdc++.h>
#endif

using namespace std;

using ll = long long; using ull = unsigned ll;
using ld = long double;
using uc = unsigned char;
#define INF 2e61

template<typename T> using ve = vector<T>; template<typename T> using vv = ve<ve<T>>;
using vi = ve<int>; using vvi = vv<int>;
using vl = ve<ll>; using vvl = vv<ll>;
using vs = ve<string>; using vvs = vv<string>;
using vc = ve<char>; using vvc = vv<char>;
using vb = ve<bool>; using vvb = vv<bool>;

template<typename T, typename U> using pa = pair<T, U>;
template<typename T> using pTT = pa<T, T>; template<typename T> using pp = pa<T, pTT<T>>;
using pii = pTT<int>; using ppii = pp<int>;
using pll = pTT<ll>; using ppll = pp<ll>;
using psi = pa<string, int>; using pis = pa<int, string>;
using psu = pa<string, uc>; using pus = pa<uc, string>;

#define nall(n) n.begin(), n.end()
#define rnall(n) n.rbegin(), n.rend()
#define rep(i, n) for (int i = 0; i < (int)(n); i++)
#define rep2(i, s, n) for (int i = (s); i < (int)(n); i++)
#define rrep(i, n) for (int i = (n); i >= 0; i--)
#define rrep2(i, n, e) for (int i = (n); i >= (int)(e); i--)
#define elfor(x, V) for(auto &x : V)
#define bitfor(b, n) rep(b, (1 << n))
#define bitfor2(b, s, n) rep2(b, s, (1 << n))
#define getbitelm(i, b, n) rep(i, n) if(b & (1 << i))
#define cl '\n'
#define cend cout << cl
#define print(s) cout << (s) << cl
#define printarry(i, A) rep(i, A.size()) { if(i) cout << ' '; cout << A.at(i);} cout << endl;
#define print12(c) cout << (c).first << ' ' << (c).second << cl
#define print21(c) cout << (c).second << ' ' << (c).first << cl
#define Yes cout << "Yes" << cl
#define YES cout << "YES" << cl
#define No cout << "No" << cl
#define NO cout << "NO" << cl
#define inistd cin.tie(nullptr); ios_base::sync_with_stdio(0)
#define fixout(n) cout << fixed << setprecision(n)

int main() {
}