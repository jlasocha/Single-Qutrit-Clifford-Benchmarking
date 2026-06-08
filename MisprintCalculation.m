(* Content-type: application/vnd.wolfram.mathematica *)

(*** Wolfram Notebook File ***)
(* http://www.wolfram.com/nb *)

(* CreatedBy='Wolfram 14.2' *)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[       154,          7]
NotebookDataLength[     60997,       1366]
NotebookOptionsPosition[     58512,       1321]
NotebookOutlinePosition[     58943,       1338]
CellTagsIndexPosition[     58900,       1335]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
Cell[BoxData[{
 RowBox[{
  RowBox[{
   RowBox[{"(", 
    RowBox[{"Fx", "=", 
     RowBox[{
      RowBox[{"1", "/", 
       RowBox[{"Sqrt", "[", "2", "]"}]}], " ", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"0", ",", "1", ",", "0"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"1", ",", "0", ",", "1"}], "}"}], ",", " ", 
        RowBox[{"{", 
         RowBox[{"0", ",", "1", ",", "0"}], "}"}]}], "}"}]}]}], ")"}], "//", 
   "MatrixForm"}], ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"(", 
    RowBox[{"Fy", "=", 
     RowBox[{
      RowBox[{"1", "/", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"Sqrt", "[", "2", "]"}], " ", "I"}], ")"}]}], " ", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"0", ",", "1", ",", "0"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"-", "1"}], ",", "0", ",", "1"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"0", ",", 
          RowBox[{"-", "1"}], ",", "0"}], "}"}]}], "}"}]}]}], ")"}], "//", 
   "MatrixForm"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"(", 
    RowBox[{"Fz", "=", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"1", ",", "0", ",", "0"}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{"0", ",", "0", ",", "0"}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{"0", ",", "0", ",", 
         RowBox[{"-", "1"}]}], "}"}]}], "}"}]}], ")"}], "//", "MatrixForm"}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"(", 
    RowBox[{"Fy2", " ", "=", " ", 
     RowBox[{"Fy", ".", "Fy"}]}], ")"}], "//", "MatrixForm"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"(", 
    RowBox[{"Fz2", " ", "=", " ", 
     RowBox[{"Fz", ".", "Fz"}]}], ")"}], "//", "MatrixForm"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"\[Alpha]", "=", 
   RowBox[{"ArcTan", "[", 
    RowBox[{"Sqrt", "[", "2", "]"}], "]"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"\[Omega]", " ", "=", " ", 
   RowBox[{"ComplexExpand", "@", 
    RowBox[{"Exp", "[", 
     RowBox[{"2", "*", "I", "*", 
      RowBox[{"Pi", "/", "3"}]}], "]"}]}]}], ";"}]}], "Input",
 CellChangeTimes->{{3.987775569388115*^9, 3.9877755939665203`*^9}, {
   3.987779307996889*^9, 3.9877793091288204`*^9}, 3.988178294985178*^9, 
   3.9884799941513996`*^9, 3.9899423747515774`*^9, {3.9899424258307304`*^9, 
   3.989942434397518*^9}, {3.9899424923504696`*^9, 3.9899425104476223`*^9}, {
   3.9899425786301785`*^9, 3.989942596410282*^9}, {3.989942995548319*^9, 
   3.989942998070099*^9}, 3.989945449370512*^9, {3.9899461208741302`*^9, 
   3.9899461246564713`*^9}, {3.9899466370164967`*^9, 3.989946638547453*^9}, {
   3.989947043153986*^9, 3.9899470432957726`*^9}},
 CellLabel->
  "In[152]:=",ExpressionUUID->"1aae7eb5-948b-c148-ac32-bf6ff841f1e2"],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"Propagators", " ", "of", " ", "rotations", " ", "and", " ", "Q", " ", 
    RowBox[{"(", 
     RowBox[{"matrix", " ", "exp"}], ")"}]}], " ", "*)"}], 
  "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{
     RowBox[{"URx", "[", 
      RowBox[{"\[Alpha]_", "?", "NumericQ"}], "]"}], ":=", 
     RowBox[{"MatrixExp", "[", 
      RowBox[{"I", "*", "\[Alpha]", "*", "Fx"}], "]"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"URy", "[", 
      RowBox[{"\[Alpha]_", "?", "NumericQ"}], "]"}], ":=", 
     RowBox[{"MatrixExp", "[", 
      RowBox[{"I", "*", "\[Alpha]", "*", "Fy"}], "]"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"URz", "[", 
      RowBox[{"\[Alpha]_", "?", "NumericQ"}], "]"}], ":=", 
     RowBox[{"MatrixExp", "[", 
      RowBox[{"I", "*", "\[Alpha]", "*", "Fz"}], "]"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"Uy2", "[", 
      RowBox[{"\[Alpha]_", "?", "NumericQ"}], "]"}], ":=", 
     RowBox[{"MatrixExp", "[", 
      RowBox[{"I", "*", "\[Alpha]", "*", "Fy2"}], "]"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"Uz2", "[", 
      RowBox[{"\[Alpha]_", "?", "NumericQ"}], "]"}], ":=", 
     RowBox[{"MatrixExp", "[", 
      RowBox[{"I", "*", "\[Alpha]", "*", "Fz2"}], "]"}]}], ";"}]}]}]], "Input",
 CellChangeTimes->{{3.987775604160574*^9, 3.9877756382867355`*^9}, {
  3.989942399441433*^9, 3.989942448464424*^9}, {3.9899453607444363`*^9, 
  3.9899453627804375`*^9}, {3.9899461051401215`*^9, 3.989946107956682*^9}},
 CellLabel->"In[52]:=",ExpressionUUID->"2b0d04c6-7d1f-354d-bdde-75aff4c2a934"],

Cell[BoxData[
 GraphicsBox[
  TagBox[RasterBox[CompressedData["
1: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
9TouBpe4d9/qung2DSlKeRESFv6SvZYQFfnieWhMZnMnQst/E8b5IvpleFjY
629UESVJAj3L9dgJt690GRbZISD5N/9bc/ObSI9C65JM9l18XorTmEh5euQz
AUJexL77Win5NrwOVp2Imkhbau07dxMT/d3/HQtsLpmeqDt9s3tV223QquQ7
h5ZOGT9mNA9jppGfVvEWREu8uFWvNelpYtSUVtFabhG4e+ggDe/WlbIm6lPt
KUfCWjXcbTIicDkiwOVaADshQEZmgnGBUKjCj0w8hYoRmMSu268MLTvSzclK
e5piD/lRa/UcXFzus3BxuXvb2khn4+R+ChN0E7vY9OgFiU987h2dqdRDfsx6
Ixcf/5jsek5Dow1ZL92ttKf36T9lu56DT3y+7ARtSDLYTA4s6/4rq8wsS/UN
Tj9a13lyQ26cPXnm5OHdW1arbz3l9LqMxyHpmbd27nLOwRy0IMXJz/xczy7o
21PhLy0738f+j/28XW8bn9GcNeFfLZtXFeJrojNUR1QT6WCk2Vxwym2IPDp+
pkEqN2rUeWpM1olttSlmltu5Cw+S8is+37xknV5TGXrtWlBlfX09jV+KupBj
mlaZGJKxAp/enHHr7nzmsVJWCjRr5a3vSNufIjIielFSgPtDL5+Q92Ud+aga
uBwB4HJtH4Kd4CIrMxFCKFSJF5kkCky/O8xM0zkk+QnnBHMfpPD26lV2+d1g
upT5yXgWSWHSpbdC+0vpry7ussBq6Pbc7bPlmo0Oed2g3qJgZlCWa7o3jxSQ
4ien95omcscFaFn0+Vm9lSedeNE2JdFEf2+wcvvDHzgVQwpuLlMUUDJa/Wz/
SIUB65wLxNNGZ6mOuCYCIEVB13ZqYKJ5xCmNXV2koqiYVhukPfpfSjrXmJAC
e/V/Lie36gKtr6lj3Q7JvU02eMNgZlqSKalC1oiWee7VcsYQi57tcWDtQbdP
/DP9zCyzRbON0lusV0RGhJT4k/fYZFBZorwz1jr7oqpDewVwOWzA5QRuD3aC
hUzNhA+hUCVOZJIwMP3moGX316rID9F+JjS1SYu4qBsoywlPKUGLnFb2kht+
KExo+QDJsSMbvpfpczhobdD+Kbv9a7r9KITVhb6/tkTLt5IrKSPl+rL/KPHf
W5SB1j7bN1yONLOtx+XM5K6cdSUZU19ojY9mP/lhB0P5lMzMvDGH1KPXZi9x
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
T3I8cfQo+cDWOaNVWfwxe/N+8rGjJ26+Ih4fEsUUccIbWp5gvWu1xjlbn6AA
FysDfXu9TYPkSSPnahx/kI7RjSEEYQrXPJrbWEi9RLLXY19DFWhyGZklHwQR
XwqJ8e0bP74wP95aN370QkqSeKdyijYdUZpgd1V8niQ6YrYg2CLiX0mszrIE
/t6zHL9cYsPDQKiViMyaqHPixg2sxsWClnSLrLVcbaDq4Emr9hw56sBpXlzh
CWVqNyi19Gvq+7TcSq6JIdSqynpxykfy3LbN03LLaZt8QKnfE25uHfPH/mCe
vI1emZf+PuVTUR3axCjLTv/yraiijo5nBVKKIhNYN8/KyCppkMmJmazCMlPT
ciskfT4CqS3ISM+pErpMEi1KKGlNeSUrvDOrcj+8fZdRWCusb7TUW99S4IwY
UVfh1UNavYgvLSaM6oJP6dllVEyNYdWPWAhqWXZa2tcy4Wm3dtoQrbSoAmdX
QTv1JoOi8JoUD2Z1VtxTz/uOzh7+kWmlnXOqNAbtjikotSQr7VN+DWvIXZ2X
/jGnsLS6UcqgRGQeWOoVJbu4TSKj0CZGxJdWYkGjlNLPOwXpZZP4SjGNV2S5
EhqAhK4uqnNqZ/CSacfcgSDfb6mP3BciGOnosToT5uDuZAd+Fqi5L/0jstin
vjKzb192+PqrNeivXj8AkDEQ8QGAAOZn+5X/bPf4yush9PzH+2YsupHSZSNC
QDbQo47/QWIfCoSWB1+nvCDaOPJT8qvXDwBkDkR8ACACbcgMNDl19Jye8Q0z
MzNTE71Th44ZPcoQtc0A+AloTLt74qieuZkRxTX5V2zQX71+ACB7IOIDAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAwG8IPS/Ox/WuvaWp22t4
KrljQevzYh+anju8f/+hw+ST+s4x+VT2u7fi7j1MZTQx8xN83e7ZW5k9SKwk
bAekJvP5nRsmVnZ2tlaWd0I/58bdM9I3sTQ2dnot8nXloqHlxLLNwcLU4w08
UwIAAAD8TtC/xfncOvRPL8Uldvnd/ZxI0SBFvrvGDFQ7HID7wu72XiAl9Pyn
l9T/Gr/06J2YQvY7ehi13+IcdXZfvO90cMKIA6G0JkZ+vI/DkZkqii2vGMQU
reGd9X//rDaOKeK8/C1Bf6aqgtLUM9EV3x1X9iL9cz1NgrOYsaHlxnrb75ui
JOodlwAAAADwc8N4b3z5oeBcAj1Rd4Lyr5ERfffQGN5njLZfibgZkaQXSAMz
x1VzlMqEA4GF/BpGa+IuTFeWH8LOiNgw3l6a1KstIxISDcmzW9Jvbusbuhlp
lov6kzjv/0PyI+/cfPoF7wWvkkGP1RnbqwMzIkwbBAAAAIDOBK303LHjvmBv
xEi6oNbrl8iI2KCIhJ2txBdIBjPDYn4fhdGHQjFWJdHa54fHDG/NiN5d+bst
IxIWjRZ2aPjAPU9b8x526tJnq484by2VBHr86fEdmBFh2yAAAAAAdCJIwd3V
g9e6/NoZUfcCrfLXGiKnoHY+CXtFixatM/swbkYk8NvQA0MHaz9ry4hiTozp
q+lHlbHIHZsR4dggAAAAAHQeltrT+vVUmLLX2vHu3bv3At5XNfdKLRlRY3Gi
1y0bS4q+8f34H3zvrqUVRLtaW9naWhnqGXsmV+B12Wh1io+NscHFs1e9PtNK
XrlaUgzM/T834JdB+/zMztTo6rmztxLq6D8SHtpbWRjp33BPKmGyus6KlMd3
bK1NDIzuRuTx9fr0otdedpY2ttamhqYeb9ukYX6LdDSnXNM9YxVRjmKXzl83
iS9ovn2Cp52FmbGRlc/70pK33jetrh0+eCsFe8mq5vGOgT3lhh4MxXkXEFob
QrFI5JbPmxEJiIZWpQTcu62zoF/f+Sdv323GQXf5QOV/ybfu3nVyi27OZ9Ga
jCBHa0sbGysz81uPU1qUQ9gyLF1XZYS53bGxNjO1807+EStGRkSoBJwGQspT
A/FsEM/EqDlhLnYO95ydnZzu+/nYmfvlwlsmAQAAgPbyOtZsVW/FeVfCElm8
Tits4M2IFpyyNbF5nk9j5wXmC1T/vpjY3IejNQlGi8avtPjAfvgILQk5MnWa
TjjO81DUwg+R7uRpSiN2GZkben2MPj9RQWWTB34ZjJKMaL8LC/oqrdR3MbMN
a777wgFTLvg/sTILyGRJiOTfXz90zKGQljUntPwpWf1IwA92l4mUhR2fPmb9
nU/cjAKtzIwPuLKkX8vuZOzSeeom8QVNTQ3JpssnrLZJr0fRhjSzpYP+Ovai
lp5657hpTA2WShipBtMVeihM1UsRY9Mzb0YkIBpK/Z7+OtZmvarikutRic3E
OWgOU5xzKTQh8fXbbHaL0DLv75i7xT6F85gYWv/RSXPuxtsfqPgtU81RaOx1
9RkbzONLGewELc3l9IapA5QJMyJCJeA3EFqZ/RbTBvHMA/nhtXsD5UNzOkzN
MF8x+/Lbdu8eBwAAAIDGJ1r9lf7DXDUj/f/27j8a6nSPA3jJ1wwqI7GUG20l
51bsJrul2y1Zu8LdUMlabW1Yl2X7eSIrYlhWJBLVJHYlHUu599o4l/TLKj8O
m1g5EnUSOn4dP87MnJnvcWfGzBjMfIe1d8+92/v1nx/f5/t8n+c55/nM53me
78xdH1krnmyE0zhNMokPlny5grbmeKU0r1Ifvk7TIqJO4Ud19o09upr6Tudb
+SPslqLMH6q6qcvg3Du4gtDeHPuzzN2JuWZHS8UZDPLFGWu6gWeBOCZh/+i5
SGV0P/GIcA0mbhNtsedNaQaGW37UVHblSV7pNNkAZVoXkB0s+3kaDpd7R2v2
MtGaxnD+vltx7CBcgZozS1pdahNXzSZWjZ3/ma7639IHpIUX+yxRt0mWnEXj
VodZMDZ80ziWweM/O71Za9WRu+L01eSeEQQdLzKc39JxTHs59gx9mc5aVGfN
lDSCkg6SMwYVDo+hqzsXO1yUnrUjOy4eCClHRAQAADNGERHRZHa68BqYljRj
v1vCGWro+h49VYP9BWOLPuyC/QYa21jdim4inLfV1klPRFGWQSq4u5re3n9I
/pvsvmBHm7czW7IqxXlRlptXIVrlGuFzOliO6jTHtH7ps0yMKiiebfoX8Ooj
1hFjdRn8bjudsIppVrwBSzi5E7NUTQ6VTTNHJO9n6oiIXehtSBj5lsiu8HHL
DpsQuu65A9Lrx/fMCO9xhAWhtvWs7FE79g2PhVQ5ImWNQN1Bk8eg4uHBrgox
p81dbusTkfrD7fpONjnY0ztuARMAAOBXoYiI6OYhNZKZUhQEjM6t/KffbiRU
DGyPxp+RSDjFPBGaXqFwP69o3rZn9Up/oaQMiruLiCKiuTuuju3TYbfduvC1
n7fv4RBm/JkvLNRoDpf6pM8iJ8ChKn2aF/BqIiwZa45XiuIbblWw2fz3mI+o
0j+cEj/jObO1nDPlLqqJ7n8+9afJ+4jk/UwZEfFbTv2FUP1z4EPZ0Iv3KGwt
QawNfTR2vWzPCEZE9s55KvN3XZPdBKUsIlLeCFQdNGkMUg4PdmNWgM2y+aqz
Z82aTby1wT+7CSkiAACYOdnZaLiqsFScXaAIAsiu83b0OUv9S6f+0XzivK2s
jOlFRORAOfOveoYOSbX9osoPXXHW+B0johHeL8leji6uX0Yln43wdt4dUvBM
yXIYpzxwNaGi92nugNw/85+nBMaKszYziojIjnO2tIln2kTbmIQJHLnXi3+l
ouGcKXuCX2lERNkIyjpo0hjkKR4e/PbmFuFGI27vs+rC9LCdq+ZpWsU0KKwW
AADAFA3nuDFotimiw0tdrBMxkpmYIgjgN8Vv0tT44JzMPpMRsvN2kZIc0bh5
l7qMaUVE/OfJNppqG2KaJFFCX5oDXTjhch+cS77H+e/niB5HB8QJ/pfd390/
xSCR7Mr3XKYmmMofy4mdeHUJhxMle4xmtmrGa/jmfXWGc2afTPGDOZ/oqK0J
Hs3myIuIyM4MJ21i/Era8PVPdSjfWU3VCEo7aPIYVDw8ei65u18Ze40T//lZ
G12XLEXVAgAAmCpuReAq8WzPrYgMyRJPNpw7AcvUVgdVSrfO1IVZ0Jb4FI8e
EBq4e+wdxrtB5ZI0AjlQEuyV9IvC1MhwnvsCukxSQFkZcu9u6F0kjYg6U2xp
mi5ZooiI1xBpSahtOfNcfNa8I8//nYX0D1O7hm+GnRRGLdyyQybq70dJtxdT
PpuoTaZ1Ab8taZu526lr/ywo+LGw5Pa9yqc9U9gyPVR12t6QYeaX1zruDD6v
vSj8QPwDaX5GWBW6zCbsiVUTtazMqhe70Gsx3TpREkmQvcUHVhvYJDRKruc/
TbXTN/G80UnKXD++ZwTPWxVptXD10XvSrukq8FqhSmyMfapwdxRVIyjvoMlj
UOHw6GHZ61knSCNCsiPVcX1IFVVLAwAATAm/Pd9v7UqH0IzLkUdiS4VnnftL
v/XcsfFtBmOByWZXz4SywYfJPm7WK3UYjLetduyPKhJufua3FzOdt2zzjc7I
ybkUcyQgPL9NfhjAf5kfune75Z+0GPprPvrk84PpYyfS5Jeh+O5LrVw+jyrq
rMs45GFnps/QMrT4+LPgnGeCCbs41M7E5MPAtPyCaylR4enl92O2GJk7+Rw6
e7/jTpyn66YV2lq6pjbuIbltSp9tYMIFPcobg9N8cftihoHxUmMjI0N9bTpB
LFhp//XNdmVvt+S2FkbtftfI1O5gYm5J2f2inAtM/71/j5N+reuQoCq7Ni3X
Ziw03ermm1LZO75qLdKWXWRuv+dYVmNHYeQ+l/XGDEFLb/Pw9GeNfqUZ78XN
k7vsXQ9Es65eSQ52+8gpKK+Fo6RnBCHnnZjdHzh9Fft97rXU6ODjcUGOOnOI
RZZOX1yokb9rh6oRqDpoQP4YVDg8ei85mToEhEQkXSn497+yE4957Iu+i+8j
BgCA3wi/71ltzZPuaZ/ZIYde1VdVN3XN5LDPb1HGaDGNVQ+rm16Pplz4Q92v
B36PF/fxm1ku77mynoztQyaH2u7Eb19iuOd6H8V1UpxXtYXZl1OSUtJybjVO
Jbv0qwiap6G2oX1wWu8gJ4faG6oftfRyR8ie5pqfn7S+6hmWW8GpNIKyDlIw
BicOD7K387UgJuN1N1X+9KC2tQ8vZwQAAPgfwG87bb3I48bEt09zSnyXrwul
PHH2B4JGAAAAeNPx6uK2mu1Ia5QNBzgtVz3MrcIrFHxLxx8PGgEAAOCNRw7W
55z08/oqKCycyWRGnAzy2+d9Iqu2743a3IJGAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAPj/9h91hNK3
    "], {{0, 123.75}, {580.5, 0}}, {0, 255},
    ColorFunction->RGBColor,
    ImageResolution->{96., 96.},
    RasterInterpolation->"High"],
   BoxForm`ImageTag["Byte", ColorSpace -> "RGB", Interleaving -> True],
   Selectable->False],
  DefaultBaseStyle->"ImageGraphics",
  ImageSize->Automatic,
  ImageSizeRaw->{580.5, 123.75},
  PlotRange->{{0, 580.5}, {0, 123.75}}]], "Input",ExpressionUUID->"2f0e3a95-\
4a6c-f645-9bf8-3db102f733f4"],

Cell[BoxData[{
 RowBox[{
  RowBox[{"\[CapitalPi]0", "=", 
   RowBox[{
    RowBox[{"IdentityMatrix", "[", "3", "]"}], "-", 
    RowBox[{"Fz", ".", "Fz"}]}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"P", "=", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"0", ",", "1", ",", "0"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"1", ",", "0", ",", "0"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0", ",", "0", ",", "1"}], "}"}]}], "}"}]}], ";"}]}], "Input",
 CellChangeTimes->{{3.9899451441350403`*^9, 3.989945145313982*^9}, {
  3.989945376862858*^9, 3.989945378478647*^9}, {3.9899458722052727`*^9, 
  3.989945898881422*^9}},
 CellLabel->"In[76]:=",ExpressionUUID->"5f3a6970-d1ef-fd40-b6d1-6b17a4fca068"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"(", 
   RowBox[{"QFTj", "=", 
    RowBox[{"FullSimplify", "[", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{"1", "/", 
        RowBox[{"Sqrt", "[", "3", "]"}]}], ")"}], "*", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"\[Omega]", ",", "1", ",", 
          RowBox[{"\[Omega]", "^", "2"}]}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"1", ",", "1", ",", "1"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"\[Omega]", "^", "2"}], ",", "1", ",", "\[Omega]"}], 
         "}"}]}], "}"}]}], "]"}]}], ")"}], "//", "MatrixForm"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"(", 
   RowBox[{"FirstForm", "=", 
    RowBox[{"FullSimplify", "[", 
     RowBox[{"-", 
      RowBox[{
       RowBox[{"Uy2", "[", 
        RowBox[{
         RowBox[{"-", "Pi"}], "/", "2"}], "]"}], ".", 
       RowBox[{"URx", "[", 
        RowBox[{"-", "\[Alpha]"}], "]"}], ".", 
       RowBox[{"MatrixExp", "[", 
        RowBox[{
         RowBox[{"-", "I"}], " ", "*", 
         RowBox[{"(", 
          RowBox[{"Pi", "/", "2"}], ")"}], "*", "\[CapitalPi]0"}], "]"}]}]}], 
     "]"}]}], ")"}], "//", "MatrixForm"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"(", 
   RowBox[{"SecondForm", "=", 
    RowBox[{"FullSimplify", "[", 
     RowBox[{
      RowBox[{
       RowBox[{"Uy2", "[", 
        RowBox[{
         RowBox[{"-", "Pi"}], "/", "2"}], "]"}], ".", 
       RowBox[{"URx", "[", 
        RowBox[{"-", "\[Alpha]"}], "]"}], ".", 
       RowBox[{"Uz2", "[", 
        RowBox[{
         RowBox[{"-", "Pi"}], "/", "2"}], "]"}]}], "*", 
      RowBox[{"E", "^", 
       RowBox[{"(", 
        RowBox[{"I", "*", 
         RowBox[{"Pi", "/", "2"}]}], ")"}]}]}], "]"}]}], ")"}], "//", 
  "MatrixForm"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"(", 
    RowBox[{"SecondFormFixed", "=", 
     RowBox[{"FullSimplify", "[", 
      RowBox[{
       RowBox[{
        RowBox[{"Uy2", "[", 
         RowBox[{
          RowBox[{"-", "Pi"}], "/", "2"}], "]"}], ".", 
        RowBox[{"URx", "[", 
         RowBox[{"-", "\[Alpha]"}], "]"}], ".", 
        RowBox[{"Uz2", "[", 
         RowBox[{"Pi", "/", "2"}], "]"}]}], "*", 
       RowBox[{"E", "^", 
        RowBox[{"(", 
         RowBox[{"I", "*", 
          RowBox[{"Pi", "/", "2"}]}], ")"}]}]}], "]"}]}], ")"}], "//", 
   "MatrixForm"}], ";"}]}], "Input",
 CellChangeTimes->{{3.9899465417163944`*^9, 3.9899465506123867`*^9}, {
  3.989946967879406*^9, 3.9899469682929287`*^9}, {3.9899470552373447`*^9, 
  3.9899470857215385`*^9}, {3.98994724956106*^9, 3.9899472759315815`*^9}, {
  3.989947358442932*^9, 3.9899473591189995`*^9}},
 CellLabel->
  "In[184]:=",ExpressionUUID->"9ed73659-dbee-e243-b128-3e74ba89068b"],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", GridBox[{
     {
      RowBox[{
       FractionBox["1", "6"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"3", " ", "\[ImaginaryI]"}], "-", 
         SqrtBox["3"]}], ")"}]}], 
      FractionBox["1", 
       SqrtBox["3"]], 
      RowBox[{
       FractionBox["1", "6"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"-", "3"}], " ", "\[ImaginaryI]"}], "-", 
         SqrtBox["3"]}], ")"}]}]},
     {
      FractionBox["1", 
       SqrtBox["3"]], 
      FractionBox["1", 
       SqrtBox["3"]], 
      FractionBox["1", 
       SqrtBox["3"]]},
     {
      RowBox[{
       FractionBox["1", "6"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"-", "3"}], " ", "\[ImaginaryI]"}], "-", 
         SqrtBox["3"]}], ")"}]}], 
      FractionBox["1", 
       SqrtBox["3"]], 
      RowBox[{
       FractionBox["1", "6"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"3", " ", "\[ImaginaryI]"}], "-", 
         SqrtBox["3"]}], ")"}]}]}
    },
    GridBoxAlignment->{"Columns" -> {{Center}}, "Rows" -> {{Baseline}}},
    GridBoxSpacings->{"Columns" -> {
        Offset[0.27999999999999997`], {
         Offset[0.7]}, 
        Offset[0.27999999999999997`]}, "Rows" -> {
        Offset[0.2], {
         Offset[0.4]}, 
        Offset[0.2]}}], "\[NoBreak]", ")"}],
  Function[BoxForm`e$, 
   MatrixForm[BoxForm`e$]]]], "Output",
 CellChangeTimes->{{3.9899453702490025`*^9, 3.9899453800801964`*^9}, {
   3.9899454535918903`*^9, 3.989945460053217*^9}, 3.98994549183914*^9, 
   3.9899456025441284`*^9, {3.98994611221229*^9, 3.9899461739849396`*^9}, {
   3.9899465422943172`*^9, 3.989946550945957*^9}, {3.989947035121559*^9, 
   3.9899470860705986`*^9}, {3.989947273007517*^9, 3.9899472762518787`*^9}, 
   3.9899473595228825`*^9},
 CellLabel->
  "Out[184]//MatrixForm=",ExpressionUUID->"39003959-8330-ad46-943b-\
9ac9617f920a"],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", GridBox[{
     {
      RowBox[{
       FractionBox["1", "6"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"3", " ", "\[ImaginaryI]"}], "-", 
         SqrtBox["3"]}], ")"}]}], 
      FractionBox["1", 
       SqrtBox["3"]], 
      RowBox[{
       FractionBox["1", "6"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"-", "3"}], " ", "\[ImaginaryI]"}], "-", 
         SqrtBox["3"]}], ")"}]}]},
     {
      FractionBox["1", 
       SqrtBox["3"]], 
      FractionBox["1", 
       SqrtBox["3"]], 
      FractionBox["1", 
       SqrtBox["3"]]},
     {
      RowBox[{
       FractionBox["1", "6"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"-", "3"}], " ", "\[ImaginaryI]"}], "-", 
         SqrtBox["3"]}], ")"}]}], 
      FractionBox["1", 
       SqrtBox["3"]], 
      RowBox[{
       FractionBox["1", "6"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"3", " ", "\[ImaginaryI]"}], "-", 
         SqrtBox["3"]}], ")"}]}]}
    },
    GridBoxAlignment->{"Columns" -> {{Center}}, "Rows" -> {{Baseline}}},
    GridBoxSpacings->{"Columns" -> {
        Offset[0.27999999999999997`], {
         Offset[0.7]}, 
        Offset[0.27999999999999997`]}, "Rows" -> {
        Offset[0.2], {
         Offset[0.4]}, 
        Offset[0.2]}}], "\[NoBreak]", ")"}],
  Function[BoxForm`e$, 
   MatrixForm[BoxForm`e$]]]], "Output",
 CellChangeTimes->{{3.9899453702490025`*^9, 3.9899453800801964`*^9}, {
   3.9899454535918903`*^9, 3.989945460053217*^9}, 3.98994549183914*^9, 
   3.9899456025441284`*^9, {3.98994611221229*^9, 3.9899461739849396`*^9}, {
   3.9899465422943172`*^9, 3.989946550945957*^9}, {3.989947035121559*^9, 
   3.9899470860705986`*^9}, {3.989947273007517*^9, 3.9899472762518787`*^9}, 
   3.9899473595789967`*^9},
 CellLabel->
  "Out[185]//MatrixForm=",ExpressionUUID->"27cb6dd1-74ea-b64f-b7b6-\
864dbfb6a82d"],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", GridBox[{
     {
      RowBox[{
       FractionBox["1", "6"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"-", "3"}], " ", "\[ImaginaryI]"}], "+", 
         SqrtBox["3"]}], ")"}]}], 
      FractionBox["1", 
       SqrtBox["3"]], 
      RowBox[{
       FractionBox["1", "6"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"3", " ", "\[ImaginaryI]"}], "+", 
         SqrtBox["3"]}], ")"}]}]},
     {
      RowBox[{"-", 
       FractionBox["1", 
        SqrtBox["3"]]}], 
      FractionBox["1", 
       SqrtBox["3"]], 
      RowBox[{"-", 
       FractionBox["1", 
        SqrtBox["3"]]}]},
     {
      RowBox[{
       FractionBox["1", "6"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"3", " ", "\[ImaginaryI]"}], "+", 
         SqrtBox["3"]}], ")"}]}], 
      FractionBox["1", 
       SqrtBox["3"]], 
      RowBox[{
       FractionBox["1", "6"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"-", "3"}], " ", "\[ImaginaryI]"}], "+", 
         SqrtBox["3"]}], ")"}]}]}
    },
    GridBoxAlignment->{"Columns" -> {{Center}}, "Rows" -> {{Baseline}}},
    GridBoxSpacings->{"Columns" -> {
        Offset[0.27999999999999997`], {
         Offset[0.7]}, 
        Offset[0.27999999999999997`]}, "Rows" -> {
        Offset[0.2], {
         Offset[0.4]}, 
        Offset[0.2]}}], "\[NoBreak]", ")"}],
  Function[BoxForm`e$, 
   MatrixForm[BoxForm`e$]]]], "Output",
 CellChangeTimes->{{3.9899453702490025`*^9, 3.9899453800801964`*^9}, {
   3.9899454535918903`*^9, 3.989945460053217*^9}, 3.98994549183914*^9, 
   3.9899456025441284`*^9, {3.98994611221229*^9, 3.9899461739849396`*^9}, {
   3.9899465422943172`*^9, 3.989946550945957*^9}, {3.989947035121559*^9, 
   3.9899470860705986`*^9}, {3.989947273007517*^9, 3.9899472762518787`*^9}, 
   3.989947359601124*^9},
 CellLabel->
  "Out[186]//MatrixForm=",ExpressionUUID->"b29a5565-603e-7f48-9e78-\
373e68594f31"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{"Equal", "[", 
  RowBox[{"QFTj", ",", "FirstForm"}], "]"}], "\[IndentingNewLine]", 
 RowBox[{"Equal", "[", 
  RowBox[{"QFTj", ",", "SecondForm"}], "]"}], "\[IndentingNewLine]", 
 RowBox[{"Equal", "[", 
  RowBox[{"QFTj", ",", "SecondFormFixed"}], "]"}]}], "Input",
 CellChangeTimes->{{3.9899472203727856`*^9, 3.9899472458469124`*^9}, {
  3.989947284160324*^9, 3.989947355632496*^9}},
 CellLabel->
  "In[188]:=",ExpressionUUID->"433bd316-88fe-2449-8c99-fb25dd8fe524"],

Cell[BoxData["True"], "Output",
 CellChangeTimes->{{3.989947240926546*^9, 3.989947246332693*^9}, {
   3.989947309738905*^9, 3.9899473238900223`*^9}, 3.989947361142908*^9},
 CellLabel->
  "Out[188]=",ExpressionUUID->"e11c277f-c016-3544-9bda-632c56a8b743"],

Cell[BoxData["False"], "Output",
 CellChangeTimes->{{3.989947240926546*^9, 3.989947246332693*^9}, {
   3.989947309738905*^9, 3.9899473238900223`*^9}, 3.9899473611469307`*^9},
 CellLabel->
  "Out[189]=",ExpressionUUID->"1328be2c-2770-5545-9d8c-e40f4838fd0d"],

Cell[BoxData["True"], "Output",
 CellChangeTimes->{{3.989947240926546*^9, 3.989947246332693*^9}, {
   3.989947309738905*^9, 3.9899473238900223`*^9}, 3.989947361149023*^9},
 CellLabel->
  "Out[190]=",ExpressionUUID->"724e8b91-2c95-4740-ac3d-03769566ac1b"]
}, Open  ]],

Cell[BoxData[
 RowBox[{"(*", " ", 
  RowBox[{
  "Rest", " ", "of", " ", "the", " ", "code", " ", "is", " ", "my", " ", 
   "check", " ", "did", " ", "I", " ", "use", " ", "correct", " ", 
   "transformation", " ", "of", " ", 
   RowBox[{"basis", "."}]}], " ", "*)"}]], "Input",
 CellChangeTimes->{{3.98994737300683*^9, 
  3.9899473886727524`*^9}},ExpressionUUID->"0a029e5d-6afc-e749-b58f-\
011d16922cf6"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{
   RowBox[{"(", 
    RowBox[{"QFTc", "=", 
     RowBox[{"FullSimplify", "[", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{"1", "/", 
         RowBox[{"Sqrt", "[", "3", "]"}]}], ")"}], "*", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"1", ",", "1", ",", "1"}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"1", ",", "\[Omega]", ",", 
           RowBox[{"\[Omega]", "^", "2"}]}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"1", ",", 
           RowBox[{"\[Omega]", "^", "2"}], ",", "\[Omega]"}], "}"}]}], 
        "}"}]}], "]"}]}], ")"}], "//", "MatrixForm"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"(", 
   RowBox[{"QFTj", "=", 
    RowBox[{"FullSimplify", "[", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{"1", "/", 
        RowBox[{"Sqrt", "[", "3", "]"}]}], ")"}], "*", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"\[Omega]", ",", "1", ",", 
          RowBox[{"\[Omega]", "^", "2"}]}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"1", ",", "1", ",", "1"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"\[Omega]", "^", "2"}], ",", "1", ",", "\[Omega]"}], 
         "}"}]}], "}"}]}], "]"}]}], ")"}], "//", "MatrixForm"}]}], "Input",
 CellChangeTimes->{{3.989942600345644*^9, 3.989942622611067*^9}, {
   3.9899426553223324`*^9, 3.9899427087019157`*^9}, {3.989942989249563*^9, 
   3.989943012647476*^9}, {3.989943186550024*^9, 3.989943187941122*^9}, {
   3.989945154540182*^9, 3.989945157684273*^9}, {3.9899455990717735`*^9, 
   3.9899456203733997`*^9}, 3.989946614319433*^9},
 CellLabel->"In[94]:=",ExpressionUUID->"f8ee62ab-30bc-a14c-a33c-da41f1e11f60"],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", GridBox[{
     {
      RowBox[{
       FractionBox["1", "6"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"3", " ", "\[ImaginaryI]"}], "-", 
         SqrtBox["3"]}], ")"}]}], 
      FractionBox["1", 
       SqrtBox["3"]], 
      RowBox[{
       FractionBox["1", "6"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"-", "3"}], " ", "\[ImaginaryI]"}], "-", 
         SqrtBox["3"]}], ")"}]}]},
     {
      FractionBox["1", 
       SqrtBox["3"]], 
      FractionBox["1", 
       SqrtBox["3"]], 
      FractionBox["1", 
       SqrtBox["3"]]},
     {
      RowBox[{
       FractionBox["1", "6"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"-", "3"}], " ", "\[ImaginaryI]"}], "-", 
         SqrtBox["3"]}], ")"}]}], 
      FractionBox["1", 
       SqrtBox["3"]], 
      RowBox[{
       FractionBox["1", "6"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"3", " ", "\[ImaginaryI]"}], "-", 
         SqrtBox["3"]}], ")"}]}]}
    },
    GridBoxAlignment->{"Columns" -> {{Center}}, "Rows" -> {{Baseline}}},
    GridBoxSpacings->{"Columns" -> {
        Offset[0.27999999999999997`], {
         Offset[0.7]}, 
        Offset[0.27999999999999997`]}, "Rows" -> {
        Offset[0.2], {
         Offset[0.4]}, 
        Offset[0.2]}}], "\[NoBreak]", ")"}],
  Function[BoxForm`e$, 
   MatrixForm[BoxForm`e$]]]], "Output",
 CellChangeTimes->{{3.9899455998224487`*^9, 3.9899456208853683`*^9}, {
   3.9899461138477592`*^9, 3.989946130042267*^9}, 3.98994619695426*^9, {
   3.989946611161892*^9, 3.9899466145917454`*^9}},
 CellLabel->
  "Out[95]//MatrixForm=",ExpressionUUID->"4b64be62-6832-f04b-bbde-\
87e4dd02c9da"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{"Clear", "[", "\[Omega]", "]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"(", 
   RowBox[{"Xc12", "=", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"1", ",", "0", ",", "0"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"0", ",", "0", ",", "1"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"0", ",", "1", ",", "0"}], "}"}]}], "}"}]}], ")"}], "//", 
  "MatrixForm"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"P", ".", 
   RowBox[{"URx", "[", "Pi", "]"}], ".", "P"}], "//", 
  "MatrixForm"}], "\[IndentingNewLine]"}], "Input",
 CellChangeTimes->{{3.9899456859451313`*^9, 3.989945755327324*^9}, {
  3.9899467224500885`*^9, 3.9899467732316837`*^9}, {3.9899477057310963`*^9, 
  3.9899477075309925`*^9}},
 CellLabel->
  "In[191]:=",ExpressionUUID->"1d83ae83-dec0-5243-aa4b-1323e1d2fffe"],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", GridBox[{
     {"1", "0", "0"},
     {"0", "0", "1"},
     {"0", "1", "0"}
    },
    GridBoxAlignment->{"Columns" -> {{Center}}, "Rows" -> {{Baseline}}},
    GridBoxSpacings->{"Columns" -> {
        Offset[0.27999999999999997`], {
         Offset[0.7]}, 
        Offset[0.27999999999999997`]}, "Rows" -> {
        Offset[0.2], {
         Offset[0.4]}, 
        Offset[0.2]}}], "\[NoBreak]", ")"}],
  Function[BoxForm`e$, 
   MatrixForm[BoxForm`e$]]]], "Output",
 CellChangeTimes->{
  3.989945755559757*^9, {3.9899462014283504`*^9, 3.9899462051474457`*^9}, 
   3.989946656491335*^9, {3.9899467272950745`*^9, 3.989946782855362*^9}, 
   3.9899477094868984`*^9},
 CellLabel->
  "Out[192]//MatrixForm=",ExpressionUUID->"176a17ca-ba28-b74b-a16b-\
00e9146416aa"],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", GridBox[{
     {
      RowBox[{"-", "1"}], "0", "0"},
     {"0", "0", 
      RowBox[{"-", "1"}]},
     {"0", 
      RowBox[{"-", "1"}], "0"}
    },
    GridBoxAlignment->{"Columns" -> {{Center}}, "Rows" -> {{Baseline}}},
    GridBoxSpacings->{"Columns" -> {
        Offset[0.27999999999999997`], {
         Offset[0.7]}, 
        Offset[0.27999999999999997`]}, "Rows" -> {
        Offset[0.2], {
         Offset[0.4]}, 
        Offset[0.2]}}], "\[NoBreak]", ")"}],
  Function[BoxForm`e$, 
   MatrixForm[BoxForm`e$]]]], "Output",
 CellChangeTimes->{
  3.989945755559757*^9, {3.9899462014283504`*^9, 3.9899462051474457`*^9}, 
   3.989946656491335*^9, {3.9899467272950745`*^9, 3.989946782855362*^9}, 
   3.9899477094944077`*^9},
 CellLabel->
  "Out[193]//MatrixForm=",ExpressionUUID->"b6694df6-ef41-5b48-987c-\
681bccb3784d"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"\[Omega]", " ", "=", " ", 
   RowBox[{"Exp", "[", 
    RowBox[{"2", "*", "I", "*", 
     RowBox[{"Pi", "/", "3"}]}], "]"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"FullSimplify", "[", 
   RowBox[{"(", 
    RowBox[{"Zc", "=", 
     RowBox[{"DiagonalMatrix", "[", 
      RowBox[{"{", 
       RowBox[{"1", ",", "\[Omega]", ",", 
        RowBox[{"\[Omega]", "^", "2"}]}], "}"}], "]"}]}], ")"}], "]"}], "//", 
  "MatrixForm"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"FullSimplify", "[", 
   RowBox[{"P", ".", 
    RowBox[{"URz", "[", 
     RowBox[{"2", 
      RowBox[{"Pi", "/", "3"}]}], "]"}], ".", "P"}], "]"}], "//", 
  "MatrixForm"}], "\[IndentingNewLine]"}], "Input",
 CellChangeTimes->{{3.989945759085911*^9, 3.989945805210247*^9}, {
  3.989946662415516*^9, 3.9899466836173096`*^9}, {3.989946740196274*^9, 
  3.9899467677303753`*^9}, {3.9899468540119495`*^9, 3.989946909716362*^9}, {
  3.989946944313896*^9, 3.9899469444624233`*^9}},
 CellLabel->
  "In[194]:=",ExpressionUUID->"e3512d60-fde4-6444-8cff-066757191c33"],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", GridBox[{
     {"1", "0", "0"},
     {"0", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{"-", "1"}], ")"}], 
       RowBox[{"2", "/", "3"}]], "0"},
     {"0", "0", 
      RowBox[{"-", 
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{"-", "1"}], ")"}], 
        RowBox[{"1", "/", "3"}]]}]}
    },
    GridBoxAlignment->{"Columns" -> {{Center}}, "Rows" -> {{Baseline}}},
    GridBoxSpacings->{"Columns" -> {
        Offset[0.27999999999999997`], {
         Offset[0.7]}, 
        Offset[0.27999999999999997`]}, "Rows" -> {
        Offset[0.2], {
         Offset[0.4]}, 
        Offset[0.2]}}], "\[NoBreak]", ")"}],
  Function[BoxForm`e$, 
   MatrixForm[BoxForm`e$]]]], "Output",
 CellChangeTimes->{{3.989945764253233*^9, 3.989945773460924*^9}, 
   3.9899458056180363`*^9, {3.989946663229307*^9, 3.9899466840999565`*^9}, {
   3.9899467471552715`*^9, 3.989946768745228*^9}, {3.9899468710181866`*^9, 
   3.9899469451115417`*^9}, 3.989947712107069*^9},
 CellLabel->
  "Out[195]//MatrixForm=",ExpressionUUID->"f37fba55-d4e3-8643-98f1-\
6ce83f735afd"],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", GridBox[{
     {"1", "0", "0"},
     {"0", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{"-", "1"}], ")"}], 
       RowBox[{"2", "/", "3"}]], "0"},
     {"0", "0", 
      RowBox[{"-", 
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{"-", "1"}], ")"}], 
        RowBox[{"1", "/", "3"}]]}]}
    },
    GridBoxAlignment->{"Columns" -> {{Center}}, "Rows" -> {{Baseline}}},
    GridBoxSpacings->{"Columns" -> {
        Offset[0.27999999999999997`], {
         Offset[0.7]}, 
        Offset[0.27999999999999997`]}, "Rows" -> {
        Offset[0.2], {
         Offset[0.4]}, 
        Offset[0.2]}}], "\[NoBreak]", ")"}],
  Function[BoxForm`e$, 
   MatrixForm[BoxForm`e$]]]], "Output",
 CellChangeTimes->{{3.989945764253233*^9, 3.989945773460924*^9}, 
   3.9899458056180363`*^9, {3.989946663229307*^9, 3.9899466840999565`*^9}, {
   3.9899467471552715`*^9, 3.989946768745228*^9}, {3.9899468710181866`*^9, 
   3.9899469451115417`*^9}, 3.9899477121360207`*^9},
 CellLabel->
  "Out[196]//MatrixForm=",ExpressionUUID->"6d94d8fc-cc94-b547-8bad-\
411d8d3cfcaf"]
}, Open  ]]
},
WindowSize->{1428, 735.75},
WindowMargins->{{0, Automatic}, {Automatic, 0}},
Magnification:>0.9 Inherited,
FrontEndVersion->"14.2 for Microsoft Windows (64-bit) (March 14, 2025)",
StyleDefinitions->"Default.nb",
ExpressionUUID->"301a588e-eae2-7245-b575-07d4580e7cc8"
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{}
*)
(*CellTagsIndex
CellTagsIndex->{}
*)
(*NotebookFileOutline
Notebook[{
Cell[554, 20, 2856, 80, 128, "Input",ExpressionUUID->"1aae7eb5-948b-c148-ac32-bf6ff841f1e2"],
Cell[3413, 102, 1692, 41, 111, "Input",ExpressionUUID->"2b0d04c6-7d1f-354d-bdde-75aff4c2a934"],
Cell[5108, 145, 32793, 543, 123, "Input",ExpressionUUID->"2f0e3a95-4a6c-f645-9bf8-3db102f733f4"],
Cell[37904, 690, 738, 19, 42, "Input",ExpressionUUID->"5f3a6970-d1ef-fd40-b6d1-6b17a4fca068"],
Cell[CellGroupData[{
Cell[38667, 713, 2740, 80, 76, "Input",ExpressionUUID->"9ed73659-dbee-e243-b128-3e74ba89068b"],
Cell[41410, 795, 1955, 61, 96, "Output",ExpressionUUID->"39003959-8330-ad46-943b-9ac9617f920a"],
Cell[43368, 858, 1955, 61, 96, "Output",ExpressionUUID->"27cb6dd1-74ea-b64f-b7b6-864dbfb6a82d"],
Cell[45326, 921, 2001, 63, 96, "Output",ExpressionUUID->"b29a5565-603e-7f48-9e78-373e68594f31"]
}, Open  ]],
Cell[CellGroupData[{
Cell[47364, 989, 489, 10, 59, "Input",ExpressionUUID->"433bd316-88fe-2449-8c99-fb25dd8fe524"],
Cell[47856, 1001, 254, 4, 28, "Output",ExpressionUUID->"e11c277f-c016-3544-9bda-632c56a8b743"],
Cell[48113, 1007, 257, 4, 28, "Output",ExpressionUUID->"1328be2c-2770-5545-9d8c-e40f4838fd0d"],
Cell[48373, 1013, 254, 4, 28, "Output",ExpressionUUID->"724e8b91-2c95-4740-ac3d-03769566ac1b"]
}, Open  ]],
Cell[48642, 1020, 404, 9, 25, "Input",ExpressionUUID->"0a029e5d-6afc-e749-b58f-011d16922cf6"],
Cell[CellGroupData[{
Cell[49071, 1033, 1738, 45, 42, "Input",ExpressionUUID->"f8ee62ab-30bc-a14c-a33c-da41f1e11f60"],
Cell[50812, 1080, 1751, 58, 96, "Output",ExpressionUUID->"4b64be62-6832-f04b-bbde-87e4dd02c9da"]
}, Open  ]],
Cell[CellGroupData[{
Cell[52600, 1143, 844, 22, 76, "Input",ExpressionUUID->"1d83ae83-dec0-5243-aa4b-1323e1d2fffe"],
Cell[53447, 1167, 808, 23, 68, "Output",ExpressionUUID->"176a17ca-ba28-b74b-a16b-00e9146416aa"],
Cell[54258, 1192, 874, 26, 68, "Output",ExpressionUUID->"b6694df6-ef41-5b48-987c-681bccb3784d"]
}, Open  ]],
Cell[CellGroupData[{
Cell[55169, 1223, 1073, 27, 76, "Input",ExpressionUUID->"e3512d60-fde4-6444-8cff-066757191c33"],
Cell[56245, 1252, 1123, 32, 72, "Output",ExpressionUUID->"f37fba55-d4e3-8643-98f1-6ce83f735afd"],
Cell[57371, 1286, 1125, 32, 72, "Output",ExpressionUUID->"6d94d8fc-cc94-b547-8bad-411d8d3cfcaf"]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

