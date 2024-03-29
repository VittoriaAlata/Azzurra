#version 150

const uint  _SPACE = 0u;
const uint      _A = 488621617u;
const uint      _B = 1025459774u;
const uint      _C = 488129070u;
const uint      _D = 1025033790u;
const uint      _E = 1057964575u;
const uint      _F = 1057964560u;
const uint      _G = 488132142u;
const uint      _H = 589284913u;
const uint      _I = 474091662u;
const uint      _J = 237046348u;
const uint      _K = 589982257u;
const uint      _L = 554189343u;
const uint      _M = 599442993u;
const uint      _N = 597347889u;
const uint      _O = 488162862u;
const uint      _P = 1025458704u;
const uint      _Q = 488166989u;
const uint      _R = 1025459761u;
const uint      _S = 520553534u;
const uint      _T = 1044516996u;
const uint      _U = 588826158u;
const uint      _V = 588818756u;
const uint      _W = 588830378u;
const uint      _X = 581052977u;
const uint      _Y = 581046404u;
const uint      _Z = 1042424351u;
const uint _PARENL = 142876932u;
const uint _PARENR = 136382532u;
const uint _RSLASH = 35787024u;
const uint _LSLASH = 545394753u;
const uint    _DOT = 4u;
const uint  _COMMA = 68u;
const uint   _HASH = 368389098u;
const uint      _1 = 147460255u;
const uint      _2 = 487657759u;
const uint      _3 = 487654958u;
const uint      _4 = 73747426u;
const uint      _5 = 1057949230u;
const uint      _6 = 487540270u;
const uint      _7 = 1041305732u;
const uint      _8 = 488064558u;
const uint      _9 = 488080942u;
const uint      _0 = 490399278u;
const uint _USCORE = 31u;
const uint  _SCORE = 1015808u;
const uint   _DASH = 1015808u;
const uint   _PLUS = 139432064u;

bool getPixel(uint character, int x, int y) {
    return ((character >> (4 - x + y * 5)) & 1u) == 1u;
}
