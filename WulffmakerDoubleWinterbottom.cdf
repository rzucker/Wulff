(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 11.0' *)

(*************************************************************************)
(*                                                                       *)
(*  The Mathematica License under which this file was created prohibits  *)
(*  restricting third parties in receipt of this file from republishing  *)
(*  or redistributing it by any means, including but not limited to      *)
(*  rights management or terms of use, without the express consent of    *)
(*  Wolfram Research, Inc. For additional information concerning CDF     *)
(*  licensing and redistribution see:                                    *)
(*                                                                       *)
(*        www.wolfram.com/cdf/adopting-cdf/licensing-options.html        *)
(*                                                                       *)
(*************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[      1064,         20]
NotebookDataLength[    521874,      11731]
NotebookOptionsPosition[    521365,      11691]
NotebookOutlinePosition[    521725,      11707]
CellTagsIndexPosition[    521682,      11704]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell[TextData[{
 "Wulffmaker: double-Winterbottom edition V3.2\n",
 StyleBox["A tool to calculate the equilibrium shape of particles attached to \
flat, deformable interfaces ",
  FontSize->24,
  FontSlant->"Italic"]
}], "Title",
 CellChangeTimes->{{3.520346274548195*^9, 3.520346284770348*^9}, {
   3.521998577166836*^9, 3.521998612907753*^9}, {3.5231125721529417`*^9, 
   3.523112580211658*^9}, {3.523904433680468*^9, 3.523904505840941*^9}, {
   3.54183156372715*^9, 3.541831583813733*^9}, {3.541832602733677*^9, 
   3.541832632106862*^9}, {3.54748833561751*^9, 3.547488344439584*^9}, {
   3.547827205661889*^9, 3.5478272150131693`*^9}, 3.547827246100506*^9, {
   3.54813673578376*^9, 3.548136737487691*^9}, {3.548493613097845*^9, 
   3.548493613609152*^9}, {3.6085397021487827`*^9, 3.6085397148100157`*^9}, {
   3.610698849252187*^9, 3.610698849900836*^9}}],

Cell[TextData[{
 "Brought to you by Rachel V. Zucker & W. Craig Carter\nPlease direct \
questions, comments, and bug reports to rzucker@mit.edu\n\n",
 StyleBox["Warning",
  FontSlant->"Italic"],
 ": using the notebook requires some patience on most computers. The \
computation is rather expensive, so please give it a few moments when you are \
computing shapes with many facets. It should take about 5-10 seconds to load \
initially.\n\nIf you use this software, please cite us in your work: \nRV \
Zucker, D Chatain, U Dahmen, S Hagege, WC Carter. \[OpenCurlyDoubleQuote]New \
Software Tools for the Calculation and Display of Isolated and Attached \
Interfacial-Energy Minimizing Particle Shapes.\[CloseCurlyDoubleQuote] ",
 StyleBox["Journal of Materials Science",
  FontSlant->"Italic"],
 " ",
 StyleBox["47",
  FontWeight->"Bold"],
 ":8290-8302 (2012)\n\n(Double-click the blue brackets at the far right of \
the window which terminate in downward-pointing arrows to expand/hide \
sections)"
}], "Text",
 CellChangeTimes->{{3.541761636151701*^9, 3.541761640797489*^9}, {
  3.547828708633883*^9, 3.547828753229066*^9}, {3.548493072766939*^9, 
  3.5484930729906893`*^9}, {3.5892916759715567`*^9, 3.58929178447834*^9}, {
  3.608539624094178*^9, 3.608539645307825*^9}, {3.6085479178251877`*^9, 
  3.608547927286518*^9}, {3.610684680873575*^9, 3.610684698873301*^9}},
 FontSize->18],

Cell[CellGroupData[{

Cell["User Guide", "Section",
 CellChangeTimes->{{3.542038542176156*^9, 3.542038545221718*^9}, {
  3.547826578672875*^9, 3.5478265817096786`*^9}}],

Cell[CellGroupData[{

Cell["Introduction & basic instructions", "Subsection",
 CellChangeTimes->{{3.547826642478189*^9, 3.547826643932044*^9}, {
  3.547827037785692*^9, 3.547827040449471*^9}, {3.547827487910006*^9, 
  3.547827489381424*^9}, {3.54782826280947*^9, 3.5478282691851377`*^9}}],

Cell[TextData[{
 "Wulffmaker is designed to display the shape of crystals in three \
dimensions. The double-Winterbottom edition is for the calculation of the \
geometry in the case of a particle attached to a deformable, isotropic \
interface between two other phases. Classic examples include particles \
attached to grain boundaries, and particles sitting on the free surface of a \
substrate which is not rigid (for example, if the substrate is solid but can \
undergo diffusion). For a complete discussion of the double-Winterbottom \
construction, this software, and the relation to materials science, see the \
associated publication: RV Zucker, D Chatain, U Dahmen, S Hagege, WC Carter. \
\[OpenCurlyDoubleQuote]New Software Tools for the Calculation and Display of \
Isolated and Attached Interfacial-Energy Minimizing Particle Shapes.\
\[CloseCurlyDoubleQuote] ",
 StyleBox["Journal of Materials Science",
  FontSlant->"Italic"],
 ", 2012.\n\nWhen you open the code, you will probably be asked whether the \
enable dynamic updating. Click \[OpenCurlyDoubleQuote]yes.\
\[CloseCurlyDoubleQuote] If the code does not automatically evaluate, go to \
the navigation bar for the CDF player or ",
 StyleBox["Mathematica",
  FontSlant->"Italic"],
 " (whichever you are using) and select Evaluation -> Evaluate Notebook. You \
can also ensure that dynamic updating is enabled by going to Evaluation -> \
Dynamic Updating Enabled. There will be a check-mark next to the item if \
dynamic updating is turned on. \n\nDuring the evaluation, you will see some \
blue brackets at the right of the screen become bold and black, and the title \
at the top of the window will say Running...WulffmakerDoubleWintebottom. If \
it does appear to freeze, or you would like to quit a calculation that is \
taknig too long, you can abort all evaluations by selecting Evaluation -> \
Abort Evaluation. To get a fresh start, select Evaluation -> Quit Kernel -> \
Quit. This will reset ",
 StyleBox["Mathematica",
  FontSlant->"Italic"],
 "\[CloseCurlyQuote]s memory. To use the code again, select Evaluation -> \
Evaluate Notebook. \n\n\n\nIn the physical scenerio this code is designed to \
model, there are 3 phases present: A (above the interface), B (below the \
interface), and P (the particle phase). There are 3 interfaces present: PA, \
PB, and AB. PA and PB may in general be anisotropic, and most of the user \
control is dedicated to these. AB is assumed to be isotropic and deformable. \
The nature of the PA interface is encapsulated in the Wulff shape, ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["W", "A"], TraditionalForm]]],
 ", which describes the equilibrium shape of P if entirely embedded within \
bulk A. Likewise, PB is fully described by ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["W", "B"], TraditionalForm]]],
 ". To describe ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["W", "A"], TraditionalForm]]],
 " and ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["W", "B"], TraditionalForm]]],
 ", the user can select any crystallographic symmetry, specify relative \
crystallographic axes magnitudes (a, b, c) and angles (\[Alpha], \[Beta], \
\[Gamma]), up to 20 symmetrically distinct facets \
(\[OpenCurlyDoubleQuote]facet families\[CloseCurlyDoubleQuote]), and assigns \
each family a surface energy (\[Gamma]). The facet families are identified by \
their normal vector in Miller indices, {h k l}. The orientation relationships \
between  ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["W", "A"], TraditionalForm]]],
 ", ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["W", "B"], TraditionalForm]]],
 ", and the AB interface are also specified by the user relative to a \
\[OpenCurlyDoubleQuote]global\[CloseCurlyDoubleQuote] reference frame.\n\nThe \
user controls the plot appearance, including colors, opacity, and whether to \
display the crystallographic axes. \[OpenCurlyDoubleQuote]Viewing axis\
\[CloseCurlyDoubleQuote] is the viewing direction (orthagonal to your \
screen), and \[OpenCurlyDoubleQuote]vertical \
direction\[CloseCurlyDoubleQuote] is the crystallographic direction pointing \
to the top of your screen. The view is not quite orthographic. By clicking an \
dragging on the plot its self, it can be rotated. By clicking on the plot to \
highlight it, an orange or gray frame will appear, and the plot can be made \
larger or smaller by dragging the corners. \n\nThe default lattice symmetry \
for both PA and PB is Cubic, the default point group is \
\[OpenCurlyDoubleQuote]m",
 Cell[BoxData[
  FormBox[
   OverscriptBox["3", "_"], TraditionalForm]]],
 "m\[CloseCurlyDoubleQuote], and the default number of facet families is 3 \
and 5, respectively. Only the point groups consistent with the selected \
lattice symmetry are available in the point group menu. The point groups are \
identified by their International symbol, in abbreviated form. Changing these \
values will reset the controls for facet family, \[Gamma], and color, so it \
is best to select these variables first before moving on to each specific \
facet family, \[Gamma], and color.\n\nBy default, Wulffmaker starts with 3 \
facet families: {0, 0, 1}, {1, 1, 1}, and {1, 1, 0}, and when more facet \
families are added, the default values are random {h k l}\[CloseCurlyQuote]s. \
You are free to select whatever {h k l}\[CloseCurlyQuote]s you like, and may \
change any of the \[Gamma]\[CloseCurlyQuote]s and colors. By expanding the \
slider controls for \[Gamma] (this is done by clicking on the \
\[OpenCurlyDoubleQuote]+\[OpenCurlyDoubleQuote] symbol next to the current \
value of \[Gamma], which defaults to 1), you can continuously change the \
surface energy of a plane as an anamation. You can also manually type in the \
desired \[Gamma] in the input field, even if it is outside the range of the \
slider.\n\t\nThe crystallographic controls (a, b, c) and (\[Alpha], \[Beta], \
\[Gamma]) appear above the Wulff shape. Only the crystallographic controls \
that are \[OpenCurlyDoubleQuote]free variables\[CloseCurlyDoubleQuote] under \
the selected lattice symmetry are available. The axes default to having \
length 1 and the angles default to 90 degrees, but can be freely changed. For \
any symmetry other than cubic, selecting these variables is essential to \
representing the Wulff shape correctly. For (a, b, c), only their relative \
magnitudes are important.\n\nIf you have ",
 StyleBox["Mathematica",
  FontSlant->"Italic"],
 ", you may modify the source code, but we suggest that modified vesions be \
saved with a different name so that you can always revert to the original. \
Common modifications are facilitated in the \[OpenCurlyDoubleQuote]Default \
Display Options\[CloseCurlyDoubleQuote] section. Such modifications include \
changing the default {h k l} values, changing the types of controls available \
on Wulffmaker, or changing default colors. These simple changes can be made \
by expanding the \[OpenCurlyDoubleQuote]Default Display Options\
\[CloseCurlyDoubleQuote] section, and the defaults for {h, k, l}, surface \
energies, and colors are set at the very top of this section. The default \
values of everything else are set at the bottom of this section. For more \
complicated modifications, or help with modifying the defaults, the authors \
will be happy to assist you if you are not able to make the changes yourself \
- just email us!"
}], "Text",
 CellChangeTimes->CompressedData["
1:eJxTTMoPSmViYGAQBWIQ3fZgI9Pz5FeOfPdKeED0DTtlHp+8V47H1oeBaU/5
3bM/AOmLk69vBNHvNhkbfwTSVVdrLEC02oOfGSBaYGJANoieOHNWDYiW/Xy6
HkQ/0J3cAla3bvU2EL1J88MuEC1/qp7lE5B2+BMYAaIPfY+cBKL1VmtPA4t7
JiwF0RmlDI9B9KITvE9BdJ/s0U8g2kz1w2cQbdNa/gtEl4ju/QeiFSeeYPsM
pFWe9YmA6MC9VxTNCoDmLvTwAdFN5v9TQfS52on5INo9onweiBafpzwfRIeU
/Vx18NErxxoPs80g+o3Ihu0get6L6/tB9PagXX9B9IwjFQyHgLTe1WNsIPrl
1QQREA0AsJG+Ag==
  "]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Conventions", "Subsection",
 CellChangeTimes->{{3.54849237747407*^9, 3.548492379978072*^9}}],

Cell[TextData[{
 "There is a \[OpenCurlyDoubleQuote]reference\[CloseCurlyDoubleQuote] set of \
axes, which are cartesian, and always have the x-axis pointing out of the \
screen towards you, the y-axis points to the right within the screen, and the \
z-axis points towards the top of the screen. The rotations of ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["W", "A"], TraditionalForm]]],
 " and ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["W", "B"], TraditionalForm]]],
 " are input with respect to the reference axes. Also, the orientation of the \
AB interface is specified with respect to the reference axes. If you want the \
entire plot to be rotated relative to the reference axes, change the viewing \
axis and vertical direction, so you look down the viewing axis on the \
reference axes. \n\nFor the specification of facet planes, the Miller indices \
(hkl) (those for the plane, not the direction normal to the facet) are used \
and converted to normal vectors by the software. \n\nThe software defaults to \
including rhombahedral crystals under the hexagonal system, and all planes \
are specified using hexagonal three-index notation. If you want to add \
rhombahedral symmetry as a separate item, you can modify the code, or get in \
touch with the authors for assistance.\n\nThis code uses the \
\[OpenCurlyDoubleQuote].\[CloseCurlyDoubleQuote] symbol for a decimal point \
(not a \[OpenCurlyDoubleQuote],\[CloseCurlyDoubleQuote]), and there are no \
spaces nor commas within integers (e.g. \[OpenCurlyDoubleQuote]12345.6789\
\[CloseCurlyDoubleQuote],  not \[OpenCurlyDoubleQuote]12 345.6789\
\[CloseCurlyDoubleQuote] nor \[OpenCurlyDoubleQuote]12,345.6789\
\[CloseCurlyDoubleQuote]). All triples of numbers (e.g. rotation axes) must \
be entered in the format  {1, 2, 3}   : bounded by curly brackets and \
separated by commas."
}], "Text",
 CellChangeTimes->{{3.548492390527033*^9, 3.5484924759592867`*^9}, {
  3.5484925063456783`*^9, 3.548492542085209*^9}, {3.548492709137825*^9, 
  3.5484930237932653`*^9}, {3.5484934352174597`*^9, 3.54849343586353*^9}, {
  3.608547522665102*^9, 3.6085475614639683`*^9}}]
}, Open  ]],

Cell[CellGroupData[{

Cell["Possible Issues", "Subsection",
 CellChangeTimes->{{3.5478266644360027`*^9, 3.547826676682588*^9}, {
  3.547828432388843*^9, 3.547828436612714*^9}, {3.548493438262217*^9, 
  3.548493438605301*^9}}],

Cell[TextData[{
 "If the shape specified by the facet families and point symmetry is not a \
closed volume, Wulffmaker will return \[OpenCurlyDoubleQuote]$Aborted\
\[CloseCurlyDoubleQuote] or an error (indicated by the plot area turning pink \
and red text below the user interface). By adding more facet families, one \
can find a closed shape. \n\nIf there are planes on both the top and bottom \
shape that are orthagonal to the interface and share a normal vector so that \
they are coincident, Wulffmaker will not know where to put the triple line, \
and will return an error. This can be avoided by adding a small offset \
between ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["W", "A"], TraditionalForm]]],
 " and ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["W", "B"], TraditionalForm]]],
 ", e.g. 1 degree of rotation about the (0, 0, 1) axis.\n\n",
 StyleBox["VERY COMMON ISSUE",
  FontSlant->"Italic"],
 ": Occasionally, a compliated shape calculated by Wulffmaker will have holes \
in the surface, and will not look right. This is because the value of the \
variable \[OpenCurlyDoubleQuote]sensitivity\[CloseCurlyDoubleQuote] is too \
small. \[OpenCurlyDoubleQuote]Sensitivity\[CloseCurlyDoubleQuote] determines \
the trade-off between speed and how thoroughly Wulffmaker looks for vertices \
on the equilibrum shape. Under most circumstances, a sensitivity in the range \
12-18 is sufficient. Try increasing by ~10 at a a time until the holes \
disappear. Opperating with an unnecissarily high sensitivity does not make \
the calculation more accurate, it only makes it much slower. Just use the \
smallest sensitivity that returns a shape without holes.\n\nIf the lattice \
symmetry is changed, the point group does not automatically switch to an \
allowed point group in the new lattice symmetry. As a result, the shape \
displayed immediately after a change to a new lattice symmetry will be wrong, \
or may even return an error (indicated by the graphics field turning pink). \
To display the correct shape, the user must select a point group from the \
menu. Wulffmaker should recover once a compatible point group is chosen.\n\n\
If the calculation is taking too long, you can abort the calculation by \
selecting Evaluation -> Abort Evaluation. To re-start, re-evaluate the code \
by selecting Evaluation -> Evaluate Notebook. \n\nIf one or both of the Wulff \
shapes are non-cubic in symmetry, a common mistake is not inputting the \
relative lengths of the crystallographic axes, (a, b, c). These values \
determine the conversion from Miller indices to cartesian coordinates.\n\nIf \
something seems wrong and isn\[CloseCurlyQuote]t fixed by something suggested \
here, a good first step is to restart ",
 StyleBox["Mathematica ",
  FontSlant->"Italic"],
 "and have no other notebooks open. This often fixes the problem."
}], "Text",
 CellChangeTimes->{
  3.547826684378992*^9, {3.54782827837436*^9, 3.547828656278908*^9}, {
   3.54782876352501*^9, 3.547828922857168*^9}, {3.54782957385254*^9, 
   3.547829779561461*^9}, {3.547830063751388*^9, 3.5478300654599953`*^9}, {
   3.548493275185636*^9, 3.54849329110295*^9}, {3.54849332869462*^9, 
   3.5484934328460627`*^9}, {3.608547616374535*^9, 3.6085477278838453`*^9}, {
   3.608547770146555*^9, 3.6085478844080353`*^9}}]
}, Open  ]]
}, Closed]],

Cell[CellGroupData[{

Cell["Default Display Options (customize Wulffmaker here)", "Section",
 CellChangeTimes->{{3.5203459494155293`*^9, 3.520345958653619*^9}, {
  3.541831602157487*^9, 3.5418316272041817`*^9}, {3.547830295367272*^9, 
  3.547830300779663*^9}, {3.608539469650886*^9, 3.608539514103581*^9}, {
  3.608539679282648*^9, 3.608539679618639*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"modify", " ", "the", " ", "defalt", " ", 
    RowBox[{"(", 
     RowBox[{"h", ",", " ", "k", ",", " ", "l"}], ")"}], " ", "values", " ", 
    "here"}], " ", "*)"}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{"pickIndex", "[", 
     RowBox[{"i_", ",", "j_", ",", " ", "id_"}], "]"}], ":=", 
    "\[IndentingNewLine]", 
    RowBox[{"If", "[", 
     RowBox[{
      RowBox[{"id", " ", "\[Equal]", " ", "1"}], ",", " ", 
      RowBox[{"(*", " ", 
       RowBox[{
        RowBox[{"this", " ", "is", " ", "for", " ", "the", " ", "top"}], ",", 
        " ", 
        RowBox[{
         SubscriptBox["W", "A"], " ", "shape"}]}], " ", "*)"}], " ", 
      RowBox[{"Which", "[", 
       RowBox[{
        RowBox[{"i", "\[Equal]", "1"}], ",", "\[IndentingNewLine]", 
        RowBox[{"Which", "[", 
         RowBox[{
          RowBox[{"j", "\[Equal]", "1"}], " ", ",", 
          RowBox[{"(*", " ", 
           RowBox[{"h", " ", "="}], " ", "*)"}], " ", "0", ",", 
          RowBox[{"j", "\[Equal]", "2"}], ",", 
          RowBox[{"(*", " ", 
           RowBox[{"k", " ", "="}], " ", "*)"}], " ", "0", ",", 
          RowBox[{"j", "\[Equal]", "3"}], ",", 
          RowBox[{"(*", " ", 
           RowBox[{"l", " ", "="}], " ", "*)"}], " ", "1", ",", "True", ",", 
          "1"}], "]"}], ",", "\[IndentingNewLine]", 
        RowBox[{"i", "\[Equal]", "2"}], ",", "\[IndentingNewLine]", 
        RowBox[{"Which", "[", 
         RowBox[{
          RowBox[{"j", "\[Equal]", "1"}], ",", "1", ",", 
          RowBox[{"j", "\[Equal]", "2"}], ",", "1", ",", 
          RowBox[{"j", "\[Equal]", "3"}], ",", "1", ",", "True", ",", "1"}], 
         "]"}], ",", "\[IndentingNewLine]", 
        RowBox[{"i", "\[Equal]", "3"}], ",", "\[IndentingNewLine]", 
        RowBox[{"Which", "[", 
         RowBox[{
          RowBox[{"j", "\[Equal]", "1"}], ",", "1", ",", 
          RowBox[{"j", "\[Equal]", "2"}], ",", "1", ",", 
          RowBox[{"j", "\[Equal]", "3"}], ",", "0", ",", "True", ",", "1"}], 
         "]"}], ",", "\[IndentingNewLine]", "True", ",", 
        "\[IndentingNewLine]", 
        RowBox[{"RandomInteger", "[", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"-", "8"}], ",", "8"}], "}"}], "]"}]}], "]"}], ",", " ", 
      RowBox[{"(*", " ", 
       RowBox[{
        RowBox[{"this", " ", "is", " ", "for", " ", "the", " ", "bottom"}], 
        ",", " ", 
        RowBox[{
         SubscriptBox["W", "B"], " ", "shape"}]}], " ", "*)"}], " ", 
      RowBox[{"Which", "[", 
       RowBox[{
        RowBox[{"i", "\[Equal]", "1"}], ",", "\[IndentingNewLine]", 
        RowBox[{"Which", "[", 
         RowBox[{
          RowBox[{"j", "\[Equal]", "1"}], ",", "0", ",", 
          RowBox[{"j", "\[Equal]", "2"}], ",", "0", ",", 
          RowBox[{"j", "\[Equal]", "3"}], ",", "1", ",", "True", ",", "1"}], 
         "]"}], ",", "\[IndentingNewLine]", 
        RowBox[{"i", "\[Equal]", "2"}], ",", "\[IndentingNewLine]", 
        RowBox[{"Which", "[", 
         RowBox[{
          RowBox[{"j", "\[Equal]", "1"}], ",", "1", ",", 
          RowBox[{"j", "\[Equal]", "2"}], ",", "1", ",", 
          RowBox[{"j", "\[Equal]", "3"}], ",", "1", ",", "True", ",", "1"}], 
         "]"}], ",", "\[IndentingNewLine]", 
        RowBox[{"i", "\[Equal]", "3"}], ",", "\[IndentingNewLine]", 
        RowBox[{"Which", "[", 
         RowBox[{
          RowBox[{"j", "\[Equal]", "1"}], ",", "1", ",", 
          RowBox[{"j", "\[Equal]", "2"}], ",", "1", ",", 
          RowBox[{"j", "\[Equal]", "3"}], ",", "0", ",", "True", ",", "1"}], 
         "]"}], ",", "\[IndentingNewLine]", 
        RowBox[{"i", "\[Equal]", "4"}], ",", "\[IndentingNewLine]", 
        RowBox[{"Which", "[", 
         RowBox[{
          RowBox[{"j", "\[Equal]", "1"}], ",", "1", ",", 
          RowBox[{"j", "\[Equal]", "2"}], ",", "2", ",", 
          RowBox[{"j", "\[Equal]", "3"}], ",", "3", ",", "True", ",", "1"}], 
         "]"}], ",", "\[IndentingNewLine]", 
        RowBox[{"i", "\[Equal]", "5"}], ",", "\[IndentingNewLine]", 
        RowBox[{"Which", "[", 
         RowBox[{
          RowBox[{"j", "\[Equal]", "1"}], ",", "1", ",", 
          RowBox[{"j", "\[Equal]", "2"}], ",", "0", ",", 
          RowBox[{"j", "\[Equal]", "3"}], ",", "2", ",", "True", ",", "1"}], 
         "]"}], ",", "\[IndentingNewLine]", "True", ",", 
        "\[IndentingNewLine]", 
        RowBox[{"RandomInteger", "[", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"-", "8"}], ",", "8"}], "}"}], "]"}]}], "]"}]}], "]"}]}], 
   "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{"(*", " ", 
    RowBox[{
    "modify", " ", "the", " ", "defalt", " ", "surface", " ", "energies", " ",
      "here"}], " ", "*)"}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"pickGamma", "[", 
     RowBox[{"i_", ",", " ", "id_"}], "]"}], ":=", "\[IndentingNewLine]", 
    RowBox[{"If", "[", 
     RowBox[{
      RowBox[{"id", " ", "\[Equal]", " ", "1"}], ",", " ", 
      RowBox[{"(*", " ", 
       SubscriptBox["W", "A"], " ", "*)"}], " ", 
      RowBox[{"Which", "[", 
       RowBox[{
        RowBox[{"i", "\[Equal]", "1"}], ",", "\[IndentingNewLine]", "1", ",", 
        "\[IndentingNewLine]", 
        RowBox[{"i", "\[Equal]", "2"}], ",", "\[IndentingNewLine]", "1", ",", 
        "\[IndentingNewLine]", 
        RowBox[{"i", "\[Equal]", "3"}], ",", "\[IndentingNewLine]", "1", ",", 
        "\[IndentingNewLine]", "True", ",", "\[IndentingNewLine]", "1"}], 
       "]"}], ",", " ", 
      RowBox[{"(*", " ", 
       SubscriptBox["W", "B"], " ", "*)"}], " ", 
      RowBox[{"Which", "[", 
       RowBox[{
        RowBox[{"i", "\[Equal]", "1"}], ",", "\[IndentingNewLine]", "1", ",", 
        "\[IndentingNewLine]", 
        RowBox[{"i", "\[Equal]", "2"}], ",", "\[IndentingNewLine]", "1", ",", 
        "\[IndentingNewLine]", 
        RowBox[{"i", "\[Equal]", "3"}], ",", "\[IndentingNewLine]", "1", ",", 
        "\[IndentingNewLine]", "True", ",", "\[IndentingNewLine]", "1"}], 
       "]"}]}], "\[IndentingNewLine]", "]"}]}], "\[IndentingNewLine]", 
   "\[IndentingNewLine]", 
   RowBox[{"(*", 
    RowBox[{
    "modify", " ", "the", " ", "default", " ", "display", " ", "colors", " ", 
     "here"}], "*)"}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"pickColor", "[", 
     RowBox[{"i_", ",", " ", "id_"}], "]"}], " ", ":=", " ", 
    RowBox[{"If", "[", 
     RowBox[{
      RowBox[{"id", " ", "\[Equal]", " ", "1"}], ",", " ", 
      RowBox[{"(*", " ", 
       RowBox[{"top", ",", " ", "A"}], " ", "*)"}], " ", 
      RowBox[{"Which", "[", 
       RowBox[{
        RowBox[{"i", "\[Equal]", "1"}], ",", "\[IndentingNewLine]", 
        RowBox[{"Darker", "@", "Magenta"}], ",", "\[IndentingNewLine]", 
        RowBox[{"i", "\[Equal]", "2"}], ",", "\[IndentingNewLine]", 
        RowBox[{"Darker", "@", "Yellow"}], ",", "\[IndentingNewLine]", 
        RowBox[{"i", "\[Equal]", "3"}], ",", "\[IndentingNewLine]", "Orange", 
        ",", "\[IndentingNewLine]", "True", ",", "\[IndentingNewLine]", 
        "Red"}], "]"}], ",", " ", 
      RowBox[{"(*", " ", 
       RowBox[{"bottom", ",", " ", "B"}], " ", "*)"}], " ", 
      RowBox[{"Which", "[", 
       RowBox[{
        RowBox[{"i", "\[Equal]", "1"}], ",", "\[IndentingNewLine]", 
        RowBox[{"Darker", "@", "Cyan"}], ",", "\[IndentingNewLine]", 
        RowBox[{"i", "\[Equal]", "2"}], ",", "\[IndentingNewLine]", "Green", 
        ",", "\[IndentingNewLine]", 
        RowBox[{"i", "\[Equal]", "3"}], ",", "\[IndentingNewLine]", "Blue", 
        ",", "\[IndentingNewLine]", "True", ",", "\[IndentingNewLine]", 
        RowBox[{"Darker", "@", "Green"}]}], "]"}]}], "]"}]}], 
   "\[IndentingNewLine]", "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{"(*", " ", 
    RowBox[{
    "modify", " ", "all", " ", "other", " ", "default", " ", "values", " ", 
     "here"}], " ", "*)"}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"defShowwulff", " ", "=", " ", "False"}], ";"}], " ", 
   RowBox[{"(*", " ", 
    RowBox[{"whether", " ", "or", " ", "not", " ", "to", " ", "show", " ", 
     SubscriptBox["W", "A"], " ", "and", " ", 
     SubscriptBox["W", "B"]}], " ", "*)"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"defShowstats", " ", "=", " ", "False"}], ";"}], " ", 
   RowBox[{"(*", " ", 
    RowBox[{
    "whether", " ", "or", " ", "not", " ", "to", " ", "show", " ", "the", " ",
      "energetic", " ", "data", " ", "about", " ", "the", " ", "shape"}], " ",
     "*)"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"defSens", " ", "=", " ", "16"}], ";"}], " ", 
   RowBox[{"(*", " ", 
    RowBox[{
     RowBox[{"the", " ", 
      RowBox[{"sensitivity", ":", " ", 
       RowBox[{"min", " ", "10"}]}]}], ",", " ", 
     RowBox[{
     "max", " ", "100.", " ", "This", " ", "sets", " ", "the", " ", 
      "tradeoff", " ", "between", " ", "speed", " ", "and", " ", "how", " ", 
      "carefully", " ", "Wulffmaker", " ", "looks", " ", "for", " ", 
      "vertices", " ", "on", " ", "the", " ", 
      RowBox[{"shape", ".", " ", "increase"}], " ", "if", " ", "there", " ", 
      "are", " ", "holes", " ", "in", " ", "your", " ", "shape"}]}], " ", 
    "*)"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"defGgb", " ", "=", " ", "1."}], ";"}], " ", 
   RowBox[{"(*", " ", 
    RowBox[{"AB", " ", "interface", " ", "surface", " ", "energy"}], " ", 
    "*)"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"defGh", " ", "=", " ", "0"}], ";"}], " ", 
   RowBox[{"(*", " ", 
    RowBox[{"AB", " ", "interface", " ", "normal", " ", "\"\<h\>\""}], " ", 
    "*)"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"defGk", " ", "=", " ", "0"}], ";"}], " ", 
   RowBox[{"(*", " ", 
    RowBox[{"AB", " ", "interface", " ", "normal", " ", "\"\<k\>\""}], " ", 
    "*)"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"defGl", " ", "=", " ", "1"}], ";"}], " ", 
   RowBox[{"(*", " ", 
    RowBox[{"AB", " ", "interface", " ", "normal", " ", "\"\<l\>\""}], " ", 
    "*)"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"defView", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{"1", ",", " ", "5", ",", " ", "1"}], "}"}]}], ";"}], " ", 
   RowBox[{"(*", " ", 
    RowBox[{"viewing", " ", 
     RowBox[{"axis", ":", " ", 
      RowBox[{
      "look", " ", "down", " ", "this", " ", "direction", " ", "at", " ", 
       "the", " ", "figure"}]}]}], " ", "*)"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"defVert", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}]}], ";"}], " ", 
   RowBox[{"(*", " ", 
    RowBox[{"vertical", " ", 
     RowBox[{"direction", ":", " ", 
      RowBox[{
      "points", " ", "up", " ", "on", " ", "your", " ", "screen"}]}]}], " ", 
    "*)"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"defOpacity", " ", "=", " ", "1"}], ";"}], " ", 
   RowBox[{"(*", " ", 
    RowBox[{"opacity", " ", "of", " ", "shape"}], " ", "*)"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"defPerim", " ", "=", " ", "0.02"}], ";"}], " ", 
   RowBox[{"(*", " ", 
    RowBox[{"thickness", " ", "of", " ", "the", " ", "triple", " ", "line"}], 
    " ", "*)"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"defGBsize", " ", "=", " ", "0"}], ";"}], " ", 
   RowBox[{"(*", " ", 
    RowBox[{
    "how", " ", "much", " ", "of", " ", "the", " ", "AB", " ", "interface", 
     " ", "to", " ", 
     RowBox[{"show", ".", " ", 
      RowBox[{"Range", ":", " ", 
       RowBox[{"0", "-", "8"}]}]}]}], " ", "*)"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"defAxes", " ", "=", " ", "1.2"}], ";"}], " ", 
   RowBox[{"(*", " ", 
    RowBox[{
    "how", " ", "long", " ", "the", " ", "crystallographic", " ", "axes", " ",
      "are"}], " ", "*)"}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"defSym1", " ", "=", " ", "\"\<Cubic\>\""}], ";"}], " ", 
   RowBox[{"(*", " ", 
    RowBox[{"axis", " ", "system", " ", "for", " ", 
     SubscriptBox["W", "A"]}], " ", "*)"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"defSym2", " ", "=", " ", "\"\<Cubic\>\""}], ";"}], " ", 
   RowBox[{"(*", " ", 
    RowBox[{"axis", " ", "system", " ", "for", " ", 
     SubscriptBox["W", "B"]}], " ", "*)"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
    "defPG1", " ", "=", " ", 
     "\"\<m\!\(\*OverscriptBox[\(3\), \(_\)]\)m\>\""}], ";"}], " ", 
   RowBox[{"(*", " ", 
    RowBox[{"point", " ", "group", " ", "for", " ", 
     SubscriptBox["W", "A"]}], " ", "*)"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
    "defPG2", " ", "=", " ", 
     "\"\<m\!\(\*OverscriptBox[\(3\), \(_\)]\)m\>\""}], ";"}], " ", 
   RowBox[{"(*", " ", 
    RowBox[{"point", " ", "group", " ", "for", " ", 
     SubscriptBox["W", "B"]}], " ", "*)"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"defn1", " ", "=", " ", "3"}], ";"}], " ", 
   RowBox[{"(*", " ", 
    RowBox[{
    "number", " ", "for", " ", "facet", " ", "families", " ", "on", " ", 
     SubscriptBox["W", "A"]}], " ", "*)"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"defn2", " ", "=", " ", "2"}], ";"}], " ", 
   RowBox[{"(*", " ", 
    RowBox[{
    "number", " ", "for", " ", "facet", " ", "families", " ", "on", " ", 
     SubscriptBox["W", "B"]}], " ", "*)"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"defEuA1", " ", "=", " ", "0"}], ";"}], " ", 
   RowBox[{"(*", " ", 
    RowBox[{
     RowBox[{
      RowBox[{"Euler", " ", "angle", " ", "1"}], " ", "=", " ", 
      SubscriptBox["\[Phi]", "1"]}], ",", " ", 
     RowBox[{"in", " ", "degrees"}], ",", " ", 
     RowBox[{"of", " ", 
      RowBox[{
       SubscriptBox["W", "A"], ".", " ", "The"}], " ", "Euler", " ", "angle", 
      " ", "takes", " ", "the", " ", "refrence", " ", 
      RowBox[{"(", 
       RowBox[{
       "\"\<sample\>\"", " ", "or", " ", "\"\<laboratory\>\"", " ", "frame"}],
        ")"}], " ", "and", " ", "rotates", " ", "it", " ", "into", " ", "the",
       " ", "crystallographic", " ", "frame"}]}], " ", "*)"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"defEuA2", " ", "=", " ", "0"}], ";"}], " ", 
   RowBox[{"(*", " ", 
    RowBox[{
     RowBox[{
      RowBox[{"Euler", " ", "angle", " ", "2"}], " ", "=", " ", 
      "\[CapitalPhi]"}], ",", " ", 
     RowBox[{"in", " ", "degrees"}], ",", " ", 
     RowBox[{"of", " ", 
      SubscriptBox["W", "A"]}]}], " ", "*)"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"defEuA3", " ", "=", " ", "0"}], ";"}], " ", 
   RowBox[{"(*", " ", 
    RowBox[{
     RowBox[{
      RowBox[{"Euler", " ", "angle", " ", "3"}], " ", "=", " ", 
      SubscriptBox["\[Phi]", "2"]}], ",", " ", 
     RowBox[{"in", " ", "degrees"}], ",", " ", 
     RowBox[{"of", " ", 
      SubscriptBox["W", "A"]}]}], " ", "*)"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"defEuB1", " ", "=", " ", "45"}], ";"}], " ", 
   RowBox[{"(*", " ", 
    RowBox[{
     RowBox[{
      RowBox[{"Euler", " ", "angle", " ", "1"}], " ", "=", " ", 
      SubscriptBox["\[Phi]", "1"]}], ",", " ", 
     RowBox[{"in", " ", "degrees"}], ",", " ", 
     RowBox[{"of", " ", 
      SubscriptBox["W", "B"]}]}], " ", "*)"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"defEuB2", " ", "=", " ", "0"}], ";"}], " ", 
   RowBox[{"(*", " ", 
    RowBox[{
     RowBox[{
      RowBox[{"Euler", " ", "angle", " ", "2"}], " ", "=", " ", 
      "\[CapitalPhi]"}], ",", " ", 
     RowBox[{"in", " ", "degrees"}], ",", " ", 
     RowBox[{"of", " ", 
      SubscriptBox["W", "B"]}]}], " ", "*)"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"defEuB3", " ", "=", " ", "0"}], ";"}], " ", 
   RowBox[{"(*", " ", 
    RowBox[{
     RowBox[{
      RowBox[{"Euler", " ", "angle", " ", "3"}], " ", "=", " ", 
      SubscriptBox["\[Phi]", "2"]}], ",", " ", 
     RowBox[{"in", " ", "degrees"}], ",", " ", 
     RowBox[{"of", " ", 
      SubscriptBox["W", "B"]}]}], " ", "*)"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"defEuConv", " ", "=", " ", "0"}], ";"}], " ", 
   RowBox[{"(*", " ", 
    RowBox[{
     RowBox[{"Euler", " ", "angle", " ", "convention"}], ",", " ", 
     RowBox[{
      RowBox[{"in", " ", 
       RowBox[{"degrees", ".", " ", "Usually"}], " ", "valued", " ", "0", " ",
        "or", " ", "30.", " ", "If", " ", "the", " ", "crystallographic", " ",
        "a"}], "-", 
      RowBox[{
      "axis", " ", "is", " ", "initially", " ", "parallel", " ", "to", " ", 
       "the", " ", "x"}], "-", "direction"}], ",", " ", 
     RowBox[{
      RowBox[{
      "set", " ", "this", " ", "to", " ", "0.", " ", "If", " ", "the", " ", 
       "crystallographic", " ", "b"}], "-", 
      RowBox[{
      "axis", " ", "is", " ", "initially", " ", "parallel", " ", "to", " ", 
       "the", " ", "y"}], "-", "direction"}], ",", " ", 
     RowBox[{
      RowBox[{"set", " ", "this", " ", "equal", " ", "to", " ", "\[Gamma]"}], 
      "-", 
      RowBox[{"90", "\[Degree]"}]}], ",", " ", 
     RowBox[{
      RowBox[{"where", " ", "\[Gamma]"}], " ", "=", " ", 
      RowBox[{
       RowBox[{"the", " ", "angle", " ", "between", " ", "the", " ", "a"}], 
       "-", 
       RowBox[{"axis", " ", "and", " ", "b"}], "-", 
       RowBox[{
        RowBox[{"axis", ".", " ", "In"}], " ", "the", " ", "case", " ", "of", 
        " ", "a", " ", "hexagonal", " ", "crystal"}]}]}], ",", " ", 
     RowBox[{"this", " ", "is", " ", "30."}]}], " ", "*)"}], 
   "\[IndentingNewLine]", "\[IndentingNewLine]"}]}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.608539518726602*^9, 3.608539520014143*^9}, {
  3.610684789760413*^9, 3.610684840228541*^9}, {3.6106851746744556`*^9, 
  3.610685357665621*^9}, {3.610692344510251*^9, 3.610692495381371*^9}, {
  3.6106925337237587`*^9, 3.610692564976232*^9}, {3.610694706701708*^9, 
  3.610694711824931*^9}, {3.6106977971277857`*^9, 3.6106978139257193`*^9}, {
  3.610697918831476*^9, 3.610697920807343*^9}, {3.6106980861037397`*^9, 
  3.610698108170497*^9}, {3.610698802586141*^9, 3.610698803349786*^9}}]
}, Closed]],

Cell[CellGroupData[{

Cell["Source Code", "Section",
 CellChangeTimes->{{3.608539555782185*^9, 3.608539557397921*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
   "these", " ", "functions", " ", "expedite", " ", "the", " ", "wulff", " ", 
    "shape", " ", 
    RowBox[{"calculation", "."}]}], " ", "*)"}], "\[IndentingNewLine]", 
  "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{"euler", "[", 
     RowBox[{"a_", ",", " ", "b_", ",", " ", "c_", ",", " ", "conv_"}], "]"}],
     " ", ":=", " ", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
       "rot1", ",", " ", "newx", ",", " ", "rot2", ",", " ", "newz", ",", " ",
         "rot3"}], "}"}], ",", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"rot1", " ", "=", " ", 
        RowBox[{"N", "@", 
         RowBox[{"RotationMatrix", "[", " ", 
          RowBox[{
           RowBox[{
            RowBox[{"(", 
             RowBox[{"a", " ", "+", " ", "conv"}], ")"}], " ", "Degree"}], 
           ",", " ", 
           RowBox[{"{", 
            RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}]}], "]"}]}]}], 
       ";", "\[IndentingNewLine]", 
       RowBox[{"newx", " ", "=", " ", 
        RowBox[{"rot1", ".", 
         RowBox[{"{", 
          RowBox[{"1", ",", " ", "0", ",", " ", "0"}], "}"}]}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"rot2", " ", "=", " ", 
        RowBox[{"RotationMatrix", "[", 
         RowBox[{
          RowBox[{"b", " ", "Degree"}], ",", " ", "newx"}], "]"}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"newz", " ", "=", " ", 
        RowBox[{"rot2", ".", 
         RowBox[{"{", 
          RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}]}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"rot3", " ", "=", " ", 
        RowBox[{"RotationMatrix", "[", 
         RowBox[{
          RowBox[{"c", " ", "Degree"}], ",", " ", "newz"}], "]"}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"rot3", ".", 
        RowBox[{"(", 
         RowBox[{"rot2", ".", "rot1"}], ")"}]}]}]}], "\[IndentingNewLine]", 
     "]"}]}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{"outsideWulffCompiled", " ", "=", " ", "\[IndentingNewLine]", 
    RowBox[{"Compile", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"baseV", ",", "_Real", ",", "1"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"testV", ",", "_Real", ",", "1"}], "}"}]}], "}"}], ",", 
      "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{
        RowBox[{
         RowBox[{"baseV", "[", 
          RowBox[{"[", "1", "]"}], "]"}], " ", 
         RowBox[{"testV", "[", 
          RowBox[{"[", "1", "]"}], "]"}]}], " ", "+", " ", 
        RowBox[{
         RowBox[{"baseV", "[", 
          RowBox[{"[", "2", "]"}], "]"}], " ", 
         RowBox[{"testV", "[", 
          RowBox[{"[", "2", "]"}], "]"}]}], " ", "+", "  ", 
        RowBox[{
         RowBox[{"baseV", "[", 
          RowBox[{"[", "3", "]"}], "]"}], " ", 
         RowBox[{"testV", "[", 
          RowBox[{"[", "3", "]"}], "]"}]}]}], "  ", ">", " ", 
       "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{"1", " ", "+", " ", 
          SuperscriptBox["10", 
           RowBox[{"-", "9."}]]}], ")"}], " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{
           RowBox[{"baseV", "[", 
            RowBox[{"[", "1", "]"}], "]"}], "^", "2"}], " ", "+", " ", 
          RowBox[{
           RowBox[{"baseV", "[", 
            RowBox[{"[", "2", "]"}], "]"}], "^", "2"}], " ", "+", 
          RowBox[{
           RowBox[{"baseV", "[", 
            RowBox[{"[", "3", "]"}], "]"}], "^", "2"}]}], ")"}]}]}]}], " ", 
     "]"}]}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"neighborQ", "[", 
      RowBox[{"index_", ",", " ", "glist_"}], "]"}], " ", ":=", " ", 
     RowBox[{"Module", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
        "dots", ",", " ", "sorted", ",", " ", "neighbors", ",", " ", "fin"}], 
        "}"}], ",", " ", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"dots", " ", "=", " ", 
         RowBox[{"Table", "[", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{
             RowBox[{
              RowBox[{"glist", "[", 
               RowBox[{"[", 
                RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], ".", 
              RowBox[{"Normalize", "[", 
               RowBox[{"glist", "[", 
                RowBox[{"[", 
                 RowBox[{"index", ",", " ", "1"}], "]"}], "]"}], "]"}]}], ",",
              " ", 
             RowBox[{"glist", "[", 
              RowBox[{"[", 
               RowBox[{"i", ",", " ", "3"}], "]"}], "]"}]}], "}"}], ",", " ", 
           
           RowBox[{"{", 
            RowBox[{"i", ",", " ", 
             RowBox[{"Length", "[", "glist", "]"}]}], "}"}]}], "]"}]}], ";", 
        "\[IndentingNewLine]", 
        RowBox[{"sorted", " ", "=", " ", 
         RowBox[{"Sort", "[", 
          RowBox[{"dots", ",", " ", 
           RowBox[{
            RowBox[{
             RowBox[{"#1", "[", 
              RowBox[{"[", "1", "]"}], "]"}], " ", ">", " ", 
             RowBox[{"#2", "[", 
              RowBox[{"[", "1", "]"}], "]"}]}], " ", "&"}]}], "]"}]}], ";", 
        "\[IndentingNewLine]", 
        RowBox[{"neighbors", " ", "=", " ", 
         RowBox[{"Table", "[", 
          RowBox[{
           RowBox[{"sorted", "[", 
            RowBox[{"[", 
             RowBox[{"i", ",", " ", "2"}], "]"}], "]"}], ",", " ", 
           RowBox[{"{", 
            RowBox[{"i", ",", " ", 
             RowBox[{"Min", "[", 
              RowBox[{
               RowBox[{"Max", "[", 
                RowBox[{
                 RowBox[{"Ceiling", "[", 
                  RowBox[{
                   RowBox[{"Length", "[", "glist", "]"}], "/", "6"}], "]"}], 
                 ",", " ", "11"}], "]"}], ",", " ", 
               RowBox[{"Length", "[", "glist", "]"}]}], "]"}]}], "}"}]}], 
          "]"}]}], ";", "\[IndentingNewLine]", 
        RowBox[{"fin", " ", "=", " ", 
         RowBox[{"Select", "[", 
          RowBox[{"neighbors", ",", " ", 
           RowBox[{
            RowBox[{"!", 
             RowBox[{"SameQ", "[", 
              RowBox[{"#", ",", " ", "index"}], "]"}]}], " ", "&"}]}], 
          "]"}]}]}]}], "\[IndentingNewLine]", "]"}]}], ";"}], 
   "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"neighborQdouble", "[", 
      RowBox[{
      "index_", ",", " ", "glist_", ",", " ", "switch_", ",", " ", 
       "cutoff_"}], "]"}], " ", ":=", " ", 
     RowBox[{"Module", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
        "gtop", ",", " ", "gbot", ",", " ", "dotstop", ",", " ", "dotsbot", 
         ",", " ", "sortedtop", ",", " ", "sortedbot", ",", " ", 
         "neighborstop", ",", " ", "neighborsbot", ",", " ", "fin"}], "}"}], 
       ",", " ", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"gtop", " ", "=", " ", 
         RowBox[{"Table", "[", 
          RowBox[{
           RowBox[{"glist", "[", 
            RowBox[{"[", "i", "]"}], "]"}], ",", " ", 
           RowBox[{"{", 
            RowBox[{"i", ",", " ", "switch"}], "}"}]}], "]"}]}], ";", 
        "\[IndentingNewLine]", 
        RowBox[{"gbot", " ", "=", " ", 
         RowBox[{"Table", "[", 
          RowBox[{
           RowBox[{"glist", "[", 
            RowBox[{"[", "i", "]"}], "]"}], ",", " ", 
           RowBox[{"{", 
            RowBox[{"i", ",", " ", 
             RowBox[{"switch", "+", "1"}], ",", " ", 
             RowBox[{"Length", "[", "glist", "]"}]}], "}"}]}], "]"}]}], ";", 
        "\[IndentingNewLine]", 
        RowBox[{"dotstop", " ", "=", " ", 
         RowBox[{"Table", "[", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{
             RowBox[{
              RowBox[{"Normalize", "[", 
               RowBox[{"gtop", "[", 
                RowBox[{"[", 
                 RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], "]"}], ".", 
              RowBox[{"Normalize", "[", 
               RowBox[{"glist", "[", 
                RowBox[{"[", 
                 RowBox[{"index", ",", " ", "1"}], "]"}], "]"}], "]"}]}], ",",
              " ", 
             RowBox[{"gtop", "[", 
              RowBox[{"[", 
               RowBox[{"i", ",", " ", "3"}], "]"}], "]"}]}], "}"}], ",", " ", 
           
           RowBox[{"{", 
            RowBox[{"i", ",", " ", 
             RowBox[{"Length", "[", "gtop", "]"}]}], "}"}]}], "]"}]}], ";", 
        "\[IndentingNewLine]", 
        RowBox[{"dotsbot", " ", "=", " ", 
         RowBox[{"Table", "[", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{
             RowBox[{
              RowBox[{"Normalize", "[", 
               RowBox[{"gbot", "[", 
                RowBox[{"[", 
                 RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], "]"}], ".", 
              RowBox[{"Normalize", "[", 
               RowBox[{"glist", "[", 
                RowBox[{"[", 
                 RowBox[{"index", ",", " ", "1"}], "]"}], "]"}], "]"}]}], ",",
              " ", 
             RowBox[{"gbot", "[", 
              RowBox[{"[", 
               RowBox[{"i", ",", " ", "3"}], "]"}], "]"}]}], "}"}], ",", " ", 
           
           RowBox[{"{", 
            RowBox[{"i", ",", 
             RowBox[{"Length", "[", "gbot", "]"}]}], "}"}]}], "]"}]}], ";", 
        "\[IndentingNewLine]", 
        RowBox[{"sortedtop", " ", "=", " ", 
         RowBox[{"Sort", "[", 
          RowBox[{"dotstop", ",", " ", 
           RowBox[{
            RowBox[{
             RowBox[{"#1", "[", 
              RowBox[{"[", "1", "]"}], "]"}], " ", ">", " ", 
             RowBox[{"#2", "[", 
              RowBox[{"[", "1", "]"}], "]"}]}], " ", "&"}]}], "]"}]}], ";", 
        "\[IndentingNewLine]", 
        RowBox[{"sortedbot", " ", "=", " ", 
         RowBox[{"Sort", "[", 
          RowBox[{"dotsbot", ",", " ", 
           RowBox[{
            RowBox[{
             RowBox[{"#1", "[", 
              RowBox[{"[", "1", "]"}], "]"}], " ", ">", " ", 
             RowBox[{"#2", "[", 
              RowBox[{"[", "1", "]"}], "]"}]}], " ", "&"}]}], "]"}]}], ";", 
        "\[IndentingNewLine]", 
        RowBox[{"neighborstop", " ", "=", " ", 
         RowBox[{"Table", "[", 
          RowBox[{
           RowBox[{"sortedtop", "[", 
            RowBox[{"[", 
             RowBox[{"i", ",", " ", "2"}], "]"}], "]"}], ",", " ", 
           RowBox[{"{", 
            RowBox[{"i", ",", " ", 
             RowBox[{"Min", "[", 
              RowBox[{"cutoff", ",", " ", 
               RowBox[{"Length", "[", "gtop", "]"}]}], "]"}]}], "}"}]}], 
          "]"}]}], ";", "\[IndentingNewLine]", 
        RowBox[{"neighborsbot", " ", "=", " ", 
         RowBox[{"Table", "[", 
          RowBox[{
           RowBox[{"sortedbot", "[", 
            RowBox[{"[", 
             RowBox[{"i", ",", " ", "2"}], "]"}], "]"}], ",", " ", 
           RowBox[{"{", 
            RowBox[{"i", ",", " ", 
             RowBox[{"Min", "[", 
              RowBox[{"cutoff", ",", " ", 
               RowBox[{"Length", "[", "gbot", "]"}]}], "]"}]}], "}"}]}], 
          "]"}]}], ";", "\[IndentingNewLine]", 
        RowBox[{"fin", " ", "=", " ", 
         RowBox[{"Join", "[", 
          RowBox[{
           RowBox[{"Select", "[", 
            RowBox[{"neighborstop", ",", " ", 
             RowBox[{
              RowBox[{"!", 
               RowBox[{"SameQ", "[", 
                RowBox[{"#", ",", " ", "index"}], "]"}]}], " ", "&"}]}], 
            "]"}], ",", " ", 
           RowBox[{"Select", "[", 
            RowBox[{"neighborsbot", ",", " ", 
             RowBox[{
              RowBox[{"!", 
               RowBox[{"SameQ", "[", 
                RowBox[{"#", ",", " ", "index"}], "]"}]}], " ", "&"}]}], 
            "]"}]}], "]"}]}]}]}], "\[IndentingNewLine]", "]"}]}], ";"}], 
   "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{"findvert", "=", "\[IndentingNewLine]", 
    RowBox[{"Compile", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"a", ",", "_Real", ",", "1"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"b", ",", "_Real", ",", "1"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"c", ",", "_Real", ",", "1"}], "}"}]}], "}"}], ",", 
      "\[IndentingNewLine]", 
      RowBox[{"Block", "[", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"denom", "=", 
          RowBox[{
           RowBox[{
            RowBox[{
            "a", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], " ", 
            
            RowBox[{
            "b", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], " ", 
            
            RowBox[{
            "c", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}]}], 
           "-", 
           RowBox[{
            RowBox[{
            "a", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], " ", 
            
            RowBox[{
            "b", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], " ", 
            
            RowBox[{
            "c", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}]}], 
           "-", 
           RowBox[{
            RowBox[{
            "a", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], " ", 
            
            RowBox[{
            "b", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], " ", 
            
            RowBox[{
            "c", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}]}], 
           "+", 
           RowBox[{
            RowBox[{
            "a", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], " ", 
            
            RowBox[{
            "b", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], " ", 
            
            RowBox[{
            "c", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}]}], 
           "+", 
           RowBox[{
            RowBox[{
            "a", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], " ", 
            
            RowBox[{
            "b", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], " ", 
            
            RowBox[{
            "c", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}]}], 
           "-", 
           RowBox[{
            RowBox[{
            "a", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], " ", 
            
            RowBox[{
            "b", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], " ", 
            
            RowBox[{
            "c", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}]}]}]}],
          "}"}], ",", "\[IndentingNewLine]", 
        RowBox[{"If", "[", 
         RowBox[{
          RowBox[{
           RowBox[{"Abs", "[", "denom", "]"}], " ", "\[LessEqual]", " ", 
           "0.00001"}], ",", 
          RowBox[{"{", 
           RowBox[{"10000.", ",", "10000.", ",", "10000."}], "}"}], ",", 
          "\[IndentingNewLine]", 
          RowBox[{"{", "\[IndentingNewLine]", 
           RowBox[{
            RowBox[{
             RowBox[{"(", 
              RowBox[{
               RowBox[{
                RowBox[{
                "a", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                " ", 
                RowBox[{
                "b", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                " ", 
                SuperscriptBox[
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                 "2"]}], "-", 
               RowBox[{
                RowBox[{
                "a", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                " ", 
                RowBox[{
                "b", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                " ", 
                SuperscriptBox[
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                 "2"]}], "-", 
               RowBox[{
                RowBox[{
                "a", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                " ", 
                SuperscriptBox[
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                 "2"], " ", 
                RowBox[{
                "c", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}]}],
                "-", 
               RowBox[{
                RowBox[{
                "a", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                " ", 
                SuperscriptBox[
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                 "2"], " ", 
                RowBox[{
                "c", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}]}],
                "+", 
               RowBox[{
                SuperscriptBox[
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                 "2"], " ", 
                RowBox[{
                "b", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                " ", 
                RowBox[{
                "c", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}]}],
                "+", 
               RowBox[{
                SuperscriptBox[
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                 "2"], " ", 
                RowBox[{
                "b", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                " ", 
                RowBox[{
                "c", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}]}],
                "+", 
               RowBox[{
                SuperscriptBox[
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                 "2"], " ", 
                RowBox[{
                "b", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                " ", 
                RowBox[{
                "c", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}]}],
                "-", 
               RowBox[{
                RowBox[{
                "a", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                " ", 
                SuperscriptBox[
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                 "2"], " ", 
                RowBox[{
                "c", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}]}],
                "+", 
               RowBox[{
                RowBox[{
                "a", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                " ", 
                RowBox[{
                "b", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                " ", 
                SuperscriptBox[
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                 "2"]}], "-", 
               RowBox[{
                RowBox[{
                "a", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                " ", 
                RowBox[{
                "b", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                " ", 
                SuperscriptBox[
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                 "2"]}], "+", 
               RowBox[{
                RowBox[{
                "a", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                " ", 
                SuperscriptBox[
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                 "2"], " ", 
                RowBox[{
                "c", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}]}],
                "-", 
               RowBox[{
                SuperscriptBox[
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                 "2"], " ", 
                RowBox[{
                "b", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                " ", 
                RowBox[{
                "c", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}]}],
                "-", 
               RowBox[{
                SuperscriptBox[
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                 "2"], " ", 
                RowBox[{
                "b", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                " ", 
                RowBox[{
                "c", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}]}],
                "-", 
               RowBox[{
                SuperscriptBox[
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                 "2"], " ", 
                RowBox[{
                "b", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                " ", 
                RowBox[{
                "c", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}]}],
                "+", 
               RowBox[{
                RowBox[{
                "a", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                " ", 
                SuperscriptBox[
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                 "2"], " ", 
                RowBox[{
                "c", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}]}],
                "+", 
               RowBox[{
                RowBox[{
                "a", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                " ", 
                SuperscriptBox[
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                 "2"], " ", 
                RowBox[{
                "c", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}]}],
                "+", 
               RowBox[{
                RowBox[{
                "a", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                " ", 
                RowBox[{
                "b", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                " ", 
                SuperscriptBox[
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                 "2"]}], "-", 
               RowBox[{
                RowBox[{
                "a", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                " ", 
                RowBox[{
                "b", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                " ", 
                SuperscriptBox[
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                 "2"]}]}], ")"}], "/", "denom"}], ",", "\[IndentingNewLine]", 
            
            RowBox[{
             RowBox[{"(", 
              RowBox[{
               RowBox[{
                RowBox[{
                "a", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                " ", 
                SuperscriptBox[
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                 "2"], " ", 
                RowBox[{
                "c", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}]}],
                "+", 
               RowBox[{
                RowBox[{
                "a", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                " ", 
                SuperscriptBox[
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                 "2"], " ", 
                RowBox[{
                "c", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}]}],
                "-", 
               RowBox[{
                SuperscriptBox[
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                 "2"], " ", 
                RowBox[{
                "b", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                " ", 
                RowBox[{
                "c", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}]}],
                "-", 
               RowBox[{
                SuperscriptBox[
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                 "2"], " ", 
                RowBox[{
                "b", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                " ", 
                RowBox[{
                "c", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}]}],
                "-", 
               RowBox[{
                SuperscriptBox[
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                 "2"], " ", 
                RowBox[{
                "b", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                " ", 
                RowBox[{
                "c", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}]}],
                "+", 
               RowBox[{
                RowBox[{
                "a", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                " ", 
                SuperscriptBox[
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                 "2"], " ", 
                RowBox[{
                "c", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}]}],
                "-", 
               RowBox[{
                RowBox[{
                "a", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                " ", 
                RowBox[{
                "b", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                " ", 
                SuperscriptBox[
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                 "2"]}], "+", 
               RowBox[{
                RowBox[{
                "a", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                " ", 
                RowBox[{
                "b", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                " ", 
                SuperscriptBox[
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                 "2"]}], "-", 
               RowBox[{
                RowBox[{
                "a", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                " ", 
                RowBox[{
                "b", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                " ", 
                SuperscriptBox[
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                 "2"]}], "+", 
               RowBox[{
                RowBox[{
                "a", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                " ", 
                RowBox[{
                "b", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                " ", 
                SuperscriptBox[
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                 "2"]}], "+", 
               RowBox[{
                SuperscriptBox[
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                 "2"], " ", 
                RowBox[{
                "b", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                " ", 
                RowBox[{
                "c", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}]}],
                "+", 
               RowBox[{
                SuperscriptBox[
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                 "2"], " ", 
                RowBox[{
                "b", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                " ", 
                RowBox[{
                "c", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}]}],
                "+", 
               RowBox[{
                SuperscriptBox[
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                 "2"], " ", 
                RowBox[{
                "b", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                " ", 
                RowBox[{
                "c", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}]}],
                "-", 
               RowBox[{
                RowBox[{
                "a", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                " ", 
                SuperscriptBox[
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                 "2"], " ", 
                RowBox[{
                "c", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}]}],
                "-", 
               RowBox[{
                RowBox[{
                "a", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                " ", 
                SuperscriptBox[
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                 "2"], " ", 
                RowBox[{
                "c", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}]}],
                "-", 
               RowBox[{
                RowBox[{
                "a", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                " ", 
                SuperscriptBox[
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                 "2"], " ", 
                RowBox[{
                "c", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}]}],
                "-", 
               RowBox[{
                RowBox[{
                "a", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                " ", 
                RowBox[{
                "b", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                " ", 
                SuperscriptBox[
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                 "2"]}], "+", 
               RowBox[{
                RowBox[{
                "a", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                " ", 
                RowBox[{
                "b", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                " ", 
                SuperscriptBox[
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                 "2"]}]}], ")"}], "/", "denom"}], ",", "\[IndentingNewLine]", 
            
            RowBox[{
             RowBox[{"(", 
              RowBox[{
               RowBox[{
                RowBox[{"-", 
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "2", 
                  "\[RightDoubleBracket]"}]}], " ", 
                SuperscriptBox[
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                 "2"], " ", 
                RowBox[{
                "c", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}]}],
                "+", 
               RowBox[{
                SuperscriptBox[
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                 "2"], " ", 
                RowBox[{
                "b", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                " ", 
                RowBox[{
                "c", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}]}],
                "+", 
               RowBox[{
                SuperscriptBox[
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                 "2"], " ", 
                RowBox[{
                "b", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                " ", 
                RowBox[{
                "c", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}]}],
                "+", 
               RowBox[{
                SuperscriptBox[
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                 "2"], " ", 
                RowBox[{
                "b", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                " ", 
                RowBox[{
                "c", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}]}],
                "-", 
               RowBox[{
                RowBox[{
                "a", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                " ", 
                SuperscriptBox[
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                 "2"], " ", 
                RowBox[{
                "c", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}]}],
                "-", 
               RowBox[{
                RowBox[{
                "a", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                " ", 
                SuperscriptBox[
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                 "2"], " ", 
                RowBox[{
                "c", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}]}],
                "+", 
               RowBox[{
                RowBox[{
                "a", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                " ", 
                RowBox[{
                "b", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                " ", 
                SuperscriptBox[
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                 "2"]}], "-", 
               RowBox[{
                RowBox[{
                "a", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                " ", 
                RowBox[{
                "b", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                " ", 
                SuperscriptBox[
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                 "2"]}], "-", 
               RowBox[{
                SuperscriptBox[
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                 "2"], " ", 
                RowBox[{
                "b", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                " ", 
                RowBox[{
                "c", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}]}],
                "-", 
               RowBox[{
                SuperscriptBox[
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                 "2"], " ", 
                RowBox[{
                "b", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                " ", 
                RowBox[{
                "c", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}]}],
                "-", 
               RowBox[{
                SuperscriptBox[
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                 "2"], " ", 
                RowBox[{
                "b", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                " ", 
                RowBox[{
                "c", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}]}],
                "+", 
               RowBox[{
                RowBox[{
                "a", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                " ", 
                SuperscriptBox[
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                 "2"], " ", 
                RowBox[{
                "c", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}]}],
                "+", 
               RowBox[{
                RowBox[{
                "a", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                " ", 
                SuperscriptBox[
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                 "2"], " ", 
                RowBox[{
                "c", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}]}],
                "+", 
               RowBox[{
                RowBox[{
                "a", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                " ", 
                SuperscriptBox[
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                 "2"], " ", 
                RowBox[{
                "c", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}]}],
                "+", 
               RowBox[{
                RowBox[{
                "a", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                " ", 
                RowBox[{
                "b", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                " ", 
                SuperscriptBox[
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                 "2"]}], "-", 
               RowBox[{
                RowBox[{
                "a", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                " ", 
                RowBox[{
                "b", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                " ", 
                SuperscriptBox[
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                 "2"]}], "+", 
               RowBox[{
                RowBox[{
                "a", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                " ", 
                RowBox[{
                "b", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                " ", 
                SuperscriptBox[
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                 "2"]}], "-", 
               RowBox[{
                RowBox[{
                "a", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                " ", 
                RowBox[{
                "b", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                " ", 
                SuperscriptBox[
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                 "2"]}]}], ")"}], "/", "denom"}]}], "\[IndentingNewLine]", 
           "}"}]}], "\[IndentingNewLine]", "]"}]}], "\[IndentingNewLine]", 
       "]"}]}], "\[IndentingNewLine]", "]"}]}], "\[IndentingNewLine]", 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"makeAWulff", "[", 
      RowBox[{"newGs_", ",", " ", "colz_"}], "]"}], " ", ":=", " ", 
     RowBox[{"Module", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
        "neighbors", ",", " ", "verts", ",", " ", "verts2", ",", " ", 
         "vertTest", ",", " ", "rotMats", ",", " ", "rotatedVerts", ",", " ", 
         "sortedVerts", ",", " ", "finVerts", ",", " ", "facets", ",", " ", 
         "vertParents"}], "}"}], ",", "\[IndentingNewLine]", 
       "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"neighbors", " ", "=", " ", 
         RowBox[{"Table", "[", 
          RowBox[{
           RowBox[{"neighborQ", "[", 
            RowBox[{"i", ",", " ", "newGs"}], "]"}], ",", " ", 
           RowBox[{"{", 
            RowBox[{"i", ",", " ", 
             RowBox[{"Length", "[", "newGs", "]"}]}], "}"}]}], "]"}]}], ";", 
        "\[IndentingNewLine]", 
        RowBox[{"verts", " ", "=", " ", 
         RowBox[{"Table", "[", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{
             RowBox[{"findvert", "[", 
              RowBox[{
               RowBox[{"newGs", "[", 
                RowBox[{"[", 
                 RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], ",", " ", 
               RowBox[{"newGs", "[", 
                RowBox[{"[", 
                 RowBox[{
                  RowBox[{"neighbors", "[", 
                   RowBox[{"[", 
                    RowBox[{"i", ",", " ", "j"}], "]"}], "]"}], ",", " ", 
                  "1"}], "]"}], "]"}], ",", " ", 
               RowBox[{"newGs", "[", 
                RowBox[{"[", 
                 RowBox[{
                  RowBox[{"neighbors", "[", 
                   RowBox[{"[", 
                    RowBox[{"i", ",", " ", "k"}], "]"}], "]"}], ",", " ", 
                  "1"}], "]"}], "]"}]}], "]"}], ",", " ", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"newGs", "[", 
                RowBox[{"[", 
                 RowBox[{"i", ",", " ", "3"}], "]"}], "]"}], ",", " ", 
               RowBox[{"neighbors", "[", 
                RowBox[{"[", 
                 RowBox[{"i", ",", " ", "j"}], "]"}], "]"}], ",", " ", 
               RowBox[{"neighbors", "[", 
                RowBox[{"[", 
                 RowBox[{"i", ",", " ", "k"}], "]"}], "]"}]}], "}"}]}], "}"}],
            ",", " ", 
           RowBox[{"{", 
            RowBox[{"i", ",", " ", 
             RowBox[{"Length", "[", "newGs", "]"}]}], "}"}], ",", " ", 
           RowBox[{"{", 
            RowBox[{"j", ",", " ", 
             RowBox[{
              RowBox[{"Length", "[", 
               RowBox[{"neighbors", "[", 
                RowBox[{"[", "i", "]"}], "]"}], "]"}], "-", "1"}]}], "}"}], 
           ",", " ", 
           RowBox[{"{", 
            RowBox[{"k", ",", " ", 
             RowBox[{"j", "+", "1"}], ",", " ", 
             RowBox[{"Length", "[", 
              RowBox[{"neighbors", "[", 
               RowBox[{"[", "i", "]"}], "]"}], "]"}]}], "}"}]}], "]"}]}], ";",
         "\[IndentingNewLine]", 
        RowBox[{"verts2", " ", "=", " ", 
         RowBox[{"Table", "[", 
          RowBox[{
           RowBox[{"Select", "[", 
            RowBox[{
             RowBox[{"Flatten", "[", 
              RowBox[{
               RowBox[{"verts", "[", 
                RowBox[{"[", "i", "]"}], "]"}], ",", " ", "1"}], "]"}], ",", 
             " ", 
             RowBox[{
              RowBox[{"VectorQ", "[", 
               RowBox[{"#", "[", 
                RowBox[{"[", "1", "]"}], "]"}], "]"}], " ", "&"}]}], "]"}], 
           ",", " ", 
           RowBox[{"{", 
            RowBox[{"i", ",", " ", 
             RowBox[{"Length", "[", "verts", "]"}]}], "}"}]}], "]"}]}], ";", 
        "\[IndentingNewLine]", 
        RowBox[{"vertTest", " ", "=", " ", 
         RowBox[{"Table", "[", 
          RowBox[{
           RowBox[{"Select", "[", 
            RowBox[{
             RowBox[{"Table", "[", 
              RowBox[{
               RowBox[{"If", "[", 
                RowBox[{
                 RowBox[{"MemberQ", "[", 
                  RowBox[{
                   RowBox[{"Table", "[", 
                    RowBox[{
                    RowBox[{"outsideWulffCompiled", "[", 
                    RowBox[{
                    RowBox[{"newGs", "[", 
                    RowBox[{"[", 
                    RowBox[{"j", ",", " ", "1"}], "]"}], "]"}], ",", " ", 
                    RowBox[{"verts2", "[", 
                    RowBox[{"[", 
                    RowBox[{"i", ",", " ", "k", ",", " ", "1"}], "]"}], 
                    "]"}]}], "]"}], ",", " ", 
                    RowBox[{"{", 
                    RowBox[{"j", ",", " ", 
                    RowBox[{"Length", "[", "newGs", "]"}]}], "}"}]}], "]"}], 
                   ",", " ", "True"}], "]"}], ",", " ", "Null", ",", " ", 
                 RowBox[{"verts2", "[", 
                  RowBox[{"[", 
                   RowBox[{"i", ",", " ", "k"}], "]"}], "]"}]}], "]"}], ",", 
               "  ", 
               RowBox[{"{", 
                RowBox[{"k", ",", " ", 
                 RowBox[{"Length", "[", 
                  RowBox[{"verts2", "[", 
                   RowBox[{"[", "i", "]"}], "]"}], "]"}]}], "}"}]}], "]"}], 
             ",", " ", 
             RowBox[{
              RowBox[{"!", 
               RowBox[{"SameQ", "[", 
                RowBox[{"Null", ",", " ", "#"}], "]"}]}], " ", "&"}]}], "]"}],
            ",", " ", 
           RowBox[{"{", 
            RowBox[{"i", ",", " ", 
             RowBox[{"Length", "[", "verts2", "]"}]}], "}"}]}], "]"}]}], ";", 
        "\[IndentingNewLine]", "\[IndentingNewLine]", 
        RowBox[{"rotMats", " ", "=", " ", 
         RowBox[{"Chop", "@", 
          RowBox[{"Table", "[", " ", 
           RowBox[{
            RowBox[{"If", "[", 
             RowBox[{
              RowBox[{
               RowBox[{
                RowBox[{
                 RowBox[{"newGs", "[", 
                  RowBox[{"[", 
                   RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], ".", 
                 RowBox[{"{", 
                  RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}]}], "/", 
                RowBox[{"Norm", "[", 
                 RowBox[{"newGs", "[", 
                  RowBox[{"[", 
                   RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], "]"}]}], " ", 
               "\[Equal]", " ", 
               RowBox[{"-", "1"}]}], ",", " ", 
              RowBox[{"RotationMatrix", "[", 
               RowBox[{"Pi", ",", " ", 
                RowBox[{"{", 
                 RowBox[{"1", ",", " ", "0", ",", " ", "0"}], "}"}]}], "]"}], 
              ",", "  ", 
              RowBox[{"RotationMatrix", "[", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"newGs", "[", 
                  RowBox[{"[", 
                   RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], ",", " ", 
                 RowBox[{"{", 
                  RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}]}], "}"}],
                "]"}]}], "]"}], ",", " ", 
            RowBox[{"{", 
             RowBox[{"i", ",", " ", 
              RowBox[{"Length", "[", "newGs", "]"}]}], "}"}]}], "]"}]}]}], 
        ";", "\[IndentingNewLine]", 
        RowBox[{"rotatedVerts", " ", "=", " ", 
         RowBox[{"Table", "[", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{
             RowBox[{
              RowBox[{"rotMats", "[", 
               RowBox[{"[", "i", "]"}], "]"}], ".", 
              RowBox[{"vertTest", "[", 
               RowBox[{"[", 
                RowBox[{"i", ",", " ", "j", ",", " ", "1"}], "]"}], "]"}]}], 
             ",", " ", "j"}], "}"}], ",", " ", 
           RowBox[{"{", 
            RowBox[{"i", ",", " ", 
             RowBox[{"Length", "[", "vertTest", "]"}]}], "}"}], ",", " ", 
           RowBox[{"{", 
            RowBox[{"j", ",", " ", 
             RowBox[{"Length", "[", 
              RowBox[{"vertTest", "[", 
               RowBox[{"[", "i", "]"}], "]"}], "]"}]}], "}"}]}], "]"}]}], ";",
         "\[IndentingNewLine]", 
        RowBox[{"sortedVerts", " ", "=", " ", 
         RowBox[{"Table", "[", 
          RowBox[{
           RowBox[{"Sort", "[", 
            RowBox[{
             RowBox[{"rotatedVerts", "[", 
              RowBox[{"[", "i", "]"}], "]"}], ",", " ", 
             RowBox[{
              RowBox[{
               RowBox[{"ArcTan", "[", 
                RowBox[{
                 RowBox[{"#1", "[", 
                  RowBox[{"[", 
                   RowBox[{"1", ",", " ", "1"}], "]"}], "]"}], ",", " ", 
                 RowBox[{"#1", "[", 
                  RowBox[{"[", 
                   RowBox[{"1", ",", " ", "2"}], "]"}], "]"}]}], "]"}], " ", 
               ">", " ", 
               RowBox[{"ArcTan", "[", 
                RowBox[{
                 RowBox[{"#2", "[", 
                  RowBox[{"[", 
                   RowBox[{"1", ",", " ", "1"}], "]"}], "]"}], ",", " ", 
                 RowBox[{"#2", "[", 
                  RowBox[{"[", 
                   RowBox[{"1", ",", " ", "2"}], "]"}], "]"}]}], "]"}]}], " ",
               "&"}]}], "]"}], ",", " ", 
           RowBox[{"{", 
            RowBox[{"i", ",", " ", 
             RowBox[{"Length", "[", "rotatedVerts", "]"}]}], "}"}]}], "]"}]}],
         ";", "\[IndentingNewLine]", 
        RowBox[{"finVerts", " ", "=", " ", 
         RowBox[{"Table", "[", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{
             RowBox[{"vertTest", "[", 
              RowBox[{"[", 
               RowBox[{"i", ",", " ", 
                RowBox[{"sortedVerts", "[", 
                 RowBox[{"[", 
                  RowBox[{"i", ",", " ", "j", ",", " ", "2"}], "]"}], "]"}], 
                ",", " ", "1"}], "]"}], "]"}], ",", " ", 
             RowBox[{"Sort", "[", 
              RowBox[{"vertTest", "[", 
               RowBox[{"[", 
                RowBox[{"i", ",", " ", 
                 RowBox[{"sortedVerts", "[", 
                  RowBox[{"[", 
                   RowBox[{"i", ",", " ", "j", ",", " ", "2"}], "]"}], "]"}], 
                 ",", " ", "2"}], "]"}], "]"}], "]"}]}], "}"}], ",", " ", 
           RowBox[{"{", 
            RowBox[{"i", ",", " ", 
             RowBox[{"Length", "[", "vertTest", "]"}]}], "}"}], ",", " ", 
           RowBox[{"{", 
            RowBox[{"j", ",", " ", 
             RowBox[{"Length", "[", 
              RowBox[{"vertTest", "[", 
               RowBox[{"[", "i", "]"}], "]"}], "]"}]}], "}"}]}], "]"}]}], ";",
         "\[IndentingNewLine]", 
        RowBox[{"facets", " ", "=", " ", 
         RowBox[{"Table", "[", 
          RowBox[{
           RowBox[{"finVerts", "[", 
            RowBox[{"[", 
             RowBox[{"i", ",", " ", "j", ",", " ", "1"}], "]"}], "]"}], ",", 
           " ", 
           RowBox[{"{", 
            RowBox[{"i", ",", " ", 
             RowBox[{"Length", "[", "vertTest", "]"}]}], "}"}], ",", " ", 
           RowBox[{"{", 
            RowBox[{"j", ",", " ", 
             RowBox[{"Length", "[", 
              RowBox[{"vertTest", "[", 
               RowBox[{"[", "i", "]"}], "]"}], "]"}]}], "}"}]}], "]"}]}], ";",
         "\[IndentingNewLine]", 
        RowBox[{"vertParents", " ", "=", " ", 
         RowBox[{"Table", "[", 
          RowBox[{
           RowBox[{"finVerts", "[", 
            RowBox[{"[", 
             RowBox[{"i", ",", " ", "j", ",", " ", "2"}], "]"}], "]"}], ",", 
           " ", 
           RowBox[{"{", 
            RowBox[{"i", ",", " ", 
             RowBox[{"Length", "[", "vertTest", "]"}]}], "}"}], ",", " ", 
           RowBox[{"{", 
            RowBox[{"j", ",", " ", 
             RowBox[{"Length", "[", 
              RowBox[{"vertTest", "[", 
               RowBox[{"[", "i", "]"}], "]"}], "]"}]}], "}"}]}], "]"}]}], ";",
         "\[IndentingNewLine]", 
        RowBox[{"{", 
         RowBox[{"facets", ",", " ", "finVerts"}], "}"}]}]}], 
      "\[IndentingNewLine]", "]"}]}], ";"}], "\[IndentingNewLine]", 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"makeAWulffdouble", "[", 
      RowBox[{
      "newGs_", ",", " ", "colz_", ",", " ", "switch_", ",", " ", 
       "sensitivity_"}], "]"}], " ", ":=", " ", 
     RowBox[{"Module", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
        "neighbors", ",", " ", "verts", ",", " ", "verts2", ",", " ", 
         "vertTest", ",", " ", "rotMats", ",", " ", "rotatedVerts", ",", " ", 
         "shifts", ",", " ", "centeredVerts", ",", " ", "sortedVerts", ",", 
         " ", "finVerts", ",", " ", "facets", ",", " ", "vertParents"}], 
        "}"}], ",", "\[IndentingNewLine]", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"neighbors", " ", "=", " ", 
         RowBox[{"Table", "[", 
          RowBox[{
           RowBox[{"neighborQdouble", "[", 
            RowBox[{
            "i", ",", " ", "newGs", ",", " ", "switch", ",", " ", 
             "sensitivity"}], "]"}], ",", " ", 
           RowBox[{"{", 
            RowBox[{"i", ",", " ", 
             RowBox[{"Length", "[", "newGs", "]"}]}], "}"}]}], "]"}]}], ";", 
        "\[IndentingNewLine]", 
        RowBox[{"verts", " ", "=", " ", 
         RowBox[{"Table", "[", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{
             RowBox[{"findvert", "[", 
              RowBox[{
               RowBox[{"newGs", "[", 
                RowBox[{"[", 
                 RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], ",", " ", 
               RowBox[{"newGs", "[", 
                RowBox[{"[", 
                 RowBox[{
                  RowBox[{"neighbors", "[", 
                   RowBox[{"[", 
                    RowBox[{"i", ",", " ", "j"}], "]"}], "]"}], ",", " ", 
                  "1"}], "]"}], "]"}], ",", " ", 
               RowBox[{"newGs", "[", 
                RowBox[{"[", 
                 RowBox[{
                  RowBox[{"neighbors", "[", 
                   RowBox[{"[", 
                    RowBox[{"i", ",", " ", "k"}], "]"}], "]"}], ",", " ", 
                  "1"}], "]"}], "]"}]}], "]"}], ",", " ", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"newGs", "[", 
                RowBox[{"[", 
                 RowBox[{"i", ",", " ", "3"}], "]"}], "]"}], ",", " ", 
               RowBox[{"neighbors", "[", 
                RowBox[{"[", 
                 RowBox[{"i", ",", " ", "j"}], "]"}], "]"}], ",", " ", 
               RowBox[{"neighbors", "[", 
                RowBox[{"[", 
                 RowBox[{"i", ",", " ", "k"}], "]"}], "]"}]}], "}"}]}], "}"}],
            ",", " ", 
           RowBox[{"{", 
            RowBox[{"i", ",", " ", 
             RowBox[{"Length", "[", "newGs", "]"}]}], "}"}], ",", " ", 
           RowBox[{"{", 
            RowBox[{"j", ",", " ", 
             RowBox[{
              RowBox[{"Length", "[", 
               RowBox[{"neighbors", "[", 
                RowBox[{"[", "i", "]"}], "]"}], "]"}], "-", "1"}]}], "}"}], 
           ",", " ", 
           RowBox[{"{", 
            RowBox[{"k", ",", " ", 
             RowBox[{"j", "+", "1"}], ",", " ", 
             RowBox[{"Length", "[", 
              RowBox[{"neighbors", "[", 
               RowBox[{"[", "i", "]"}], "]"}], "]"}]}], "}"}]}], "]"}]}], ";",
         "\[IndentingNewLine]", 
        RowBox[{"verts2", " ", "=", " ", 
         RowBox[{"Table", "[", 
          RowBox[{
           RowBox[{"Select", "[", 
            RowBox[{
             RowBox[{"Flatten", "[", 
              RowBox[{
               RowBox[{"verts", "[", 
                RowBox[{"[", "i", "]"}], "]"}], ",", " ", "1"}], "]"}], ",", 
             " ", 
             RowBox[{
              RowBox[{"VectorQ", "[", 
               RowBox[{"#", "[", 
                RowBox[{"[", "1", "]"}], "]"}], "]"}], " ", "&"}]}], "]"}], 
           ",", " ", 
           RowBox[{"{", 
            RowBox[{"i", ",", " ", 
             RowBox[{"Length", "[", "verts", "]"}]}], "}"}]}], "]"}]}], ";", 
        "\[IndentingNewLine]", 
        RowBox[{"vertTest", " ", "=", " ", 
         RowBox[{"Table", "[", 
          RowBox[{
           RowBox[{"Select", "[", 
            RowBox[{
             RowBox[{"Table", "[", 
              RowBox[{
               RowBox[{"If", "[", 
                RowBox[{
                 RowBox[{"MemberQ", "[", 
                  RowBox[{
                   RowBox[{"Table", "[", 
                    RowBox[{
                    RowBox[{"outsideWulffCompiled", "[", 
                    RowBox[{
                    RowBox[{"newGs", "[", 
                    RowBox[{"[", 
                    RowBox[{"j", ",", " ", "1"}], "]"}], "]"}], ",", " ", 
                    RowBox[{"verts2", "[", 
                    RowBox[{"[", 
                    RowBox[{"i", ",", " ", "k", ",", " ", "1"}], "]"}], 
                    "]"}]}], "]"}], ",", " ", 
                    RowBox[{"{", 
                    RowBox[{"j", ",", " ", 
                    RowBox[{"Length", "[", "newGs", "]"}]}], "}"}]}], "]"}], 
                   ",", " ", "True"}], "]"}], ",", " ", "Null", ",", " ", 
                 RowBox[{"verts2", "[", 
                  RowBox[{"[", 
                   RowBox[{"i", ",", " ", "k"}], "]"}], "]"}]}], "]"}], ",", 
               "  ", 
               RowBox[{"{", 
                RowBox[{"k", ",", " ", 
                 RowBox[{"Length", "[", 
                  RowBox[{"verts2", "[", 
                   RowBox[{"[", "i", "]"}], "]"}], "]"}]}], "}"}]}], "]"}], 
             ",", " ", 
             RowBox[{
              RowBox[{"!", 
               RowBox[{"SameQ", "[", 
                RowBox[{"Null", ",", " ", "#"}], "]"}]}], " ", "&"}]}], "]"}],
            ",", " ", 
           RowBox[{"{", 
            RowBox[{"i", ",", " ", 
             RowBox[{"Length", "[", "verts2", "]"}]}], "}"}]}], "]"}]}], ";", 
        "\[IndentingNewLine]", "\[IndentingNewLine]", 
        RowBox[{"rotMats", " ", "=", " ", 
         RowBox[{"Chop", "@", 
          RowBox[{"Table", "[", " ", 
           RowBox[{
            RowBox[{"If", "[", 
             RowBox[{
              RowBox[{
               RowBox[{
                RowBox[{
                 RowBox[{"newGs", "[", 
                  RowBox[{"[", 
                   RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], ".", 
                 RowBox[{"{", 
                  RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}]}], "/", 
                RowBox[{"Norm", "[", 
                 RowBox[{"newGs", "[", 
                  RowBox[{"[", 
                   RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], "]"}]}], " ", 
               "\[Equal]", " ", 
               RowBox[{"-", "1"}]}], ",", " ", 
              RowBox[{"RotationMatrix", "[", 
               RowBox[{"Pi", ",", " ", 
                RowBox[{"{", 
                 RowBox[{"1", ",", " ", "0", ",", " ", "0"}], "}"}]}], "]"}], 
              ",", "  ", 
              RowBox[{"RotationMatrix", "[", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"newGs", "[", 
                  RowBox[{"[", 
                   RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], ",", " ", 
                 RowBox[{"{", 
                  RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}]}], "}"}],
                "]"}]}], "]"}], ",", " ", 
            RowBox[{"{", 
             RowBox[{"i", ",", " ", 
              RowBox[{"Length", "[", "newGs", "]"}]}], "}"}]}], "]"}]}]}], 
        ";", "\[IndentingNewLine]", 
        RowBox[{"rotatedVerts", " ", "=", " ", 
         RowBox[{"Table", "[", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{
             RowBox[{
              RowBox[{"rotMats", "[", 
               RowBox[{"[", "i", "]"}], "]"}], ".", 
              RowBox[{"vertTest", "[", 
               RowBox[{"[", 
                RowBox[{"i", ",", " ", "j", ",", " ", "1"}], "]"}], "]"}]}], 
             ",", " ", "j"}], "}"}], ",", " ", 
           RowBox[{"{", 
            RowBox[{"i", ",", " ", 
             RowBox[{"Length", "[", "vertTest", "]"}]}], "}"}], ",", " ", 
           RowBox[{"{", 
            RowBox[{"j", ",", " ", 
             RowBox[{"Length", "[", 
              RowBox[{"vertTest", "[", 
               RowBox[{"[", "i", "]"}], "]"}], "]"}]}], "}"}]}], "]"}]}], ";",
         "\[IndentingNewLine]", 
        RowBox[{"shifts", " ", "=", " ", 
         RowBox[{"Table", "[", 
          RowBox[{
           RowBox[{"Mean", "[", 
            RowBox[{"Table", "[", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{
                RowBox[{"rotatedVerts", "[", 
                 RowBox[{"[", 
                  RowBox[{"i", ",", " ", "j", ",", " ", "1", ",", " ", "1"}], 
                  "]"}], "]"}], ",", " ", 
                RowBox[{"rotatedVerts", "[", 
                 RowBox[{"[", 
                  RowBox[{"i", ",", " ", "j", ",", " ", "1", ",", " ", "2"}], 
                  "]"}], "]"}], ",", " ", "0"}], "}"}], ",", " ", 
              RowBox[{"{", 
               RowBox[{"j", ",", " ", 
                RowBox[{"Length", "[", 
                 RowBox[{"rotatedVerts", "[", 
                  RowBox[{"[", "i", "]"}], "]"}], "]"}]}], "}"}]}], "]"}], 
            "]"}], ",", " ", 
           RowBox[{"{", 
            RowBox[{"i", ",", " ", 
             RowBox[{"Length", "[", "rotatedVerts", "]"}]}], "}"}]}], "]"}]}],
         ";", "\[IndentingNewLine]", 
        RowBox[{"centeredVerts", " ", "=", " ", 
         RowBox[{"Table", "[", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{
             RowBox[{
              RowBox[{"rotatedVerts", "[", 
               RowBox[{"[", 
                RowBox[{"i", ",", " ", "j", ",", " ", "1"}], "]"}], "]"}], 
              " ", "-", " ", 
              RowBox[{"shifts", "[", 
               RowBox[{"[", "i", "]"}], "]"}]}], ",", " ", 
             RowBox[{"rotatedVerts", "[", 
              RowBox[{"[", 
               RowBox[{"i", ",", " ", "j", ",", " ", "2"}], "]"}], "]"}]}], 
            "}"}], ",", " ", 
           RowBox[{"{", 
            RowBox[{"i", ",", " ", 
             RowBox[{"Length", "[", "rotatedVerts", "]"}]}], "}"}], ",", " ", 
           
           RowBox[{"{", 
            RowBox[{"j", ",", " ", 
             RowBox[{"Length", "[", 
              RowBox[{"rotatedVerts", "[", 
               RowBox[{"[", "i", "]"}], "]"}], "]"}]}], "}"}]}], "]"}]}], ";",
         "\[IndentingNewLine]", 
        RowBox[{"sortedVerts", " ", "=", " ", 
         RowBox[{"Table", "[", 
          RowBox[{
           RowBox[{"Sort", "[", 
            RowBox[{
             RowBox[{"centeredVerts", "[", 
              RowBox[{"[", "i", "]"}], "]"}], ",", " ", 
             RowBox[{
              RowBox[{
               RowBox[{"ArcTan", "[", 
                RowBox[{
                 RowBox[{"#1", "[", 
                  RowBox[{"[", 
                   RowBox[{"1", ",", " ", "1"}], "]"}], "]"}], ",", " ", 
                 RowBox[{"#1", "[", 
                  RowBox[{"[", 
                   RowBox[{"1", ",", " ", "2"}], "]"}], "]"}]}], "]"}], " ", 
               ">", " ", 
               RowBox[{"ArcTan", "[", 
                RowBox[{
                 RowBox[{"#2", "[", 
                  RowBox[{"[", 
                   RowBox[{"1", ",", " ", "1"}], "]"}], "]"}], ",", " ", 
                 RowBox[{"#2", "[", 
                  RowBox[{"[", 
                   RowBox[{"1", ",", " ", "2"}], "]"}], "]"}]}], "]"}]}], " ",
               "&"}]}], "]"}], ",", " ", 
           RowBox[{"{", 
            RowBox[{"i", ",", " ", 
             RowBox[{"Length", "[", "centeredVerts", "]"}]}], "}"}]}], 
          "]"}]}], ";", "\[IndentingNewLine]", 
        RowBox[{"finVerts", " ", "=", " ", 
         RowBox[{"Table", "[", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{
             RowBox[{"vertTest", "[", 
              RowBox[{"[", 
               RowBox[{"i", ",", " ", 
                RowBox[{"sortedVerts", "[", 
                 RowBox[{"[", 
                  RowBox[{"i", ",", " ", "j", ",", " ", "2"}], "]"}], "]"}], 
                ",", " ", "1"}], "]"}], "]"}], ",", " ", 
             RowBox[{"Sort", "[", 
              RowBox[{"vertTest", "[", 
               RowBox[{"[", 
                RowBox[{"i", ",", " ", 
                 RowBox[{"sortedVerts", "[", 
                  RowBox[{"[", 
                   RowBox[{"i", ",", " ", "j", ",", " ", "2"}], "]"}], "]"}], 
                 ",", " ", "2"}], "]"}], "]"}], "]"}]}], "}"}], ",", " ", 
           RowBox[{"{", 
            RowBox[{"i", ",", " ", 
             RowBox[{"Length", "[", "vertTest", "]"}]}], "}"}], ",", " ", 
           RowBox[{"{", 
            RowBox[{"j", ",", " ", 
             RowBox[{"Length", "[", 
              RowBox[{"vertTest", "[", 
               RowBox[{"[", "i", "]"}], "]"}], "]"}]}], "}"}]}], "]"}]}], ";",
         "\[IndentingNewLine]", 
        RowBox[{"facets", " ", "=", " ", 
         RowBox[{"Table", "[", 
          RowBox[{
           RowBox[{"finVerts", "[", 
            RowBox[{"[", 
             RowBox[{"i", ",", " ", "j", ",", " ", "1"}], "]"}], "]"}], ",", 
           " ", 
           RowBox[{"{", 
            RowBox[{"i", ",", " ", 
             RowBox[{"Length", "[", "vertTest", "]"}]}], "}"}], ",", " ", 
           RowBox[{"{", 
            RowBox[{"j", ",", " ", 
             RowBox[{"Length", "[", 
              RowBox[{"vertTest", "[", 
               RowBox[{"[", "i", "]"}], "]"}], "]"}]}], "}"}]}], "]"}]}], ";",
         "\[IndentingNewLine]", 
        RowBox[{"vertParents", " ", "=", " ", 
         RowBox[{"Table", "[", 
          RowBox[{
           RowBox[{"finVerts", "[", 
            RowBox[{"[", 
             RowBox[{"i", ",", " ", "j", ",", " ", "2"}], "]"}], "]"}], ",", 
           " ", 
           RowBox[{"{", 
            RowBox[{"i", ",", " ", 
             RowBox[{"Length", "[", "vertTest", "]"}]}], "}"}], ",", " ", 
           RowBox[{"{", 
            RowBox[{"j", ",", " ", 
             RowBox[{"Length", "[", 
              RowBox[{"vertTest", "[", 
               RowBox[{"[", "i", "]"}], "]"}], "]"}]}], "}"}]}], "]"}]}], ";",
         "\[IndentingNewLine]", 
        RowBox[{"{", 
         RowBox[{"facets", ",", " ", "finVerts"}], "}"}]}]}], 
      "\[IndentingNewLine]", "]"}]}], ";"}], "\[IndentingNewLine]", 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"findarea", "[", "vertices_", "]"}], " ", ":=", " ", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"trianglify", ",", " ", "areas", ",", " ", "totalarea"}], 
       "}"}], ",", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"trianglify", " ", "=", " ", 
        RowBox[{"Table", "[", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{
            RowBox[{"Norm", "[", 
             RowBox[{
              RowBox[{"vertices", "[", 
               RowBox[{"[", "1", "]"}], "]"}], " ", "-", " ", 
              RowBox[{"vertices", "[", 
               RowBox[{"[", "i", "]"}], "]"}]}], "]"}], ",", " ", 
            RowBox[{"Norm", "[", 
             RowBox[{
              RowBox[{"vertices", "[", 
               RowBox[{"[", "i", "]"}], "]"}], " ", "-", " ", 
              RowBox[{"vertices", "[", 
               RowBox[{"[", 
                RowBox[{"i", "+", "1"}], "]"}], "]"}]}], "]"}], ",", " ", 
            RowBox[{"Norm", "[", 
             RowBox[{
              RowBox[{"vertices", "[", 
               RowBox[{"[", 
                RowBox[{"i", "+", "1"}], "]"}], "]"}], " ", "-", " ", 
              RowBox[{"vertices", "[", 
               RowBox[{"[", "1", "]"}], "]"}]}], "]"}]}], "}"}], ",", " ", 
          RowBox[{"{", 
           RowBox[{"i", ",", " ", "2", ",", " ", 
            RowBox[{
             RowBox[{"Length", "[", "vertices", "]"}], "-", "1"}]}], "}"}]}], 
         "]"}]}], ";", "\[IndentingNewLine]", 
       RowBox[{"areas", " ", "=", " ", 
        RowBox[{"Table", "[", 
         RowBox[{
          RowBox[{"0.25", " ", 
           RowBox[{"Sqrt", "[", 
            RowBox[{
             SuperscriptBox[
              RowBox[{"(", 
               RowBox[{
                SuperscriptBox[
                 RowBox[{"trianglify", "[", 
                  RowBox[{"[", 
                   RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], "2"], " ", "+",
                 " ", 
                SuperscriptBox[
                 RowBox[{"trianglify", "[", 
                  RowBox[{"[", 
                   RowBox[{"i", ",", " ", "2"}], "]"}], "]"}], "2"], " ", "+",
                 " ", 
                SuperscriptBox[
                 RowBox[{"trianglify", "[", 
                  RowBox[{"[", 
                   RowBox[{"i", ",", " ", "3"}], "]"}], "]"}], "2"]}], ")"}], 
              "2"], " ", "-", " ", 
             RowBox[{"2", " ", 
              RowBox[{"(", 
               RowBox[{
                SuperscriptBox[
                 RowBox[{"trianglify", "[", 
                  RowBox[{"[", 
                   RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], "4"], " ", "+",
                 " ", 
                SuperscriptBox[
                 RowBox[{"trianglify", "[", 
                  RowBox[{"[", 
                   RowBox[{"i", ",", " ", "2"}], "]"}], "]"}], "4"], " ", "+",
                 " ", 
                SuperscriptBox[
                 RowBox[{"trianglify", "[", 
                  RowBox[{"[", 
                   RowBox[{"i", ",", " ", "3"}], "]"}], "]"}], "4"]}], 
               ")"}]}]}], "]"}]}], ",", " ", 
          RowBox[{"{", 
           RowBox[{"i", ",", " ", "1", ",", " ", 
            RowBox[{"Length", "[", "trianglify", "]"}]}], "}"}]}], "]"}]}], 
       ";", "\[IndentingNewLine]", 
       RowBox[{"totalarea", " ", "=", " ", 
        RowBox[{"Sum", "[", 
         RowBox[{
          RowBox[{"areas", "[", 
           RowBox[{"[", "i", "]"}], "]"}], ",", " ", 
          RowBox[{"{", 
           RowBox[{"i", ",", " ", "1", ",", " ", 
            RowBox[{"Length", "[", "areas", "]"}]}], "}"}]}], "]"}]}], ";", 
       "\[IndentingNewLine]", "totalarea"}]}], "\[IndentingNewLine]", "]"}]}],
    "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"cycle", "[", 
     RowBox[{"list_", ",", " ", "ntimes_"}], "]"}], " ", ":=", " ", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", "res", "}"}], ",", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"res", " ", "=", " ", "list"}], ";", "\[IndentingNewLine]", 
       RowBox[{"Do", "[", 
        RowBox[{
         RowBox[{"res", " ", "=", " ", 
          RowBox[{"Join", "[", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"Last", "[", "res", "]"}], "}"}], ",", " ", 
            RowBox[{"Most", "[", "res", "]"}]}], "]"}]}], ",", " ", 
         RowBox[{"{", "ntimes", "}"}]}], "]"}], ";", "\[IndentingNewLine]", 
       "res"}]}], "\[IndentingNewLine]", "]"}]}], "\[IndentingNewLine]", 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"neighborfxn", "[", "lenperim_", "]"}], " ", ":=", " ", 
    RowBox[{"Table", "[", " ", 
     RowBox[{
      RowBox[{"Module", "[", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{
         "down", ",", " ", "downn", ",", " ", "downp", ",", " ", "up", ",", 
          " ", "upn", ",", " ", "upp", ",", " ", "allsix", ",", " ", 
          "realneighbors"}], "}"}], ",", "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{"down", " ", "=", " ", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{"level", " ", "\[LessEqual]", " ", "2"}], ",", " ", 
            RowBox[{"{", 
             RowBox[{"Null", ",", " ", "Null"}], "}"}], ",", " ", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"level", "-", "2"}], ",", " ", "node"}], "}"}]}], 
           "]"}]}], ";", "\[IndentingNewLine]", 
         RowBox[{"up", " ", "=", " ", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{
             RowBox[{"9", "-", "level"}], " ", "<", " ", "2"}], ",", " ", 
            RowBox[{"{", 
             RowBox[{"Null", ",", " ", "Null"}], "}"}], ",", " ", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"level", "+", "2"}], ",", " ", "node"}], "}"}]}], 
           "]"}]}], ";", "\[IndentingNewLine]", 
         RowBox[{"downn", " ", "=", " ", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{"level", " ", "\[Equal]", " ", "1"}], ",", " ", 
            RowBox[{"{", 
             RowBox[{"Null", ",", " ", "Null"}], "}"}], ",", " ", 
            RowBox[{"If", "[", 
             RowBox[{
              RowBox[{"OddQ", "[", "level", "]"}], ",", "  ", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"level", "-", "1"}], ",", " ", 
                RowBox[{"If", "[", 
                 RowBox[{
                  RowBox[{"node", " ", "\[Equal]", " ", "1"}], ",", " ", 
                  "lenperim", ",", " ", 
                  RowBox[{"node", "-", "1"}]}], "]"}]}], "}"}], ",", " ", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"level", "-", "1"}], ",", " ", "node"}], "}"}]}], 
             "]"}]}], "]"}]}], ";", "\[IndentingNewLine]", 
         RowBox[{"downp", " ", "=", " ", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{"level", " ", "\[Equal]", " ", "1"}], ",", " ", 
            RowBox[{"{", 
             RowBox[{"Null", ",", " ", "Null"}], "}"}], ",", " ", 
            RowBox[{"If", "[", 
             RowBox[{
              RowBox[{"OddQ", "[", "level", "]"}], ",", " ", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"level", "-", "1"}], ",", " ", "node"}], "}"}], ",", 
              " ", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"level", "-", "1"}], ",", " ", 
                RowBox[{"If", "[", 
                 RowBox[{
                  RowBox[{"node", " ", "\[Equal]", " ", "lenperim"}], ",", 
                  " ", "1", ",", " ", 
                  RowBox[{"node", "+", "1"}]}], "]"}]}], "}"}]}], "]"}]}], 
           "]"}]}], ";", "\[IndentingNewLine]", 
         RowBox[{"upn", " ", "=", " ", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{
             RowBox[{"9", "-", "level"}], " ", "<", " ", "1"}], ",", " ", 
            RowBox[{"{", 
             RowBox[{"Null", ",", " ", "Null"}], "}"}], ",", " ", 
            RowBox[{"If", "[", 
             RowBox[{
              RowBox[{"OddQ", "[", "level", "]"}], ",", " ", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"level", "+", "1"}], ",", " ", 
                RowBox[{"If", "[", 
                 RowBox[{
                  RowBox[{"node", " ", "\[Equal]", " ", "1"}], ",", " ", 
                  "lenperim", ",", " ", 
                  RowBox[{"node", "-", "1"}]}], "]"}]}], "}"}], ",", " ", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"level", "+", "1"}], ",", " ", "node"}], "}"}]}], 
             "]"}]}], "]"}]}], ";", "\[IndentingNewLine]", 
         RowBox[{"upp", " ", "=", " ", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{
             RowBox[{"9", "-", "level"}], " ", "<", " ", "1"}], ",", " ", 
            RowBox[{"{", 
             RowBox[{"Null", ",", " ", "Null"}], "}"}], ",", " ", 
            RowBox[{"If", "[", 
             RowBox[{
              RowBox[{"OddQ", "[", "level", "]"}], ",", " ", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"level", "+", "1"}], ",", " ", "node"}], "}"}], ",", 
              " ", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"level", "+", "1"}], ",", " ", 
                RowBox[{"If", "[", 
                 RowBox[{
                  RowBox[{"node", " ", "\[Equal]", " ", "lenperim"}], ",", 
                  " ", "1", ",", " ", 
                  RowBox[{"node", "+", "1"}]}], "]"}]}], "}"}]}], "]"}]}], 
           "]"}]}], ";", "\[IndentingNewLine]", 
         RowBox[{"allsix", " ", "=", " ", 
          RowBox[{"{", 
           RowBox[{
           "down", ",", " ", "downn", ",", " ", "downp", ",", " ", "up", ",", 
            " ", "upn", ",", " ", "upp"}], "}"}]}], ";", 
         "\[IndentingNewLine]", 
         RowBox[{"realneighbors", " ", "=", " ", 
          RowBox[{"Select", "[", 
           RowBox[{"allsix", ",", " ", 
            RowBox[{
             RowBox[{"NumberQ", "[", 
              RowBox[{"#", "[", 
               RowBox[{"[", "1", "]"}], "]"}], "]"}], " ", "&"}]}], 
           "]"}]}]}]}], "\[IndentingNewLine]", "]"}], ",", " ", 
      RowBox[{"{", 
       RowBox[{"level", ",", " ", "1", ",", " ", "9"}], "}"}], ",", " ", 
      RowBox[{"{", 
       RowBox[{"node", ",", " ", "1", ",", " ", "lenperim"}], "}"}]}], 
     "]"}]}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
   "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{"(*", " ", 
    RowBox[{
    "these", " ", "are", " ", "lists", " ", "of", " ", "the", " ", "point", 
     " ", "group", " ", "symmetry", " ", "operators"}], " ", "*)"}], 
   "\[IndentingNewLine]", "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"g1", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{"IdentityMatrix", "[", "3", "]"}], "}"}]}], ";"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"gm", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", " ", 
       RowBox[{"ReflectionMatrix", "[", 
        RowBox[{"{", 
         RowBox[{"0", ",", " ", "1", ",", " ", "0"}], "}"}], "]"}]}], "}"}]}],
     ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"g1bar", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", " ", 
       RowBox[{"-", 
        RowBox[{"IdentityMatrix", "[", "3", "]"}]}]}], "}"}]}], ";"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"g2", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", " ", 
       RowBox[{"RotationMatrix", "[", 
        RowBox[{"Pi", ",", " ", 
         RowBox[{"{", 
          RowBox[{"0", ",", " ", "1", ",", " ", "0"}], "}"}]}], "]"}]}], 
      "}"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"g2sm", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", " ", 
       RowBox[{"RotationMatrix", "[", 
        RowBox[{"Pi", ",", " ", 
         RowBox[{"{", 
          RowBox[{"0", ",", " ", "1", ",", " ", "0"}], "}"}]}], "]"}], ",", 
       " ", 
       RowBox[{"ReflectionMatrix", "[", 
        RowBox[{"{", 
         RowBox[{"0", ",", " ", "1", ",", " ", "0"}], "}"}], "]"}]}], "}"}]}],
     ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"gmm2", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", " ", 
       RowBox[{"ReflectionMatrix", "[", 
        RowBox[{"{", 
         RowBox[{"0", ",", " ", "1", ",", "0"}], "}"}], "]"}], ",", " ", 
       RowBox[{"ReflectionMatrix", "[", 
        RowBox[{"{", 
         RowBox[{"1", ",", " ", "0", ",", "0"}], "}"}], "]"}]}], "}"}]}], 
    ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"g222", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", " ", 
       RowBox[{"RotationMatrix", "[", 
        RowBox[{"Pi", ",", " ", 
         RowBox[{"{", 
          RowBox[{"1", ",", " ", "0", ",", " ", "0"}], "}"}]}], "]"}], ",", 
       " ", 
       RowBox[{"RotationMatrix", "[", 
        RowBox[{"Pi", ",", " ", 
         RowBox[{"{", 
          RowBox[{"0", ",", " ", "1", ",", " ", "0"}], "}"}]}], "]"}]}], 
      "}"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"gmmm", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", " ", 
       RowBox[{"ReflectionMatrix", "[", 
        RowBox[{"{", 
         RowBox[{"1", ",", " ", "0", ",", " ", "0"}], "}"}], "]"}], ",", " ", 
       
       RowBox[{"ReflectionMatrix", "[", 
        RowBox[{"{", 
         RowBox[{"0", ",", " ", "1", ",", " ", "0"}], "}"}], "]"}], ",", " ", 
       
       RowBox[{"ReflectionMatrix", "[", 
        RowBox[{"{", 
         RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}], "]"}]}], "}"}]}],
     ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"g4", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", " ", 
       RowBox[{"RotationMatrix", "[", 
        RowBox[{
         RowBox[{"Pi", "/", "2"}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}]}], "]"}]}], 
      "}"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"g4bar", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", " ", 
       RowBox[{"-", 
        RowBox[{"(", 
         RowBox[{"RotationMatrix", "[", 
          RowBox[{
           RowBox[{"Pi", "/", "2"}], ",", " ", 
           RowBox[{"{", 
            RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}]}], "]"}], 
         ")"}]}]}], "}"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"g4sm", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", " ", 
       RowBox[{"RotationMatrix", "[", 
        RowBox[{
         RowBox[{"Pi", "/", "2"}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}]}], "]"}], ",", 
       " ", 
       RowBox[{"ReflectionMatrix", "[", 
        RowBox[{"{", 
         RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}], "]"}]}], "}"}]}],
     ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"g422", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", " ", 
       RowBox[{"RotationMatrix", "[", 
        RowBox[{
         RowBox[{"Pi", "/", "2"}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}]}], "]"}], ",", 
       " ", 
       RowBox[{"RotationMatrix", "[", 
        RowBox[{"Pi", ",", " ", 
         RowBox[{"{", 
          RowBox[{"1", ",", " ", "0", ",", " ", "0"}], "}"}]}], "]"}]}], 
      "}"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"g4mm", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", " ", 
       RowBox[{"RotationMatrix", "[", 
        RowBox[{
         RowBox[{"Pi", "/", "2"}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}]}], "]"}], ",", 
       " ", 
       RowBox[{"ReflectionMatrix", "[", 
        RowBox[{"{", 
         RowBox[{"1", ",", " ", "0", ",", " ", "0"}], "}"}], "]"}]}], "}"}]}],
     ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"g4bar2m", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", " ", 
       RowBox[{"-", 
        RowBox[{"(", 
         RowBox[{"RotationMatrix", "[", 
          RowBox[{
           RowBox[{"Pi", "/", "2"}], ",", " ", 
           RowBox[{"{", 
            RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}]}], "]"}], 
         ")"}]}], ",", " ", 
       RowBox[{"RotationMatrix", "[", 
        RowBox[{"Pi", ",", " ", 
         RowBox[{"{", 
          RowBox[{"1", ",", " ", "0", ",", " ", "0"}], "}"}]}], "]"}]}], 
      "}"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"g4smmm", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", " ", 
       RowBox[{"RotationMatrix", "[", 
        RowBox[{
         RowBox[{"Pi", "/", "2"}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}]}], "]"}], ",", 
       " ", 
       RowBox[{"ReflectionMatrix", "[", 
        RowBox[{"{", 
         RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}], "]"}], ",", " ", 
       
       RowBox[{"ReflectionMatrix", "[", 
        RowBox[{"{", 
         RowBox[{"1", ",", " ", "0", ",", " ", "0"}], "}"}], "]"}]}], "}"}]}],
     ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"g3", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", " ", 
       RowBox[{"RotationMatrix", "[", 
        RowBox[{
         RowBox[{"2", " ", 
          RowBox[{"Pi", "/", "3"}]}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}]}], "]"}]}], 
      "}"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"g3bar", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", " ", 
       RowBox[{"-", 
        RowBox[{"(", " ", 
         RowBox[{"RotationMatrix", "[", 
          RowBox[{
           RowBox[{"2", " ", 
            RowBox[{"Pi", "/", "3"}]}], ",", " ", 
           RowBox[{"{", 
            RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}]}], "]"}], 
         ")"}]}]}], "}"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"g32", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", "  ", 
       RowBox[{"RotationMatrix", "[", 
        RowBox[{
         RowBox[{"2", " ", 
          RowBox[{"Pi", "/", "3"}]}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}]}], "]"}], ",", 
       "  ", 
       RowBox[{"RotationMatrix", "[", 
        RowBox[{"Pi", ",", " ", 
         RowBox[{"{", 
          RowBox[{"1", ",", " ", "0", ",", " ", "0"}], "}"}]}], "]"}]}], 
      "}"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"g3m", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", "  ", 
       RowBox[{"RotationMatrix", "[", 
        RowBox[{
         RowBox[{"2", " ", 
          RowBox[{"Pi", "/", "3"}]}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}]}], "]"}], ",", 
       " ", 
       RowBox[{"ReflectionMatrix", "[", 
        RowBox[{"{", 
         RowBox[{"1", ",", " ", "0", ",", "0"}], "}"}], "]"}]}], "}"}]}], 
    ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"g3barm", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", " ", 
       RowBox[{"-", 
        RowBox[{"(", " ", 
         RowBox[{"RotationMatrix", "[", 
          RowBox[{
           RowBox[{"2", " ", 
            RowBox[{"Pi", "/", "3"}]}], ",", " ", 
           RowBox[{"{", 
            RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}]}], "]"}], 
         ")"}]}], ",", " ", 
       RowBox[{"ReflectionMatrix", "[", 
        RowBox[{"{", 
         RowBox[{"1", ",", " ", "0", ",", "0"}], "}"}], "]"}]}], "}"}]}], 
    ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"g6", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", " ", 
       RowBox[{"RotationMatrix", "[", 
        RowBox[{
         RowBox[{"Pi", "/", "3"}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}]}], "]"}]}], 
      "}"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"g6bar", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", " ", 
       RowBox[{"-", 
        RowBox[{"(", 
         RowBox[{"RotationMatrix", "[", 
          RowBox[{
           RowBox[{"Pi", "/", "3"}], ",", " ", 
           RowBox[{"{", 
            RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}]}], "]"}], 
         ")"}]}]}], "}"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"g6sm", " ", "=", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", " ", 
       RowBox[{"RotationMatrix", "[", 
        RowBox[{
         RowBox[{"Pi", "/", "3"}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}]}], "]"}], ",", 
       " ", 
       RowBox[{"ReflectionMatrix", "[", 
        RowBox[{"{", 
         RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}], "]"}]}], "}"}]}],
     ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"g622", " ", "=", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", " ", 
       RowBox[{"RotationMatrix", "[", 
        RowBox[{
         RowBox[{"Pi", "/", "3"}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}]}], "]"}], ",", 
       " ", 
       RowBox[{"RotationMatrix", "[", 
        RowBox[{"Pi", ",", " ", 
         RowBox[{"{", 
          RowBox[{"1", ",", " ", "0", ",", " ", "0"}], "}"}]}], "]"}]}], 
      "}"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"g6mm", " ", "=", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", " ", 
       RowBox[{"RotationMatrix", "[", 
        RowBox[{
         RowBox[{"Pi", "/", "3"}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}]}], "]"}], ",", 
       " ", 
       RowBox[{"ReflectionMatrix", "[", 
        RowBox[{"{", 
         RowBox[{"1", ",", " ", "0", ",", " ", "0"}], "}"}], "]"}]}], "}"}]}],
     ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"g6barm2", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", " ", 
       RowBox[{"-", 
        RowBox[{"(", 
         RowBox[{"RotationMatrix", "[", 
          RowBox[{
           RowBox[{"Pi", "/", "3"}], ",", " ", 
           RowBox[{"{", 
            RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}]}], "]"}], 
         ")"}]}], ",", " ", 
       RowBox[{"ReflectionMatrix", "[", 
        RowBox[{"{", 
         RowBox[{"1", ",", " ", "0", ",", " ", "0"}], "}"}], "]"}]}], "}"}]}],
     ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"g6smmm", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", " ", 
       RowBox[{"RotationMatrix", "[", 
        RowBox[{
         RowBox[{"Pi", "/", "3"}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}]}], "]"}], ",", 
       " ", 
       RowBox[{"ReflectionMatrix", "[", 
        RowBox[{"{", 
         RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}], "]"}], ",", " ", 
       
       RowBox[{"ReflectionMatrix", "[", 
        RowBox[{"{", 
         RowBox[{"1", ",", " ", "0", ",", " ", "0"}], "}"}], "]"}]}], "}"}]}],
     ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"g23", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", " ", 
       RowBox[{"RotationMatrix", "[", 
        RowBox[{"Pi", ",", " ", 
         RowBox[{"{", 
          RowBox[{"1", ",", " ", "0", ",", " ", "0"}], "}"}]}], "]"}], ",", 
       " ", 
       RowBox[{"RotationMatrix", "[", 
        RowBox[{
         RowBox[{"2", 
          RowBox[{"Pi", "/", "3"}]}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"1", ",", " ", "1", ",", " ", "1"}], "}"}]}], "]"}]}], 
      "}"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"gm3bar", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", " ", 
       RowBox[{"ReflectionMatrix", "[", 
        RowBox[{"{", 
         RowBox[{"1", ",", " ", "0", ",", " ", "0"}], "}"}], "]"}], ",", " ", 
       
       RowBox[{"RotationMatrix", "[", 
        RowBox[{
         RowBox[{"2", 
          RowBox[{"Pi", "/", "3"}]}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"1", ",", " ", "1", ",", " ", "1"}], "}"}]}], "]"}]}], 
      "}"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"g432", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", " ", 
       RowBox[{"RotationMatrix", "[", 
        RowBox[{
         RowBox[{"Pi", "/", "2"}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}]}], "]"}], ",", 
       " ", 
       RowBox[{"RotationMatrix", "[", 
        RowBox[{
         RowBox[{"2", 
          RowBox[{"Pi", "/", "3"}]}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"1", ",", " ", "1", ",", " ", "1"}], "}"}]}], "]"}]}], 
      "}"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"g4bar3m", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", " ", 
       RowBox[{"-", 
        RowBox[{"(", 
         RowBox[{"RotationMatrix", "[", 
          RowBox[{
           RowBox[{"Pi", "/", "2"}], ",", " ", 
           RowBox[{"{", 
            RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}]}], "]"}], 
         ")"}]}], ",", " ", 
       RowBox[{"RotationMatrix", "[", 
        RowBox[{
         RowBox[{"2", 
          RowBox[{"Pi", "/", "3"}]}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"1", ",", " ", "1", ",", " ", "1"}], "}"}]}], "]"}]}], 
      "}"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"gm3barm", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", " ", 
       RowBox[{"ReflectionMatrix", "[", 
        RowBox[{"{", 
         RowBox[{"1", ",", " ", "0", ",", " ", "0"}], "}"}], "]"}], ",", " ", 
       
       RowBox[{"RotationMatrix", "[", 
        RowBox[{
         RowBox[{"2", 
          RowBox[{"Pi", "/", "3"}]}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"1", ",", " ", "1", ",", " ", "1"}], "}"}]}], "]"}], ",", 
       " ", 
       RowBox[{"ReflectionMatrix", "[", 
        RowBox[{"{", 
         RowBox[{"1", ",", " ", "1", ",", " ", "0"}], "}"}], "]"}]}], "}"}]}],
     ";"}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{"(*", " ", 
    RowBox[{
    "these", " ", "are", " ", "the", " ", "space", " ", "group", " ", 
     "options", " ", "displayed", " ", "in", " ", "the", " ", "gui"}], " ", 
    "*)"}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"symList", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
      "\"\<Cubic\>\"", ",", " ", "\"\<Hexagonal\>\"", ",", " ", 
       "\"\<Tetragonal\>\"", ",", " ", "\"\<Orthorhombic\>\"", ",", " ", 
       "\"\<Monoclinic\>\"", ",", " ", "\"\<Triclinic\>\""}], "}"}]}], ";"}], 
   "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{"(*", " ", 
    RowBox[{
    "these", " ", "link", " ", "the", " ", "text", " ", "symbol", " ", "for", 
     " ", "a", " ", "space", " ", "group", " ", "to", " ", "the", " ", 
     "symmetry", " ", "operations"}], " ", "*)"}], "\[IndentingNewLine]", 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"triclinicset", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{"g1", ",", " ", "g1bar"}], "}"}]}], ";"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"groupSet", "[", "\"\<Triclinic\>\"", "]"}], "=", "  ", 
     RowBox[{"{", 
      RowBox[{
      "\"\<1\>\"", ",", " ", "\"\<\!\(\*OverscriptBox[\(1\), \(_\)]\)\>\""}], 
      "}"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"symmetryMatrices", "[", "\"\<1\>\"", "]"}], " ", "=", " ", 
     "g1"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{
     "symmetryMatrices", "[", "\"\<\!\(\*OverscriptBox[\(1\), \(_\)]\)\>\"", 
      "]"}], " ", "=", " ", "g1bar"}], ";"}], "\[IndentingNewLine]", 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"monoclinicset", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{"g2", ",", " ", "gm", ",", " ", "g2sm"}], "}"}]}], ";"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"groupSet", "[", "\"\<Monoclinic\>\"", "]"}], "=", "  ", 
     RowBox[{"{", 
      RowBox[{"\"\<2\>\"", ",", " ", "\"\<m\>\"", ",", " ", "\"\<2/m\>\""}], 
      "}"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"symmetryMatrices", "[", "\"\<2\>\"", "]"}], " ", "=", " ", 
     "g2"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"symmetryMatrices", "[", "\"\<m\>\"", "]"}], " ", "=", " ", 
     "gm"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"symmetryMatrices", "[", "\"\<2/m\>\"", "]"}], " ", "=", " ", 
     "g2sm"}], ";"}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"orthorhombicset", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{"g222", ",", " ", "gmm2", ",", " ", "gmmm"}], "}"}]}], ";"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"groupSet", "[", "\"\<Orthorhombic\>\"", "]"}], "=", "   ", 
     RowBox[{"{", 
      RowBox[{
      "\"\<222\>\"", ",", " ", "\"\<mm2\>\"", ",", " ", "\"\<mmm\>\""}], 
      "}"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"symmetryMatrices", "[", "\"\<222\>\"", "]"}], " ", "=", " ", 
     "g222"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"symmetryMatrices", "[", "\"\<mm2\>\"", "]"}], " ", "=", " ", 
     "gmm2"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"symmetryMatrices", "[", "\"\<mmm\>\"", "]"}], " ", "=", " ", 
     "gmmm"}], ";"}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"tetragonalset", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
      "g4", ",", " ", "g4bar", ",", " ", "g4sm", ",", " ", "g422", ",", " ", 
       "g4mm", ",", " ", "g4bar2m", ",", " ", "g4smmm"}], "}"}]}], ";"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"groupSet", "[", "\"\<Tetragonal\>\"", "]"}], "=", "  ", 
     RowBox[{"{", 
      RowBox[{
      "\"\<4\>\"", ",", " ", "\"\<\!\(\*OverscriptBox[\(4\), \(_\)]\)\>\"", 
       ",", " ", "\"\<4/m\>\"", ",", " ", "\"\<422\>\"", ",", " ", 
       "\"\<4mm\>\"", ",", " ", 
       "\"\<\!\(\*OverscriptBox[\(4\), \(_\)]\)2m\>\"", ",", " ", 
       "\"\<4/mmm\>\""}], "}"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"symmetryMatrices", "[", "\"\<4\>\"", "]"}], " ", "=", " ", 
     "g4"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{
     "symmetryMatrices", "[", "\"\<\!\(\*OverscriptBox[\(4\), \(_\)]\)\>\"", 
      "]"}], " ", "=", " ", "g4bar"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"symmetryMatrices", "[", "\"\<4/m\>\"", "]"}], " ", "=", " ", 
     "g4sm"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"symmetryMatrices", "[", "\"\<422\>\"", "]"}], " ", "=", " ", 
     "g422"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"symmetryMatrices", "[", "\"\<4mm\>\"", "]"}], " ", "=", " ", 
     "g4mm"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{
     "symmetryMatrices", "[", "\"\<\!\(\*OverscriptBox[\(4\), \(_\)]\)2m\>\"",
       "]"}], " ", "=", " ", "g4bar2m"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"symmetryMatrices", "[", "\"\<4/mmm\>\"", "]"}], " ", "=", " ", 
     "g4smmm"}], ";"}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"hexagonalset", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
      "g3", ",", " ", "g3bar", ",", " ", "g32", ",", " ", "g3m", ",", " ", 
       "g3barm", ",", " ", "g6", ",", " ", "g6bar", ",", " ", "g6sm", ",", 
       " ", "g622", ",", " ", "g6mm", ",", " ", "g6barm2", ",", " ", 
       "g6smmm"}], "}"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"groupSet", "[", "\"\<Hexagonal\>\"", "]"}], "=", "  ", 
     RowBox[{"{", 
      RowBox[{
      "\"\<3\>\"", ",", " ", "\"\<\!\(\*OverscriptBox[\(3\), \(_\)]\)\>\"", 
       ",", " ", "\"\<32\>\"", ",", " ", "\"\<3m\>\"", ",", " ", 
       "\"\<\!\(\*OverscriptBox[\(3\), \(_\)]\)m\>\"", ",", " ", "\"\<6\>\"", 
       ",", " ", "\"\<\!\(\*OverscriptBox[\(6\), \(_\)]\)\>\"", ",", " ", 
       "\"\<6/m\>\"", ",", " ", "\"\<622\>\"", ",", " ", "\"\<6mm\>\"", ",", 
       " ", "\"\<\!\(\*OverscriptBox[\(6\), \(_\)]\)m2\>\"", ",", " ", 
       "\"\<6/mmm\>\""}], "}"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"symmetryMatrices", "[", "\"\<3\>\"", "]"}], " ", "=", " ", 
     "g3"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{
     "symmetryMatrices", "[", "\"\<\!\(\*OverscriptBox[\(3\), \(_\)]\)\>\"", 
      "]"}], " ", "=", " ", "g3bar"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"symmetryMatrices", "[", "\"\<32\>\"", "]"}], " ", "=", " ", 
     "g32"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"symmetryMatrices", "[", "\"\<3m\>\"", "]"}], " ", "=", " ", 
     "g3m"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{
     "symmetryMatrices", "[", "\"\<\!\(\*OverscriptBox[\(3\), \(_\)]\)m\>\"", 
      "]"}], " ", "=", " ", "g3barm"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"symmetryMatrices", "[", "\"\<6\>\"", "]"}], " ", "=", " ", 
     "g6"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{
     "symmetryMatrices", "[", "\"\<\!\(\*OverscriptBox[\(6\), \(_\)]\)\>\"", 
      "]"}], " ", "=", " ", "g6bar"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"symmetryMatrices", "[", "\"\<6/m\>\"", "]"}], " ", "=", " ", 
     "g6sm"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"symmetryMatrices", "[", "\"\<622\>\"", "]"}], " ", "=", " ", 
     "g622"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"symmetryMatrices", "[", "\"\<6mm\>\"", "]"}], " ", "=", " ", 
     "g6mm"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{
     "symmetryMatrices", "[", "\"\<\!\(\*OverscriptBox[\(6\), \(_\)]\)m2\>\"",
       "]"}], " ", "=", " ", "g6barm2"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"symmetryMatrices", "[", "\"\<6/mmm\>\"", "]"}], " ", "=", " ", 
     "g6smmm"}], ";"}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"cubicset", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
      "g23", ",", " ", "gm3bar", ",", " ", "g432", ",", " ", "g4bar3m", ",", 
       " ", "gm3barm"}], "}"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"groupSet", "[", "\"\<Cubic\>\"", "]"}], "=", "  ", 
     RowBox[{"{", 
      RowBox[{
      "\"\<23\>\"", ",", " ", "\"\<m\!\(\*OverscriptBox[\(3\), \(_\)]\)\>\"", 
       ",", " ", "\"\<432\>\"", ",", " ", 
       "\"\<\!\(\*OverscriptBox[\(4\), \(_\)]\)3m\>\"", ",", " ", 
       "\"\<m\!\(\*OverscriptBox[\(3\), \(_\)]\)m\>\""}], "}"}]}], ";"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"symmetryMatrices", "[", "\"\<Cubic\>\"", "]"}], " ", "=", " ", 
     "g23"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"symmetryMatrices", "[", "\"\<23\>\"", "]"}], " ", "=", " ", 
     "g23"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{
     "symmetryMatrices", "[", "\"\<m\!\(\*OverscriptBox[\(3\), \(_\)]\)\>\"", 
      "]"}], " ", "=", " ", "gm3bar"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"symmetryMatrices", "[", "\"\<432\>\"", "]"}], " ", "=", " ", 
     "g432"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{
     "symmetryMatrices", "[", "\"\<\!\(\*OverscriptBox[\(4\), \(_\)]\)3m\>\"",
       "]"}], " ", "=", " ", "g4bar3m"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{
     "symmetryMatrices", "[", "\"\<m\!\(\*OverscriptBox[\(3\), \(_\)]\)m\>\"",
       "]"}], " ", "=", " ", "gm3barm"}], ";"}], "\[IndentingNewLine]", 
   "\[IndentingNewLine]", 
   RowBox[{"Clear", "[", 
    RowBox[{
    "a", ",", " ", "b", ",", " ", "c", ",", " ", "\[Alpha]", ",", " ", 
     "\[Beta]", ",", " ", "\[Gamma]", ",", " ", "atext", ",", " ", "btext", 
     ",", " ", "ctext", ",", " ", "\[Alpha]text", ",", " ", "\[Beta]text", 
     ",", " ", "\[Gamma]text"}], "]"}], "\[IndentingNewLine]", 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"atext", "[", "i_", "]"}], " ", ":=", " ", 
     RowBox[{"Text", "[", 
      RowBox[{"Style", "[", 
       RowBox[{
        RowBox[{"Subscript", "[", 
         RowBox[{"\"\<a\>\"", ",", " ", "i"}], "]"}], ",", "16"}], "]"}], 
      "]"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"btext", "[", "i_", "]"}], " ", ":=", " ", 
     RowBox[{"Text", "[", 
      RowBox[{"Style", "[", 
       RowBox[{
        RowBox[{"Subscript", "[", 
         RowBox[{"\"\<b\>\"", ",", " ", "i"}], "]"}], ",", "16"}], "]"}], 
      "]"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"ctext", "[", "i_", "]"}], " ", ":=", " ", 
     RowBox[{"Text", "[", 
      RowBox[{"Style", "[", 
       RowBox[{
        RowBox[{"Subscript", "[", 
         RowBox[{"\"\<c\>\"", ",", " ", "i"}], "]"}], ",", "16"}], "]"}], 
      "]"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"\[Alpha]text", "[", "i_", "]"}], " ", ":=", "  ", 
     RowBox[{"Text", "[", 
      RowBox[{"Style", "[", 
       RowBox[{
        RowBox[{"Subscript", "[", 
         RowBox[{"\"\<\[Alpha]\>\"", ",", " ", "i"}], "]"}], ",", "16"}], 
       "]"}], "]"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"\[Beta]text", "[", "i_", "]"}], " ", ":=", "  ", 
     RowBox[{"Text", "[", 
      RowBox[{"Style", "[", 
       RowBox[{
        RowBox[{"Subscript", "[", 
         RowBox[{"\"\<\[Beta]\>\"", ",", " ", "i"}], "]"}], ",", "16"}], 
       "]"}], "]"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"\[Gamma]text", "[", "i_", "]"}], " ", ":=", "  ", 
     RowBox[{"Text", "[", 
      RowBox[{"Style", "[", 
       RowBox[{
        RowBox[{"Subscript", "[", 
         RowBox[{"\"\<\[Gamma]\>\"", ",", " ", "i"}], "]"}], ",", "16"}], 
       "]"}], "]"}]}], ";"}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{"(*", " ", 
    RowBox[{
    "these", " ", "determine", " ", "what", " ", "space", " ", "group", " ", 
     "parameters", " ", "are", " ", "displayed", " ", "in", " ", "the", " ", 
     RowBox[{"gui", "."}]}], " ", "*)"}], "\[IndentingNewLine]", 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"tricliniccontrols", "[", 
      RowBox[{"symmetry_", ",", " ", "i_"}], "]"}], " ", ":=", "  ", 
     RowBox[{"Sequence", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{"a", "[", "i", "]"}], ",", " ", "1", ",", 
           RowBox[{"atext", "[", "i", "]"}]}], "}"}], ",", 
         RowBox[{"ControlPlacement", "\[Rule]", " ", "Top"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{"b", "[", "i", "]"}], ",", " ", "1", ",", 
           RowBox[{"btext", "[", "i", "]"}]}], "}"}], ",", " ", 
         RowBox[{"ControlPlacement", "\[Rule]", " ", "Top"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{"c", "[", "i", "]"}], ",", " ", "1", ",", 
           RowBox[{"ctext", "[", "i", "]"}]}], "}"}], ",", " ", 
         RowBox[{"ControlPlacement", "\[Rule]", " ", "Top"}]}], "}"}], ",", 
       " ", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{"\[Alpha]", "[", "i", "]"}], ",", " ", "90", ",", 
           RowBox[{"\[Alpha]text", "[", "i", "]"}]}], "}"}], ",", " ", 
         RowBox[{"ControlPlacement", "\[Rule]", " ", "Top"}]}], "}"}], ",", 
       " ", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{"\[Beta]", "[", "i", "]"}], ",", " ", "90", ",", 
           RowBox[{"\[Beta]text", "[", "i", "]"}]}], "}"}], ",", " ", 
         RowBox[{"ControlPlacement", "\[Rule]", " ", "Top"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{"\[Gamma]", "[", "i", "]"}], ",", " ", "90", ",", 
           RowBox[{"\[Gamma]text", "[", "i", "]"}]}], "}"}], ",", " ", 
         RowBox[{"ControlPlacement", "\[Rule]", " ", "Top"}]}], "}"}]}], 
      "]"}]}], ";"}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"triclinicconstants", "[", 
     RowBox[{"symmetry_", ",", " ", "i_"}], "]"}], " ", ":=", " ", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"a", "[", "i", "]"}], ",", " ", 
      RowBox[{"b", "[", "i", "]"}], ",", " ", 
      RowBox[{"c", "[", "i", "]"}], ",", " ", 
      RowBox[{"\[Alpha]", "[", "i", "]"}], ",", " ", 
      RowBox[{"\[Beta]", "[", "i", "]"}], ",", " ", 
      RowBox[{"\[Gamma]", "[", "i", "]"}]}], "}"}]}], "\[IndentingNewLine]", 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"monocliniccontrols", "[", 
      RowBox[{"symmetry_", ",", " ", "i_"}], "]"}], " ", ":=", "  ", 
     RowBox[{"Sequence", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{"a", "[", "i", "]"}], ",", " ", "1", ",", 
           RowBox[{"atext", "[", "i", "]"}]}], "}"}], ",", 
         RowBox[{"ControlPlacement", "\[Rule]", " ", "Top"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{"b", "[", "i", "]"}], ",", " ", "1", ",", 
           RowBox[{"btext", "[", "i", "]"}]}], "}"}], ",", " ", 
         RowBox[{"ControlPlacement", "\[Rule]", " ", "Top"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{"c", "[", "i", "]"}], ",", " ", "1", ",", 
           RowBox[{"ctext", "[", "i", "]"}]}], "}"}], ",", " ", 
         RowBox[{"ControlPlacement", "\[Rule]", " ", "Top"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{"\[Beta]", "[", "i", "]"}], ",", " ", "90", ",", 
           RowBox[{"\[Beta]text", "[", "i", "]"}]}], "}"}], ",", " ", 
         RowBox[{"ControlPlacement", "\[Rule]", " ", "Top"}]}], "}"}]}], 
      "]"}]}], ";"}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"monoclinicconstants", "[", 
     RowBox[{"symmetry_", ",", " ", "i_"}], "]"}], " ", ":=", " ", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"a", "[", "i", "]"}], ",", " ", 
      RowBox[{"b", "[", "i", "]"}], ",", " ", 
      RowBox[{"c", "[", "i", "]"}], ",", " ", "90", ",", " ", 
      RowBox[{"\[Beta]", "[", "i", "]"}], ",", " ", "90"}], "}"}]}], 
   "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"orthorhombiccontrols", "[", 
      RowBox[{"symmetry_", ",", " ", "i_"}], "]"}], " ", ":=", "  ", 
     RowBox[{"Sequence", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{"a", "[", "i", "]"}], ",", " ", "1", ",", 
           RowBox[{"atext", "[", "i", "]"}]}], "}"}], ",", 
         RowBox[{"ControlPlacement", "\[Rule]", " ", "Top"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{"b", "[", "i", "]"}], ",", " ", "1", ",", 
           RowBox[{"btext", "[", "i", "]"}]}], "}"}], ",", " ", 
         RowBox[{"ControlPlacement", "\[Rule]", " ", "Top"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{"c", "[", "i", "]"}], ",", " ", "1", ",", 
           RowBox[{"ctext", "[", "i", "]"}]}], "}"}], ",", " ", 
         RowBox[{"ControlPlacement", "\[Rule]", " ", "Top"}]}], "}"}]}], 
      "]"}]}], ";"}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"orthorhombicconstants", "[", 
     RowBox[{"symmetry_", ",", " ", "i_"}], "]"}], " ", ":=", " ", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"a", "[", "i", "]"}], ",", " ", 
      RowBox[{"b", "[", "i", "]"}], ",", " ", 
      RowBox[{"c", "[", "i", "]"}], ",", " ", "90", ",", " ", "90", ",", " ", 
      "90"}], "}"}]}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"tetragonalcontrols", "[", 
      RowBox[{"symmetry_", ",", " ", "i_"}], "]"}], " ", ":=", "  ", 
     RowBox[{"Sequence", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{"a", "[", "i", "]"}], ",", " ", "1", ",", 
           RowBox[{"atext", "[", "i", "]"}]}], "}"}], ",", 
         RowBox[{"ControlPlacement", "\[Rule]", " ", "Top"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{"c", "[", "i", "]"}], ",", " ", "1", ",", 
           RowBox[{"ctext", "[", "i", "]"}]}], "}"}], ",", " ", 
         RowBox[{"ControlPlacement", "\[Rule]", " ", "Top"}]}], "}"}]}], 
      "]"}]}], ";"}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"tetragonalconstants", "[", 
     RowBox[{"symmetry_", ",", " ", "i_"}], "]"}], " ", ":=", " ", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"a", "[", "i", "]"}], ",", " ", 
      RowBox[{"a", "[", "i", "]"}], ",", " ", 
      RowBox[{"c", "[", "i", "]"}], ",", " ", "90", ",", "90", ",", " ", 
      "90"}], "}"}]}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"hexagonalcontrols", "[", 
      RowBox[{"symmetry_", ",", " ", "i_"}], "]"}], " ", ":=", "  ", 
     RowBox[{"Sequence", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{"a", "[", "i", "]"}], ",", " ", "1", ",", 
           RowBox[{"atext", "[", "i", "]"}]}], "}"}], ",", 
         RowBox[{"ControlPlacement", "\[Rule]", " ", "Top"}]}], "}"}], ",", 
       " ", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{"c", "[", "i", "]"}], ",", " ", "1", ",", 
           RowBox[{"ctext", "[", "i", "]"}]}], "}"}], ",", " ", 
         RowBox[{"ControlPlacement", "\[Rule]", " ", "Top"}]}], "}"}]}], 
      "]"}]}], ";"}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"hexagonalconstants", "[", 
     RowBox[{"symmetry_", ",", " ", "i_"}], "]"}], " ", ":=", " ", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"a", "[", "i", "]"}], ",", " ", 
      RowBox[{"a", "[", "i", "]"}], ",", " ", 
      RowBox[{"c", "[", "i", "]"}], ",", " ", "90", ",", " ", "90", ",", " ", 
      "120"}], "}"}]}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"cubiccontrols", "[", 
      RowBox[{"symmetry_", ",", " ", "i_"}], "]"}], " ", ":=", "  ", 
     RowBox[{"Sequence", "[", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{
          RowBox[{"a", "[", "i", "]"}], ",", " ", "1", ",", 
          RowBox[{"atext", "[", "i", "]"}]}], "}"}], ",", 
        RowBox[{"ControlPlacement", "\[Rule]", " ", "Top"}]}], "}"}], "]"}]}],
     ";"}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"cubicconstants", "[", 
     RowBox[{"symmetry_", ",", " ", "i_"}], "]"}], " ", ":=", " ", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"a", "[", "i", "]"}], ",", " ", 
      RowBox[{"a", "[", "i", "]"}], ",", " ", 
      RowBox[{"a", "[", "i", "]"}], ",", " ", "90", ",", " ", "90", ",", " ", 
      "90"}], "}"}]}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"whichcontrols", "[", 
     RowBox[{"sym_", ",", " ", "i_"}], "]"}], " ", ":=", " ", 
    RowBox[{"If", "[", 
     RowBox[{
      RowBox[{"StringMatchQ", "[", 
       RowBox[{"\"\<Hexagonal\>\"", ",", " ", "sym"}], "]"}], ",", " ", 
      RowBox[{"hexagonalcontrols", "[", 
       RowBox[{"sym", ",", " ", "i"}], "]"}], ",", " ", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"StringMatchQ", "[", 
         RowBox[{"\"\<Cubic\>\"", ",", " ", "sym"}], "]"}], ",", " ", 
        RowBox[{"cubiccontrols", "[", 
         RowBox[{"sym", ",", " ", "i"}], "]"}], ",", " ", 
        RowBox[{"If", "[", 
         RowBox[{
          RowBox[{"StringMatchQ", "[", 
           RowBox[{"\"\<Tetragonal\>\"", ",", " ", "sym"}], "]"}], ",", " ", 
          RowBox[{"tetragonalcontrols", "[", 
           RowBox[{"sym", ",", " ", "i"}], "]"}], ",", " ", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{"StringMatchQ", "[", 
             RowBox[{"\"\<Orthorhombic\>\"", ",", " ", "sym"}], "]"}], ",", 
            " ", 
            RowBox[{"orthorhombiccontrols", "[", 
             RowBox[{"sym", ",", " ", "i"}], "]"}], ",", " ", 
            RowBox[{"If", "[", 
             RowBox[{
              RowBox[{"StringMatchQ", "[", 
               RowBox[{"\"\<Monoclinic\>\"", ",", " ", "sym"}], "]"}], ",", 
              " ", 
              RowBox[{"monocliniccontrols", "[", 
               RowBox[{"sym", ",", " ", "i"}], "]"}], ",", " ", 
              RowBox[{"tricliniccontrols", "[", 
               RowBox[{"sym", ",", " ", "i"}], "]"}]}], "]"}]}], "]"}]}], 
         "]"}]}], "]"}]}], "]"}]}], "\[IndentingNewLine]", 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"geomgen", "[", 
     RowBox[{"sym_", ",", " ", "i_"}], "]"}], " ", ":=", "  ", 
    RowBox[{"If", "[", 
     RowBox[{
      RowBox[{"StringMatchQ", "[", 
       RowBox[{"\"\<Hexagonal\>\"", ",", " ", "sym"}], "]"}], ",", " ", 
      RowBox[{"hexagonalconstants", "[", 
       RowBox[{"sym", ",", " ", "i"}], "]"}], ",", " ", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"StringMatchQ", "[", 
         RowBox[{"\"\<Cubic\>\"", ",", " ", "sym"}], "]"}], ",", " ", 
        RowBox[{"cubicconstants", "[", 
         RowBox[{"sym", ",", " ", "i"}], "]"}], ",", " ", 
        RowBox[{"If", "[", 
         RowBox[{
          RowBox[{"StringMatchQ", "[", 
           RowBox[{"\"\<Tetragonal\>\"", ",", " ", "sym"}], "]"}], ",", " ", 
          RowBox[{"tetragonalconstants", "[", 
           RowBox[{"sym", ",", " ", "i"}], "]"}], ",", " ", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{"StringMatchQ", "[", 
             RowBox[{"\"\<Orthorhombic\>\"", ",", " ", "sym"}], "]"}], ",", 
            " ", 
            RowBox[{"orthorhombicconstants", "[", 
             RowBox[{"sym", ",", " ", "i"}], "]"}], ",", " ", 
            RowBox[{"If", "[", 
             RowBox[{
              RowBox[{"StringMatchQ", "[", 
               RowBox[{"\"\<Monoclinic\>\"", ",", " ", "sym"}], "]"}], ",", 
              " ", 
              RowBox[{"monoclinicconstants", "[", 
               RowBox[{"sym", ",", " ", "i"}], "]"}], ",", " ", 
              RowBox[{"triclinicconstants", "[", 
               RowBox[{"sym", ",", " ", "i"}], "]"}]}], "]"}]}], "]"}]}], 
         "]"}]}], "]"}]}], "]"}]}], "\[IndentingNewLine]", 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"hkl", "[", "1", "]"}], " ", "=", " ", "\"\< h\>\""}], ";", 
    RowBox[{
     RowBox[{"hkl", "[", "2", "]"}], "=", "\"\< k\>\""}], ";", 
    RowBox[{
     RowBox[{"hkl", "[", "3", "]"}], "=", "\"\< l\>\""}], ";"}], 
   "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"hkl", "[", "1", "]"}], " ", "=", " ", 
     RowBox[{"Text", "[", 
      RowBox[{"Style", "[", 
       RowBox[{"\"\<h\>\"", ",", "Italic", ",", "16"}], "]"}], "]"}]}], " ", 
    ";", 
    RowBox[{
     RowBox[{"hkl", "[", "2", "]"}], "=", 
     RowBox[{"Text", "[", 
      RowBox[{"Style", "[", 
       RowBox[{"\"\<k\>\"", ",", "Italic", ",", "16"}], "]"}], "]"}]}], ";", 
    RowBox[{
     RowBox[{"hkl", "[", "3", "]"}], "=", 
     RowBox[{"Text", "[", 
      RowBox[{"Style", "[", 
       RowBox[{"\"\<l\>\"", ",", "Italic", ",", "16"}], "]"}], "]"}]}], ";"}],
    "\[IndentingNewLine]"}]}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.520345329701522*^9, 3.520345354282928*^9}, {
   3.520345445134594*^9, 3.520345446124757*^9}, {3.5203455877445793`*^9, 
   3.5203456027407427`*^9}, {3.5203456340000763`*^9, 3.520345635777156*^9}, {
   3.5206222607431517`*^9, 3.5206222793352423`*^9}, {3.5208708733865843`*^9, 
   3.5208709141565237`*^9}, {3.520870964329895*^9, 3.52087098573763*^9}, 
   3.520871103329442*^9, {3.520871229668806*^9, 3.5208712318166122`*^9}, {
   3.5208713012293158`*^9, 3.5208713118077173`*^9}, 3.521291051228249*^9, {
   3.521998221937213*^9, 3.521998222615354*^9}, {3.523283195963181*^9, 
   3.5232832245317097`*^9}, {3.523284418914137*^9, 3.5232844222590847`*^9}, {
   3.5232854290428333`*^9, 3.523285451013907*^9}, {3.523287969468377*^9, 
   3.523287970058106*^9}, {3.5232892433081512`*^9, 3.523289270699396*^9}, {
   3.523297523740343*^9, 3.5232979292896442`*^9}, {3.523297968373992*^9, 
   3.523297972901038*^9}, {3.523298283475073*^9, 3.523298417691011*^9}, 
   3.523298478279516*^9, {3.523375097923709*^9, 3.523375101797434*^9}, {
   3.523375178880836*^9, 3.523375308063995*^9}, {3.5233780790344753`*^9, 
   3.523378106556675*^9}, {3.523383189143952*^9, 3.523383221885398*^9}, {
   3.5237270673821287`*^9, 3.523727068129157*^9}, {3.523892406558281*^9, 
   3.523892408024521*^9}, {3.524224992888093*^9, 3.524225000920205*^9}, {
   3.524227217797722*^9, 3.52422723081634*^9}, {3.524235604037498*^9, 
   3.524235604985272*^9}, {3.5242358689912567`*^9, 3.5242358718431187`*^9}, {
   3.5242404464410057`*^9, 3.524240503666759*^9}, {3.524240640347493*^9, 
   3.524240653116647*^9}, {3.524324158875473*^9, 3.5243241650034246`*^9}, {
   3.5243242127041607`*^9, 3.524324233709236*^9}, {3.5244925469557953`*^9, 
   3.524492709018855*^9}, {3.524492766042268*^9, 3.524492796309319*^9}, 
   3.539355594410739*^9, {3.539356476724401*^9, 3.539356551581954*^9}, {
   3.540824147016211*^9, 3.5408241591972227`*^9}, {3.541761675576874*^9, 
   3.541761705029374*^9}, {3.541761752023964*^9, 3.541761814101591*^9}, {
   3.5417618626857843`*^9, 3.541761875458325*^9}, {3.5417662879828568`*^9, 
   3.5417662885623693`*^9}, 3.5417666234508963`*^9, {3.541766719772698*^9, 
   3.541766720652079*^9}, {3.541766768940741*^9, 3.541766810547619*^9}, {
   3.54176715061926*^9, 3.54176727425767*^9}, {3.541768326283493*^9, 
   3.541768363327592*^9}, {3.541831696709364*^9, 3.541831870225815*^9}, {
   3.541831929762813*^9, 3.5418319371294937`*^9}, {3.5418323260860643`*^9, 
   3.541832326417552*^9}, {3.541832380085747*^9, 3.541832380255908*^9}, {
   3.543411293030319*^9, 3.543411343536148*^9}, {3.543513421354147*^9, 
   3.5435134310167217`*^9}, {3.543664241560114*^9, 3.5436642446499557`*^9}, {
   3.544813623966604*^9, 3.544813627150247*^9}, {3.54662871972348*^9, 
   3.5466287223045683`*^9}, {3.5466306725604773`*^9, 
   3.5466306748215322`*^9}, {3.546797747400024*^9, 3.546797805354615*^9}, {
   3.546800364624387*^9, 3.546800371019947*^9}, {3.5468004264126987`*^9, 
   3.546800432240232*^9}, {3.546800479013043*^9, 3.5468004882780952`*^9}, {
   3.5468789511133623`*^9, 3.546878969278717*^9}, {3.547220590805811*^9, 
   3.547220593800427*^9}, {3.547220644214099*^9, 3.547220688663959*^9}, {
   3.547223922451652*^9, 3.5472239737604218`*^9}, {3.547224140729251*^9, 
   3.54722418172342*^9}, {3.547224219934272*^9, 3.547224238852015*^9}, {
   3.5472248708944473`*^9, 3.5472248745731077`*^9}, {3.547298611547514*^9, 
   3.547298651390222*^9}, {3.54729910496318*^9, 3.547299123401136*^9}, {
   3.5472992961002417`*^9, 3.547299298765361*^9}, {3.5474732583315277`*^9, 
   3.547473260664405*^9}, {3.547473294455212*^9, 3.5474733063480587`*^9}, {
   3.5474733423758793`*^9, 3.547473342986939*^9}, {3.547473841242738*^9, 
   3.5474738723657303`*^9}, {3.547474044348178*^9, 3.5474740491337214`*^9}, {
   3.547474104162271*^9, 3.54747410601552*^9}, {3.5474766524710207`*^9, 
   3.54747666140625*^9}, 3.547476843255755*^9, 3.547476878040268*^9, {
   3.5474779130435*^9, 3.547478021343508*^9}, {3.547478117970523*^9, 
   3.54747812606559*^9}, {3.5474784833348293`*^9, 3.547478534798716*^9}, 
   3.547478605308831*^9, {3.547478651195548*^9, 3.547478651344234*^9}, {
   3.5474787963494873`*^9, 3.5474787976611147`*^9}, {3.5474872312200127`*^9, 
   3.5474872407332*^9}, {3.5474872917297173`*^9, 3.547487291968173*^9}, {
   3.547487952024352*^9, 3.5474879576956377`*^9}, {3.547488002308816*^9, 
   3.547488011071416*^9}, 3.547555718776083*^9, {3.5475559308060226`*^9, 
   3.5475559807839746`*^9}, {3.54755716374018*^9, 3.547557166954637*^9}, {
   3.5475572517697067`*^9, 3.547557255086267*^9}, {3.5475573306317368`*^9, 
   3.547557344013089*^9}, {3.547557492677807*^9, 3.547557521018405*^9}, {
   3.5475576186801243`*^9, 3.54755762135531*^9}, {3.547557972795238*^9, 
   3.5475579987281857`*^9}, {3.5478240801353703`*^9, 
   3.5478240831354647`*^9}, {3.547824181454563*^9, 3.5478241852610683`*^9}, {
   3.5478242967797527`*^9, 3.547824298223941*^9}, {3.547824509340383*^9, 
   3.547824588135168*^9}, {3.5478246700771*^9, 3.547824672553198*^9}, {
   3.5478267562385483`*^9, 3.547826765975376*^9}, {3.5478297901144857`*^9, 
   3.547829876785911*^9}, {3.548413597736372*^9, 3.548413653620221*^9}, {
   3.548437188773756*^9, 3.548437237962121*^9}, {3.5496393703370943`*^9, 
   3.549639447560614*^9}, {3.54963948472084*^9, 3.549639967836854*^9}, {
   3.54964000221693*^9, 3.549640227101191*^9}, {3.5496402667151337`*^9, 
   3.549640393088998*^9}, {3.5496404340528803`*^9, 3.549640504180995*^9}, 
   3.5496408756248627`*^9, {3.549640924487814*^9, 3.549640929399679*^9}, 
   3.549640972771668*^9, 3.549641033066208*^9, {3.551111414068919*^9, 
   3.551111452777639*^9}, {3.608538635047089*^9, 3.608538646504038*^9}, 
   3.60853924122823*^9, {3.608539283317177*^9, 3.6085392904248943`*^9}, {
   3.608539343845817*^9, 3.608539455346201*^9}, {3.608539559980432*^9, 
   3.608539560336451*^9}, {3.610685412937892*^9, 3.610685565873434*^9}, {
   3.610685596340769*^9, 3.610685671138975*^9}, {3.610685703653096*^9, 
   3.610685758497642*^9}, {3.61068579196427*^9, 3.610685795218753*^9}, {
   3.61068582545783*^9, 3.610685837944512*^9}, {3.6106912452469673`*^9, 
   3.610691273095972*^9}, {3.613205426971253*^9, 3.613205427292589*^9}}],

Cell[BoxData[
 InterpretationBox[
  RowBox[{
   TagBox["CompiledFunction",
    "SummaryHead"], "[", 
   DynamicModuleBox[{Typeset`open$$ = False}, 
    PanelBox[
     PaneSelectorBox[{False->GridBox[{
        {
         PaneBox[
          ButtonBox[
           
           DynamicBox[FEPrivate`FrontEndResource[
            "FEBitmaps", "SquarePlusIconMedium"],
            ImageSizeCache->{12., {0., 12.}}],
           Appearance->None,
           ButtonFunction:>(Typeset`open$$ = True),
           Evaluator->Automatic,
           Method->"Preemptive"],
          Alignment->{Center, Center},
          
          ImageSize->
           Dynamic[{
            Automatic, 3.5 CurrentValue["FontCapHeight"]/AbsoluteCurrentValue[
             Magnification]}]], 
         GraphicsBox[
          {Thickness[0.038461538461538464`], 
           {FaceForm[{GrayLevel[0.93], Opacity[1.]}], 
            FilledCurveBox[{{{1, 4, 3}, {0, 1, 0}, {1, 3, 3}, {0, 1, 0}, {1, 
             3, 3}, {0, 1, 0}, {1, 3, 3}, {0, 1, 0}}}, {{{25.499999999999996`,
              2.5}, {25.499999999999996`, 1.3953100000000003`}, {
             24.604699999999998`, 0.49999999999999994`}, {23.5, 
             0.49999999999999994`}, {2.5, 0.49999999999999994`}, {
             1.3953100000000003`, 0.49999999999999994`}, {
             0.49999999999999994`, 1.3953100000000003`}, {
             0.49999999999999994`, 2.5}, {0.49999999999999994`, 23.5}, {
             0.49999999999999994`, 24.604699999999998`}, {1.3953100000000003`,
              25.499999999999996`}, {2.5, 25.499999999999996`}, {23.5, 
             25.499999999999996`}, {24.604699999999998`, 
             25.499999999999996`}, {25.499999999999996`, 
             24.604699999999998`}, {25.499999999999996`, 23.5}, {
             25.499999999999996`, 2.5}}}]}, 
           {FaceForm[{RGBColor[0.5, 0.5, 0.5], Opacity[1.]}], 
            FilledCurveBox[{{{0, 2, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 0}, {0, 
             1, 0}, {0, 1, 0}, {0, 1, 0}}}, {{{20.5426, 
             19.116799999999998`}, {16.3832, 21.876199999999997`}, {16.3832, 
             20.021499999999996`}, {6.930469999999999, 20.021499999999996`}, {
             6.930469999999999, 18.212100000000003`}, {16.3832, 
             18.212100000000003`}, {16.3832, 16.357399999999995`}, {20.5426, 
             19.116799999999998`}}}], 
            FilledCurveBox[{{{0, 2, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 0}, {0, 
             1, 0}, {0, 1, 0}, {0, 1, 0}}}, {{{5.30508, 13.8391}, {9.46445, 
             11.079700000000003`}, {9.46445, 12.933999999999997`}, {
             18.917199999999998`, 12.933999999999997`}, {18.917199999999998`, 
             14.7438}, {9.46445, 14.7438}, {9.46445, 16.598}, {5.30508, 
             13.8391}}}], 
            FilledCurveBox[{{{0, 2, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 0}, {0, 
             1, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 0}, {0,
              1, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 0}, {
             0, 1, 0}, {0, 1, 0}, {0, 1, 0}}}, CompressedData["
1:eJxTTMoPSmVmYGBgBGIRIGYC4r9qIkoPPog5zJd34+ifoeBwf6HGBfU8aYe0
2dKXhaMEHT77F2xc1CQH52elHtL/aqrg0KrArnpmjpRDvTCXYEG9gsOOYKuI
/6tlHZ5WFpRfO4qQn3ww8NOrXYpw/fNmfE3SCFCG8z8EiLwQ7lSF2w82/44y
nM937b/lmXNKDnK7FuxLZZFwMDfq/3NwgpKDccaL+Q9miDok9Mnt3x6k5FDt
mbylT0ECwk9QhOuXWfO/eIajPCq/WNYh5kh50jV+CYc1eV/nfGGShZsXte2a
OGevDNy8ZqG0W/9KpeD60cMLAIwUgfU=
             "]], 
            FilledCurveBox[{{{0, 2, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 0}, {0, 
             1, 0}, {0, 1, 0}, {0, 1, 0}}}, {{{12.82453, 5.289294374999999}, {
             11.960858124999998`, 8.29796625}, {11.080858124999999`, 
             8.29796625}, {12.417186249999999`, 4.337966249999999}, {
             13.193201874999998`, 4.337966249999999}, {14.540701874999998`, 
             8.29796625}, {13.688201874999999`, 8.29796625}, {12.82453, 
             5.289294374999999}}}], 
            FilledCurveBox[{{{0, 2, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 0}, {0, 
             1, 0}, {1, 3, 3}, {1, 3, 3}, {0, 1, 0}, {0, 1, 0}, {0, 1, 0}, {1,
              3, 3}, {1, 3, 3}, {0, 1, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 0}, {
             0, 1, 0}}}, CompressedData["
1:eJxTTMoPSmVmYGBgBGIpIGYC4qwFP+fsFjB0WFcz7fnBvSIOLFaTza6GGTjM
l3fj6J+h4GC9PHLBXXc9DH7abOnLwlGCDtPNZKaxndfH4Is8/uOrISAD53uI
GTRGxyP4O4KtIv6fR/BbFdhVz8TIOqj9FNyfdEbfIejt5Y8zXiL4h7TunbCJ
koPzweYvkXP4mfT+6PSlBnD7n25Z/mROiSGcr7S/rqPX1AiuHsaHmQfjw+zz
lubzZjYxgrsHxoe5F8aH+QfGn/B91VROQQQfZr/Ei1viF75j8mHh6eiSdevo
cUM4Hz0+AG0eosQ=
             "]]}},
          AspectRatio->1,
          Axes->False,
          Background->GrayLevel[0.93],
          Frame->True,
          FrameStyle->Directive[
            Thickness[Tiny], 
            GrayLevel[0.7]],
          FrameTicks->None,
          ImageSize->{Automatic, 
            Dynamic[
            3.5 (CurrentValue["FontCapHeight"]/AbsoluteCurrentValue[
              Magnification]), ImageSizeCache -> {45., {0., 9.}}]}], 
         GridBox[{
           {
            RowBox[{
             TagBox["\<\"Argument count: \"\>",
              "SummaryItemAnnotation"], "\[InvisibleSpace]", 
             TagBox["2",
              "SummaryItem"]}]},
           {
            RowBox[{
             TagBox["\<\"Argument types: \"\>",
              "SummaryItemAnnotation"], "\[InvisibleSpace]", 
             TagBox[
              StyleBox[
               PaneBox[
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"{", 
                   RowBox[{"_Real", ",", "1"}], "}"}], ",", 
                  RowBox[{"{", 
                   RowBox[{"_Real", ",", "1"}], "}"}]}], "}"}],
                BaselinePosition->Baseline,
                ContentPadding->False,
                FrameMargins->0,
                ImageSize->{{1, 300}, Automatic},
                StripOnInput->True],
               LineBreakWithin->False],
              "SummaryItem"]}]}
          },
          AutoDelete->False,
          
          BaseStyle->{
           ShowStringCharacters -> False, NumberMarks -> False, 
            PrintPrecision -> 3, ShowSyntaxStyles -> False},
          GridBoxAlignment->{"Columns" -> {{Left}}, "Rows" -> {{Automatic}}},
          
          GridBoxItemSize->{
           "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}},
          GridBoxSpacings->{"Columns" -> {{2}}, "Rows" -> {{Automatic}}}]}
       },
       AutoDelete->False,
       BaselinePosition->{1, 1},
       GridBoxAlignment->{"Rows" -> {{Top}}},
       GridBoxItemSize->{
        "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], True->
      GridBox[{
        {
         PaneBox[
          ButtonBox[
           
           DynamicBox[FEPrivate`FrontEndResource[
            "FEBitmaps", "SquareMinusIconMedium"]],
           Appearance->None,
           ButtonFunction:>(Typeset`open$$ = False),
           Evaluator->Automatic,
           Method->"Preemptive"],
          Alignment->{Center, Center},
          
          ImageSize->
           Dynamic[{
            Automatic, 3.5 CurrentValue["FontCapHeight"]/AbsoluteCurrentValue[
             Magnification]}]], 
         GraphicsBox[
          {Thickness[0.038461538461538464`], 
           {FaceForm[{GrayLevel[0.93], Opacity[1.]}], 
            FilledCurveBox[{{{1, 4, 3}, {0, 1, 0}, {1, 3, 3}, {0, 1, 0}, {1, 
             3, 3}, {0, 1, 0}, {1, 3, 3}, {0, 1, 0}}}, {{{25.499999999999996`,
              2.5}, {25.499999999999996`, 1.3953100000000003`}, {
             24.604699999999998`, 0.49999999999999994`}, {23.5, 
             0.49999999999999994`}, {2.5, 0.49999999999999994`}, {
             1.3953100000000003`, 0.49999999999999994`}, {
             0.49999999999999994`, 1.3953100000000003`}, {
             0.49999999999999994`, 2.5}, {0.49999999999999994`, 23.5}, {
             0.49999999999999994`, 24.604699999999998`}, {1.3953100000000003`,
              25.499999999999996`}, {2.5, 25.499999999999996`}, {23.5, 
             25.499999999999996`}, {24.604699999999998`, 
             25.499999999999996`}, {25.499999999999996`, 
             24.604699999999998`}, {25.499999999999996`, 23.5}, {
             25.499999999999996`, 2.5}}}]}, 
           {FaceForm[{RGBColor[0.5, 0.5, 0.5], Opacity[1.]}], 
            FilledCurveBox[{{{0, 2, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 0}, {0, 
             1, 0}, {0, 1, 0}, {0, 1, 0}}}, {{{20.5426, 
             19.116799999999998`}, {16.3832, 21.876199999999997`}, {16.3832, 
             20.021499999999996`}, {6.930469999999999, 20.021499999999996`}, {
             6.930469999999999, 18.212100000000003`}, {16.3832, 
             18.212100000000003`}, {16.3832, 16.357399999999995`}, {20.5426, 
             19.116799999999998`}}}], 
            FilledCurveBox[{{{0, 2, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 0}, {0, 
             1, 0}, {0, 1, 0}, {0, 1, 0}}}, {{{5.30508, 13.8391}, {9.46445, 
             11.079700000000003`}, {9.46445, 12.933999999999997`}, {
             18.917199999999998`, 12.933999999999997`}, {18.917199999999998`, 
             14.7438}, {9.46445, 14.7438}, {9.46445, 16.598}, {5.30508, 
             13.8391}}}], 
            FilledCurveBox[{{{0, 2, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 0}, {0, 
             1, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 0}, {0,
              1, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 0}, {
             0, 1, 0}, {0, 1, 0}, {0, 1, 0}}}, CompressedData["
1:eJxTTMoPSmVmYGBgBGIRIGYC4r9qIkoPPog5zJd34+ifoeBwf6HGBfU8aYe0
2dKXhaMEHT77F2xc1CQH52elHtL/aqrg0KrArnpmjpRDvTCXYEG9gsOOYKuI
/6tlHZ5WFpRfO4qQn3ww8NOrXYpw/fNmfE3SCFCG8z8EiLwQ7lSF2w82/44y
nM937b/lmXNKDnK7FuxLZZFwMDfq/3NwgpKDccaL+Q9miDok9Mnt3x6k5FDt
mbylT0ECwk9QhOuXWfO/eIajPCq/WNYh5kh50jV+CYc1eV/nfGGShZsXte2a
OGevDNy8ZqG0W/9KpeD60cMLAIwUgfU=
             "]], 
            FilledCurveBox[{{{0, 2, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 0}, {0, 
             1, 0}, {0, 1, 0}, {0, 1, 0}}}, {{{12.82453, 5.289294374999999}, {
             11.960858124999998`, 8.29796625}, {11.080858124999999`, 
             8.29796625}, {12.417186249999999`, 4.337966249999999}, {
             13.193201874999998`, 4.337966249999999}, {14.540701874999998`, 
             8.29796625}, {13.688201874999999`, 8.29796625}, {12.82453, 
             5.289294374999999}}}], 
            FilledCurveBox[{{{0, 2, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 0}, {0, 
             1, 0}, {1, 3, 3}, {1, 3, 3}, {0, 1, 0}, {0, 1, 0}, {0, 1, 0}, {1,
              3, 3}, {1, 3, 3}, {0, 1, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 0}, {
             0, 1, 0}}}, CompressedData["
1:eJxTTMoPSmVmYGBgBGIpIGYC4qwFP+fsFjB0WFcz7fnBvSIOLFaTza6GGTjM
l3fj6J+h4GC9PHLBXXc9DH7abOnLwlGCDtPNZKaxndfH4Is8/uOrISAD53uI
GTRGxyP4O4KtIv6fR/BbFdhVz8TIOqj9FNyfdEbfIejt5Y8zXiL4h7TunbCJ
koPzweYvkXP4mfT+6PSlBnD7n25Z/mROiSGcr7S/rqPX1AiuHsaHmQfjw+zz
lubzZjYxgrsHxoe5F8aH+QfGn/B91VROQQQfZr/Ei1viF75j8mHh6eiSdevo
cUM4Hz0+AG0eosQ=
             "]]}},
          AspectRatio->1,
          Axes->False,
          Background->GrayLevel[0.93],
          Frame->True,
          FrameStyle->Directive[
            Thickness[Tiny], 
            GrayLevel[0.7]],
          FrameTicks->None,
          ImageSize->{Automatic, 
            Dynamic[
            3.5 (CurrentValue["FontCapHeight"]/AbsoluteCurrentValue[
              Magnification]), ImageSizeCache -> {45., {0., 9.}}]}], 
         GridBox[{
           {
            RowBox[{
             TagBox["\<\"Argument count: \"\>",
              "SummaryItemAnnotation"], "\[InvisibleSpace]", 
             TagBox["2",
              "SummaryItem"]}]},
           {
            RowBox[{
             TagBox["\<\"Argument types: \"\>",
              "SummaryItemAnnotation"], "\[InvisibleSpace]", 
             TagBox[
              PaneBox[
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{"_Real", ",", "1"}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{"_Real", ",", "1"}], "}"}]}], "}"}],
               BaselinePosition->Baseline,
               ContentPadding->False,
               FrameMargins->0,
               ImageSize->{{1, 500}, Automatic},
               StripOnInput->True],
              "SummaryItem"]}]},
           {
            RowBox[{
             TagBox["\<\"Variables: \"\>",
              "SummaryItemAnnotation"], "\[InvisibleSpace]", 
             TagBox[
              RowBox[{"{", 
               RowBox[{"baseV", ",", "testV"}], "}"}],
              "SummaryItem"]}]},
           {
            RowBox[{
             TagBox["\<\"Expression: \"\>",
              "SummaryItemAnnotation"], "\[InvisibleSpace]", 
             TagBox[
              PaneBox[
               RowBox[{"Block", "[", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{
                  "Compile`$1", ",", "Compile`$4", ",", "Compile`$7"}], "}"}],
                  ",", 
                 RowBox[{
                  RowBox[{"Compile`$1", "=", 
                   RowBox[{
                   "baseV", "\[LeftDoubleBracket]", "1", 
                    "\[RightDoubleBracket]"}]}], ";", 
                  RowBox[{"Compile`$4", "=", 
                   RowBox[{
                   "baseV", "\[LeftDoubleBracket]", "2", 
                    "\[RightDoubleBracket]"}]}], ";", 
                  RowBox[{"Compile`$7", "=", 
                   RowBox[{
                   "baseV", "\[LeftDoubleBracket]", "3", 
                    "\[RightDoubleBracket]"}]}], ";", 
                  RowBox[{
                   RowBox[{
                    RowBox[{"Compile`$1", " ", 
                    RowBox[{
                    "testV", "\[LeftDoubleBracket]", "1", 
                    "\[RightDoubleBracket]"}]}], "+", 
                    RowBox[{"Compile`$4", " ", 
                    RowBox[{
                    "testV", "\[LeftDoubleBracket]", "2", 
                    "\[RightDoubleBracket]"}]}], "+", 
                    RowBox[{"Compile`$7", " ", 
                    RowBox[{
                    "testV", "\[LeftDoubleBracket]", "3", 
                    "\[RightDoubleBracket]"}]}]}], ">", 
                   RowBox[{"1.000000001`", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    SuperscriptBox["Compile`$1", "2"], "+", 
                    SuperscriptBox["Compile`$4", "2"], "+", 
                    SuperscriptBox["Compile`$7", "2"]}], ")"}]}]}]}]}], "]"}],
               
               BaselinePosition->Baseline,
               ContentPadding->False,
               FrameMargins->0,
               ImageSize->{{1, 500}, Automatic},
               StripOnInput->True],
              "SummaryItem"]}]}
          },
          AutoDelete->False,
          
          BaseStyle->{
           ShowStringCharacters -> False, NumberMarks -> False, 
            PrintPrecision -> 3, ShowSyntaxStyles -> False},
          GridBoxAlignment->{"Columns" -> {{Left}}, "Rows" -> {{Automatic}}},
          GridBoxItemSize->{
           "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}},
          GridBoxSpacings->{"Columns" -> {{2}}, "Rows" -> {{Automatic}}}]}
       },
       AutoDelete->False,
       BaselinePosition->{1, 1},
       GridBoxAlignment->{"Rows" -> {{Top}}},
       GridBoxItemSize->{
        "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}]}, Dynamic[
      Typeset`open$$],
      ImageSize->Automatic],
     BaselinePosition->Baseline],
    DynamicModuleValues:>{}], "]"}],
  CompiledFunction[{10, 11., 5468}, {{
     Blank[Real], 1}, {
     Blank[Real], 1}}, {{3, 1, 0}, {3, 1, 1}, {1, 0, 
   0}}, {{1.000000001, {3, 0, 7}}, {2, {2, 0, 1}}, {1, {2, 0, 0}}, {
    3, {2, 0, 2}}, {7., {3, 0, 8}}}, {1, 3, 9, 0, 
   2}, {{38, 0, 0, 0, 0, 0}, {38, 0, 0, 1, 0, 1}, {38, 0, 0, 2, 0, 2}, {38, 1,
     0, 0, 0, 3}, {16, 0, 3, 4}, {38, 1, 0, 1, 0, 3}, {16, 1, 3, 5}, {38, 1, 
    0, 2, 0, 3}, {16, 2, 3, 6}, {13, 4, 5, 6, 4}, {40, 56, 3, 0, 0, 3, 0, 
    6}, {40, 56, 3, 0, 1, 3, 0, 3}, {40, 56, 3, 0, 2, 3, 0, 5}, {13, 6, 3, 5, 
    6}, {16, 7, 6, 3}, {27, 7, 8, 4, 3, 0}, {1}}, 
   Function[{$CellContext`baseV, $CellContext`testV}, 
    Block[{Compile`$1, Compile`$4, Compile`$7}, 
     Compile`$1 = Part[$CellContext`baseV, 1]; 
     Compile`$4 = Part[$CellContext`baseV, 2]; 
     Compile`$7 = Part[$CellContext`baseV, 3]; 
     Compile`$1 Part[$CellContext`testV, 1] + 
       Compile`$4 Part[$CellContext`testV, 2] + 
       Compile`$7 Part[$CellContext`testV, 3] > 
      1.000000001 (Compile`$1^2 + Compile`$4^2 + Compile`$7^2)]], Evaluate],
  Editable->False,
  SelectWithContents->True,
  Selectable->False]], "Output",
 CellChangeTimes->{{3.5472991059530573`*^9, 3.547299135905674*^9}, 
   3.547299225956953*^9, 3.547299302359056*^9, {3.5474727266432753`*^9, 
   3.54747272994803*^9}, 3.54747279846767*^9, 3.547473261337965*^9, 
   3.5474733127226973`*^9, 3.547473344735477*^9, 3.547473877832135*^9, 
   3.5474740502990227`*^9, 3.547474107776887*^9, {3.547476662861649*^9, 
   3.547476710185033*^9}, 3.547476843908044*^9, 3.547476880947139*^9, 
   3.547478036475692*^9, 3.5474781451176167`*^9, {3.5474786089071608`*^9, 
   3.547478654930313*^9}, 3.5474787986777067`*^9, 3.547486980416423*^9, 
   3.547487244772559*^9, 3.547487293434578*^9, 3.547487958286728*^9, 
   3.5474880288668203`*^9, 3.5474888329608*^9, 3.547489536733246*^9, 
   3.547489750016077*^9, 3.547490357925378*^9, 3.547554389338797*^9, 
   3.547557354100099*^9, 3.547557534437181*^9, 3.547557622008007*^9, 
   3.547557999228956*^9, 3.5478229103480997`*^9, 3.5478240837843523`*^9, 
   3.547824186449692*^9, 3.547824298785336*^9, 3.5478245900588007`*^9, 
   3.547824677626134*^9, 3.547826333396834*^9, 3.547826519453923*^9, 
   3.547826774822206*^9, 3.548413205717266*^9, 3.548413540724642*^9, 
   3.548413659471122*^9, 3.548415106717*^9, 3.5484372734433937`*^9, {
   3.549640231457782*^9, 3.54964024351892*^9}, {3.549640802016211*^9, 
   3.549640836749839*^9}, {3.549640876534828*^9, 3.54964093478094*^9}, 
   3.549640974606023*^9, 3.549641036498678*^9, {3.5496417718110447`*^9, 
   3.549641772773183*^9}, {3.551111508486868*^9, 3.5511115097002287`*^9}, {
   3.5527772460157337`*^9, 3.5527772470619793`*^9}, 3.561539996597108*^9, 
   3.5892916456871223`*^9, {3.6085375461271763`*^9, 3.608537562450387*^9}, 
   3.6085387865424547`*^9, 3.608539298724235*^9, {3.610684745054587*^9, 
   3.6106847455572033`*^9}, 3.610685909048162*^9, {3.610686363521367*^9, 
   3.610686363986012*^9}, {3.6106871848278112`*^9, 3.610687185321024*^9}, 
   3.610691281706564*^9, {3.610692291327538*^9, 3.6106922918543377`*^9}, 
   3.610693140979814*^9, {3.610695041902598*^9, 3.610695042397809*^9}, 
   3.610695102869214*^9, {3.610697195622899*^9, 3.610697196070475*^9}, {
   3.6106988192580137`*^9, 3.6106988197591133`*^9}, {3.613205430116321*^9, 
   3.613205430478953*^9}, 3.6944397860638323`*^9}],

Cell[BoxData[
 InterpretationBox[
  RowBox[{
   TagBox["CompiledFunction",
    "SummaryHead"], "[", 
   DynamicModuleBox[{Typeset`open$$ = False}, 
    PanelBox[
     PaneSelectorBox[{False->GridBox[{
        {
         PaneBox[
          ButtonBox[
           
           DynamicBox[FEPrivate`FrontEndResource[
            "FEBitmaps", "SquarePlusIconMedium"],
            ImageSizeCache->{12., {0., 12.}}],
           Appearance->None,
           ButtonFunction:>(Typeset`open$$ = True),
           Evaluator->Automatic,
           Method->"Preemptive"],
          Alignment->{Center, Center},
          
          ImageSize->
           Dynamic[{
            Automatic, 3.5 CurrentValue["FontCapHeight"]/AbsoluteCurrentValue[
             Magnification]}]], 
         GraphicsBox[
          {Thickness[0.038461538461538464`], 
           {FaceForm[{GrayLevel[0.93], Opacity[1.]}], 
            FilledCurveBox[{{{1, 4, 3}, {0, 1, 0}, {1, 3, 3}, {0, 1, 0}, {1, 
             3, 3}, {0, 1, 0}, {1, 3, 3}, {0, 1, 0}}}, {{{25.499999999999996`,
              2.5}, {25.499999999999996`, 1.3953100000000003`}, {
             24.604699999999998`, 0.49999999999999994`}, {23.5, 
             0.49999999999999994`}, {2.5, 0.49999999999999994`}, {
             1.3953100000000003`, 0.49999999999999994`}, {
             0.49999999999999994`, 1.3953100000000003`}, {
             0.49999999999999994`, 2.5}, {0.49999999999999994`, 23.5}, {
             0.49999999999999994`, 24.604699999999998`}, {1.3953100000000003`,
              25.499999999999996`}, {2.5, 25.499999999999996`}, {23.5, 
             25.499999999999996`}, {24.604699999999998`, 
             25.499999999999996`}, {25.499999999999996`, 
             24.604699999999998`}, {25.499999999999996`, 23.5}, {
             25.499999999999996`, 2.5}}}]}, 
           {FaceForm[{RGBColor[0.5, 0.5, 0.5], Opacity[1.]}], 
            FilledCurveBox[{{{0, 2, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 0}, {0, 
             1, 0}, {0, 1, 0}, {0, 1, 0}}}, {{{20.5426, 
             19.116799999999998`}, {16.3832, 21.876199999999997`}, {16.3832, 
             20.021499999999996`}, {6.930469999999999, 20.021499999999996`}, {
             6.930469999999999, 18.212100000000003`}, {16.3832, 
             18.212100000000003`}, {16.3832, 16.357399999999995`}, {20.5426, 
             19.116799999999998`}}}], 
            FilledCurveBox[{{{0, 2, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 0}, {0, 
             1, 0}, {0, 1, 0}, {0, 1, 0}}}, {{{5.30508, 13.8391}, {9.46445, 
             11.079700000000003`}, {9.46445, 12.933999999999997`}, {
             18.917199999999998`, 12.933999999999997`}, {18.917199999999998`, 
             14.7438}, {9.46445, 14.7438}, {9.46445, 16.598}, {5.30508, 
             13.8391}}}], 
            FilledCurveBox[{{{0, 2, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 0}, {0, 
             1, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 0}, {0,
              1, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 0}, {
             0, 1, 0}, {0, 1, 0}, {0, 1, 0}}}, CompressedData["
1:eJxTTMoPSmVmYGBgBGIRIGYC4r9qIkoPPog5zJd34+ifoeBwf6HGBfU8aYe0
2dKXhaMEHT77F2xc1CQH52elHtL/aqrg0KrArnpmjpRDvTCXYEG9gsOOYKuI
/6tlHZ5WFpRfO4qQn3ww8NOrXYpw/fNmfE3SCFCG8z8EiLwQ7lSF2w82/44y
nM937b/lmXNKDnK7FuxLZZFwMDfq/3NwgpKDccaL+Q9miDok9Mnt3x6k5FDt
mbylT0ECwk9QhOuXWfO/eIajPCq/WNYh5kh50jV+CYc1eV/nfGGShZsXte2a
OGevDNy8ZqG0W/9KpeD60cMLAIwUgfU=
             "]], 
            FilledCurveBox[{{{0, 2, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 0}, {0, 
             1, 0}, {0, 1, 0}, {0, 1, 0}}}, {{{12.82453, 5.289294374999999}, {
             11.960858124999998`, 8.29796625}, {11.080858124999999`, 
             8.29796625}, {12.417186249999999`, 4.337966249999999}, {
             13.193201874999998`, 4.337966249999999}, {14.540701874999998`, 
             8.29796625}, {13.688201874999999`, 8.29796625}, {12.82453, 
             5.289294374999999}}}], 
            FilledCurveBox[{{{0, 2, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 0}, {0, 
             1, 0}, {1, 3, 3}, {1, 3, 3}, {0, 1, 0}, {0, 1, 0}, {0, 1, 0}, {1,
              3, 3}, {1, 3, 3}, {0, 1, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 0}, {
             0, 1, 0}}}, CompressedData["
1:eJxTTMoPSmVmYGBgBGIpIGYC4qwFP+fsFjB0WFcz7fnBvSIOLFaTza6GGTjM
l3fj6J+h4GC9PHLBXXc9DH7abOnLwlGCDtPNZKaxndfH4Is8/uOrISAD53uI
GTRGxyP4O4KtIv6fR/BbFdhVz8TIOqj9FNyfdEbfIejt5Y8zXiL4h7TunbCJ
koPzweYvkXP4mfT+6PSlBnD7n25Z/mROiSGcr7S/rqPX1AiuHsaHmQfjw+zz
lubzZjYxgrsHxoe5F8aH+QfGn/B91VROQQQfZr/Ei1viF75j8mHh6eiSdevo
cUM4Hz0+AG0eosQ=
             "]]}},
          AspectRatio->1,
          Axes->False,
          Background->GrayLevel[0.93],
          Frame->True,
          FrameStyle->Directive[
            Thickness[Tiny], 
            GrayLevel[0.7]],
          FrameTicks->None,
          ImageSize->{Automatic, 
            Dynamic[
            3.5 (CurrentValue["FontCapHeight"]/AbsoluteCurrentValue[
              Magnification]), ImageSizeCache -> {45., {0., 9.}}]}], 
         GridBox[{
           {
            RowBox[{
             TagBox["\<\"Argument count: \"\>",
              "SummaryItemAnnotation"], "\[InvisibleSpace]", 
             TagBox["3",
              "SummaryItem"]}]},
           {
            RowBox[{
             TagBox["\<\"Argument types: \"\>",
              "SummaryItemAnnotation"], "\[InvisibleSpace]", 
             TagBox[
              StyleBox[
               PaneBox[
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"{", 
                   RowBox[{"_Real", ",", "1"}], "}"}], ",", 
                  RowBox[{"{", 
                   RowBox[{"_Real", ",", "1"}], "}"}], ",", 
                  RowBox[{"{", 
                   RowBox[{"_Real", ",", "1"}], "}"}]}], "}"}],
                BaselinePosition->Baseline,
                ContentPadding->False,
                FrameMargins->0,
                ImageSize->{{1, 300}, Automatic},
                StripOnInput->True],
               LineBreakWithin->False],
              "SummaryItem"]}]}
          },
          AutoDelete->False,
          
          BaseStyle->{
           ShowStringCharacters -> False, NumberMarks -> False, 
            PrintPrecision -> 3, ShowSyntaxStyles -> False},
          GridBoxAlignment->{"Columns" -> {{Left}}, "Rows" -> {{Automatic}}},
          
          GridBoxItemSize->{
           "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}},
          GridBoxSpacings->{"Columns" -> {{2}}, "Rows" -> {{Automatic}}}]}
       },
       AutoDelete->False,
       BaselinePosition->{1, 1},
       GridBoxAlignment->{"Rows" -> {{Top}}},
       GridBoxItemSize->{
        "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], True->
      GridBox[{
        {
         PaneBox[
          ButtonBox[
           
           DynamicBox[FEPrivate`FrontEndResource[
            "FEBitmaps", "SquareMinusIconMedium"]],
           Appearance->None,
           ButtonFunction:>(Typeset`open$$ = False),
           Evaluator->Automatic,
           Method->"Preemptive"],
          Alignment->{Center, Center},
          
          ImageSize->
           Dynamic[{
            Automatic, 3.5 CurrentValue["FontCapHeight"]/AbsoluteCurrentValue[
             Magnification]}]], 
         GraphicsBox[
          {Thickness[0.038461538461538464`], 
           {FaceForm[{GrayLevel[0.93], Opacity[1.]}], 
            FilledCurveBox[{{{1, 4, 3}, {0, 1, 0}, {1, 3, 3}, {0, 1, 0}, {1, 
             3, 3}, {0, 1, 0}, {1, 3, 3}, {0, 1, 0}}}, {{{25.499999999999996`,
              2.5}, {25.499999999999996`, 1.3953100000000003`}, {
             24.604699999999998`, 0.49999999999999994`}, {23.5, 
             0.49999999999999994`}, {2.5, 0.49999999999999994`}, {
             1.3953100000000003`, 0.49999999999999994`}, {
             0.49999999999999994`, 1.3953100000000003`}, {
             0.49999999999999994`, 2.5}, {0.49999999999999994`, 23.5}, {
             0.49999999999999994`, 24.604699999999998`}, {1.3953100000000003`,
              25.499999999999996`}, {2.5, 25.499999999999996`}, {23.5, 
             25.499999999999996`}, {24.604699999999998`, 
             25.499999999999996`}, {25.499999999999996`, 
             24.604699999999998`}, {25.499999999999996`, 23.5}, {
             25.499999999999996`, 2.5}}}]}, 
           {FaceForm[{RGBColor[0.5, 0.5, 0.5], Opacity[1.]}], 
            FilledCurveBox[{{{0, 2, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 0}, {0, 
             1, 0}, {0, 1, 0}, {0, 1, 0}}}, {{{20.5426, 
             19.116799999999998`}, {16.3832, 21.876199999999997`}, {16.3832, 
             20.021499999999996`}, {6.930469999999999, 20.021499999999996`}, {
             6.930469999999999, 18.212100000000003`}, {16.3832, 
             18.212100000000003`}, {16.3832, 16.357399999999995`}, {20.5426, 
             19.116799999999998`}}}], 
            FilledCurveBox[{{{0, 2, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 0}, {0, 
             1, 0}, {0, 1, 0}, {0, 1, 0}}}, {{{5.30508, 13.8391}, {9.46445, 
             11.079700000000003`}, {9.46445, 12.933999999999997`}, {
             18.917199999999998`, 12.933999999999997`}, {18.917199999999998`, 
             14.7438}, {9.46445, 14.7438}, {9.46445, 16.598}, {5.30508, 
             13.8391}}}], 
            FilledCurveBox[{{{0, 2, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 0}, {0, 
             1, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 0}, {0,
              1, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 0}, {
             0, 1, 0}, {0, 1, 0}, {0, 1, 0}}}, CompressedData["
1:eJxTTMoPSmVmYGBgBGIRIGYC4r9qIkoPPog5zJd34+ifoeBwf6HGBfU8aYe0
2dKXhaMEHT77F2xc1CQH52elHtL/aqrg0KrArnpmjpRDvTCXYEG9gsOOYKuI
/6tlHZ5WFpRfO4qQn3ww8NOrXYpw/fNmfE3SCFCG8z8EiLwQ7lSF2w82/44y
nM937b/lmXNKDnK7FuxLZZFwMDfq/3NwgpKDccaL+Q9miDok9Mnt3x6k5FDt
mbylT0ECwk9QhOuXWfO/eIajPCq/WNYh5kh50jV+CYc1eV/nfGGShZsXte2a
OGevDNy8ZqG0W/9KpeD60cMLAIwUgfU=
             "]], 
            FilledCurveBox[{{{0, 2, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 0}, {0, 
             1, 0}, {0, 1, 0}, {0, 1, 0}}}, {{{12.82453, 5.289294374999999}, {
             11.960858124999998`, 8.29796625}, {11.080858124999999`, 
             8.29796625}, {12.417186249999999`, 4.337966249999999}, {
             13.193201874999998`, 4.337966249999999}, {14.540701874999998`, 
             8.29796625}, {13.688201874999999`, 8.29796625}, {12.82453, 
             5.289294374999999}}}], 
            FilledCurveBox[{{{0, 2, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 0}, {0, 
             1, 0}, {1, 3, 3}, {1, 3, 3}, {0, 1, 0}, {0, 1, 0}, {0, 1, 0}, {1,
              3, 3}, {1, 3, 3}, {0, 1, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 0}, {
             0, 1, 0}}}, CompressedData["
1:eJxTTMoPSmVmYGBgBGIpIGYC4qwFP+fsFjB0WFcz7fnBvSIOLFaTza6GGTjM
l3fj6J+h4GC9PHLBXXc9DH7abOnLwlGCDtPNZKaxndfH4Is8/uOrISAD53uI
GTRGxyP4O4KtIv6fR/BbFdhVz8TIOqj9FNyfdEbfIejt5Y8zXiL4h7TunbCJ
koPzweYvkXP4mfT+6PSlBnD7n25Z/mROiSGcr7S/rqPX1AiuHsaHmQfjw+zz
lubzZjYxgrsHxoe5F8aH+QfGn/B91VROQQQfZr/Ei1viF75j8mHh6eiSdevo
cUM4Hz0+AG0eosQ=
             "]]}},
          AspectRatio->1,
          Axes->False,
          Background->GrayLevel[0.93],
          Frame->True,
          FrameStyle->Directive[
            Thickness[Tiny], 
            GrayLevel[0.7]],
          FrameTicks->None,
          ImageSize->{Automatic, 
            Dynamic[
            3.5 (CurrentValue["FontCapHeight"]/AbsoluteCurrentValue[
              Magnification]), ImageSizeCache -> {45., {0., 9.}}]}], 
         GridBox[{
           {
            RowBox[{
             TagBox["\<\"Argument count: \"\>",
              "SummaryItemAnnotation"], "\[InvisibleSpace]", 
             TagBox["3",
              "SummaryItem"]}]},
           {
            RowBox[{
             TagBox["\<\"Argument types: \"\>",
              "SummaryItemAnnotation"], "\[InvisibleSpace]", 
             TagBox[
              PaneBox[
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{"_Real", ",", "1"}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{"_Real", ",", "1"}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{"_Real", ",", "1"}], "}"}]}], "}"}],
               BaselinePosition->Baseline,
               ContentPadding->False,
               FrameMargins->0,
               ImageSize->{{1, 500}, Automatic},
               StripOnInput->True],
              "SummaryItem"]}]},
           {
            RowBox[{
             TagBox["\<\"Variables: \"\>",
              "SummaryItemAnnotation"], "\[InvisibleSpace]", 
             TagBox[
              RowBox[{"{", 
               RowBox[{"a", ",", "b", ",", "c"}], "}"}],
              "SummaryItem"]}]},
           {
            RowBox[{
             TagBox["\<\"Expression: \"\>",
              "SummaryItemAnnotation"], "\[InvisibleSpace]", 
             TagBox[
              PaneBox[
               RowBox[{"Block", "[", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{
                  "Compile`$5", ",", "Compile`$6", ",", "Compile`$2", ",", 
                   "Compile`$3", ",", "Compile`$18", ",", "Compile`$10", ",", 
                   "Compile`$9", ",", "Compile`$52", ",", "Compile`$15", ",", 
                   "Compile`$16", ",", "Compile`$26", ",", "Compile`$28", ",",
                    "Compile`$60", ",", "Compile`$35", ",", "Compile`$39", 
                   ",", "Compile`$22", ",", "Compile`$45", ",", "Compile`$75",
                    ",", "Compile`$82"}], "}"}], ",", 
                 RowBox[{"Block", "[", 
                  RowBox[{
                   RowBox[{"{", 
                    RowBox[{"denom", "=", 
                    RowBox[{
                    RowBox[{
                    RowBox[{
                    "a", "\[LeftDoubleBracket]", "3", 
                    "\[RightDoubleBracket]"}], " ", 
                    RowBox[{
                    "b", "\[LeftDoubleBracket]", "2", 
                    "\[RightDoubleBracket]"}], " ", 
                    RowBox[{
                    "c", "\[LeftDoubleBracket]", "1", 
                    "\[RightDoubleBracket]"}]}], "-", 
                    RowBox[{
                    RowBox[{
                    "a", "\[LeftDoubleBracket]", "2", 
                    "\[RightDoubleBracket]"}], " ", 
                    RowBox[{
                    "b", "\[LeftDoubleBracket]", "3", 
                    "\[RightDoubleBracket]"}], " ", 
                    RowBox[{
                    "c", "\[LeftDoubleBracket]", "1", 
                    "\[RightDoubleBracket]"}]}], "-", 
                    RowBox[{
                    RowBox[{
                    "a", "\[LeftDoubleBracket]", "3", 
                    "\[RightDoubleBracket]"}], " ", 
                    RowBox[{
                    "b", "\[LeftDoubleBracket]", "1", 
                    "\[RightDoubleBracket]"}], " ", 
                    RowBox[{
                    "c", "\[LeftDoubleBracket]", "2", 
                    "\[RightDoubleBracket]"}]}], "+", 
                    RowBox[{
                    RowBox[{
                    "a", "\[LeftDoubleBracket]", "1", 
                    "\[RightDoubleBracket]"}], " ", 
                    RowBox[{
                    "b", "\[LeftDoubleBracket]", "3", 
                    "\[RightDoubleBracket]"}], " ", 
                    RowBox[{
                    "c", "\[LeftDoubleBracket]", "2", 
                    "\[RightDoubleBracket]"}]}], "+", 
                    RowBox[{
                    RowBox[{
                    "a", "\[LeftDoubleBracket]", "2", 
                    "\[RightDoubleBracket]"}], " ", 
                    RowBox[{
                    "b", "\[LeftDoubleBracket]", "1", 
                    "\[RightDoubleBracket]"}], " ", 
                    RowBox[{
                    "c", "\[LeftDoubleBracket]", "3", 
                    "\[RightDoubleBracket]"}]}], "-", 
                    RowBox[{
                    RowBox[{
                    "a", "\[LeftDoubleBracket]", "1", 
                    "\[RightDoubleBracket]"}], " ", 
                    RowBox[{
                    "b", "\[LeftDoubleBracket]", "2", 
                    "\[RightDoubleBracket]"}], " ", 
                    RowBox[{
                    "c", "\[LeftDoubleBracket]", "3", 
                    "\[RightDoubleBracket]"}]}]}]}], "}"}], ",", 
                   RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"Abs", "[", "denom", "]"}], "\[LessEqual]", 
                    "0.00001`"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"10000.`", ",", "10000.`", ",", "10000.`"}], 
                    "}"}], ",", 
                    RowBox[{
                    RowBox[{"Compile`$5", "=", 
                    RowBox[{
                    "c", "\[LeftDoubleBracket]", "1", 
                    "\[RightDoubleBracket]"}]}], ";", 
                    RowBox[{"Compile`$6", "=", 
                    SuperscriptBox["Compile`$5", "2"]}], ";", 
                    RowBox[{"Compile`$2", "=", 
                    RowBox[{
                    "a", "\[LeftDoubleBracket]", "3", 
                    "\[RightDoubleBracket]"}]}], ";", 
                    RowBox[{"Compile`$3", "=", 
                    RowBox[{
                    "b", "\[LeftDoubleBracket]", "2", 
                    "\[RightDoubleBracket]"}]}], ";", 
                    RowBox[{"Compile`$18", "=", 
                    RowBox[{
                    "c", "\[LeftDoubleBracket]", "2", 
                    "\[RightDoubleBracket]"}]}], ";", 
                    RowBox[{"Compile`$10", "=", 
                    RowBox[{
                    "b", "\[LeftDoubleBracket]", "3", 
                    "\[RightDoubleBracket]"}]}], ";", 
                    RowBox[{"Compile`$9", "=", 
                    RowBox[{
                    "a", "\[LeftDoubleBracket]", "2", 
                    "\[RightDoubleBracket]"}]}], ";", 
                    RowBox[{"Compile`$52", "=", 
                    SuperscriptBox["Compile`$18", "2"]}], ";", 
                    RowBox[{"Compile`$15", "=", 
                    RowBox[{
                    "b", "\[LeftDoubleBracket]", "1", 
                    "\[RightDoubleBracket]"}]}], ";", 
                    RowBox[{"Compile`$16", "=", 
                    SuperscriptBox["Compile`$15", "2"]}], ";", 
                    RowBox[{"Compile`$26", "=", 
                    RowBox[{
                    "a", "\[LeftDoubleBracket]", "1", 
                    "\[RightDoubleBracket]"}]}], ";", 
                    RowBox[{"Compile`$28", "=", 
                    SuperscriptBox["Compile`$26", "2"]}], ";", 
                    RowBox[{"Compile`$60", "=", 
                    RowBox[{
                    "c", "\[LeftDoubleBracket]", "3", 
                    "\[RightDoubleBracket]"}]}], ";", 
                    RowBox[{"Compile`$35", "=", 
                    SuperscriptBox["Compile`$9", "2"]}], ";", 
                    RowBox[{"Compile`$39", "=", 
                    SuperscriptBox["Compile`$2", "2"]}], ";", 
                    RowBox[{"Compile`$22", "=", 
                    SuperscriptBox["Compile`$3", "2"]}], ";", 
                    RowBox[{"Compile`$45", "=", 
                    SuperscriptBox["Compile`$10", "2"]}], ";", 
                    RowBox[{"Compile`$75", "=", 
                    SuperscriptBox["Compile`$60", "2"]}], ";", 
                    RowBox[{"Compile`$82", "=", 
                    FractionBox["1", "denom"]}], ";", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    "Compile`$2", " ", "Compile`$3", " ", "Compile`$6"}], "-", 
                    RowBox[{
                    "Compile`$9", " ", "Compile`$10", " ", "Compile`$6"}], 
                    "-", 
                    RowBox[{
                    "Compile`$2", " ", "Compile`$16", " ", "Compile`$18"}], 
                    "-", 
                    RowBox[{
                    "Compile`$2", " ", "Compile`$22", " ", "Compile`$18"}], 
                    "+", 
                    RowBox[{
                    "Compile`$28", " ", "Compile`$10", " ", "Compile`$18"}], 
                    "+", 
                    RowBox[{
                    "Compile`$35", " ", "Compile`$10", " ", "Compile`$18"}], 
                    "+", 
                    RowBox[{
                    "Compile`$39", " ", "Compile`$10", " ", "Compile`$18"}], 
                    "-", 
                    RowBox[{
                    "Compile`$2", " ", "Compile`$45", " ", "Compile`$18"}], 
                    "+", 
                    RowBox[{
                    "Compile`$2", " ", "Compile`$3", " ", "Compile`$52"}], 
                    "-", 
                    RowBox[{
                    "Compile`$9", " ", "Compile`$10", " ", "Compile`$52"}], 
                    "+", 
                    RowBox[{
                    "Compile`$9", " ", "Compile`$16", " ", "Compile`$60"}], 
                    "-", 
                    RowBox[{
                    "Compile`$28", " ", "Compile`$3", " ", "Compile`$60"}], 
                    "-", 
                    RowBox[{
                    "Compile`$35", " ", "Compile`$3", " ", "Compile`$60"}], 
                    "-", 
                    RowBox[{
                    "Compile`$39", " ", "Compile`$3", " ", "Compile`$60"}], 
                    "+", 
                    RowBox[{
                    "Compile`$9", " ", "Compile`$22", " ", "Compile`$60"}], 
                    "+", 
                    RowBox[{
                    "Compile`$9", " ", "Compile`$45", " ", "Compile`$60"}], 
                    "+", 
                    RowBox[{
                    "Compile`$2", " ", "Compile`$3", " ", "Compile`$75"}], 
                    "-", 
                    RowBox[{
                    "Compile`$9", " ", "Compile`$10", " ", "Compile`$75"}]}], 
                    ")"}], " ", "Compile`$82"}], ",", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    "Compile`$2", " ", "Compile`$16", " ", "Compile`$5"}], 
                    "+", 
                    RowBox[{"Compile`$2", " ", "Compile`$22", " ", 
                    "Compile`$5"}], "-", 
                    RowBox[{
                    "Compile`$28", " ", "Compile`$10", " ", "Compile`$5"}], 
                    "-", 
                    RowBox[{
                    "Compile`$35", " ", "Compile`$10", " ", "Compile`$5"}], 
                    "-", 
                    RowBox[{
                    "Compile`$39", " ", "Compile`$10", " ", "Compile`$5"}], 
                    "+", 
                    RowBox[{
                    "Compile`$2", " ", "Compile`$45", " ", "Compile`$5"}], 
                    "-", 
                    RowBox[{
                    "Compile`$2", " ", "Compile`$15", " ", "Compile`$6"}], 
                    "+", 
                    RowBox[{
                    "Compile`$26", " ", "Compile`$10", " ", "Compile`$6"}], 
                    "-", 
                    RowBox[{
                    "Compile`$2", " ", "Compile`$15", " ", "Compile`$52"}], 
                    "+", 
                    RowBox[{
                    "Compile`$26", " ", "Compile`$10", " ", "Compile`$52"}], 
                    "+", 
                    RowBox[{
                    "Compile`$28", " ", "Compile`$15", " ", "Compile`$60"}], 
                    "+", 
                    RowBox[{
                    "Compile`$35", " ", "Compile`$15", " ", "Compile`$60"}], 
                    "+", 
                    RowBox[{
                    "Compile`$39", " ", "Compile`$15", " ", "Compile`$60"}], 
                    "-", 
                    RowBox[{
                    "Compile`$26", " ", "Compile`$16", " ", "Compile`$60"}], 
                    "-", 
                    RowBox[{
                    "Compile`$26", " ", "Compile`$22", " ", "Compile`$60"}], 
                    "-", 
                    RowBox[{
                    "Compile`$26", " ", "Compile`$45", " ", "Compile`$60"}], 
                    "-", 
                    RowBox[{
                    "Compile`$2", " ", "Compile`$15", " ", "Compile`$75"}], 
                    "+", 
                    RowBox[{
                    "Compile`$26", " ", "Compile`$10", " ", "Compile`$75"}]}],
                     ")"}], " ", "Compile`$82"}], ",", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", "Compile`$9"}], " ", "Compile`$16", " ", 
                    "Compile`$5"}], "+", 
                    RowBox[{
                    "Compile`$28", " ", "Compile`$3", " ", "Compile`$5"}], 
                    "+", 
                    RowBox[{"Compile`$35", " ", "Compile`$3", " ", 
                    "Compile`$5"}], "+", 
                    RowBox[{
                    "Compile`$39", " ", "Compile`$3", " ", "Compile`$5"}], 
                    "-", 
                    RowBox[{
                    "Compile`$9", " ", "Compile`$22", " ", "Compile`$5"}], 
                    "-", 
                    RowBox[{
                    "Compile`$9", " ", "Compile`$45", " ", "Compile`$5"}], 
                    "+", 
                    RowBox[{
                    "Compile`$9", " ", "Compile`$15", " ", "Compile`$6"}], 
                    "-", 
                    RowBox[{
                    "Compile`$26", " ", "Compile`$3", " ", "Compile`$6"}], 
                    "-", 
                    RowBox[{
                    "Compile`$28", " ", "Compile`$15", " ", "Compile`$18"}], 
                    "-", 
                    RowBox[{
                    "Compile`$35", " ", "Compile`$15", " ", "Compile`$18"}], 
                    "-", 
                    RowBox[{
                    "Compile`$39", " ", "Compile`$15", " ", "Compile`$18"}], 
                    "+", 
                    RowBox[{
                    "Compile`$26", " ", "Compile`$16", " ", "Compile`$18"}], 
                    "+", 
                    RowBox[{
                    "Compile`$26", " ", "Compile`$22", " ", "Compile`$18"}], 
                    "+", 
                    RowBox[{
                    "Compile`$26", " ", "Compile`$45", " ", "Compile`$18"}], 
                    "+", 
                    RowBox[{
                    "Compile`$9", " ", "Compile`$15", " ", "Compile`$52"}], 
                    "-", 
                    RowBox[{
                    "Compile`$26", " ", "Compile`$3", " ", "Compile`$52"}], 
                    "+", 
                    RowBox[{
                    "Compile`$9", " ", "Compile`$15", " ", "Compile`$75"}], 
                    "-", 
                    RowBox[{
                    "Compile`$26", " ", "Compile`$3", " ", "Compile`$75"}]}], 
                    ")"}], " ", "Compile`$82"}]}], "}"}]}]}], "]"}]}], 
                  "]"}]}], "]"}],
               BaselinePosition->Baseline,
               ContentPadding->False,
               FrameMargins->0,
               ImageSize->{{1, 500}, Automatic},
               StripOnInput->True],
              "SummaryItem"]}]}
          },
          AutoDelete->False,
          
          BaseStyle->{
           ShowStringCharacters -> False, NumberMarks -> False, 
            PrintPrecision -> 3, ShowSyntaxStyles -> False},
          GridBoxAlignment->{"Columns" -> {{Left}}, "Rows" -> {{Automatic}}},
          
          GridBoxItemSize->{
           "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}},
          GridBoxSpacings->{"Columns" -> {{2}}, "Rows" -> {{Automatic}}}]}
       },
       AutoDelete->False,
       BaselinePosition->{1, 1},
       GridBoxAlignment->{"Rows" -> {{Top}}},
       GridBoxItemSize->{
        "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}]}, Dynamic[
      Typeset`open$$],
      ImageSize->Automatic],
     BaselinePosition->Baseline],
    DynamicModuleValues:>{}], "]"}],
  CompiledFunction[{10, 11., 5468}, {{
     Blank[Real], 1}, {
     Blank[Real], 1}, {
     Blank[Real], 1}}, {{3, 1, 0}, {3, 1, 1}, {3, 1, 2}, {3, 1, 
   5}}, {{{10000., 10000., 10000.}, {3, 1, 3}}, {2, {2, 0, 1}}, {
    1, {2, 0, 2}}, {3, {2, 0, 0}}, {7., {3, 0, 9}}, {0.00001, {3, 0, 8}}}, {1,
    3, 43, 0, 
   6}, {{38, 0, 0, 0, 0, 0}, {38, 1, 0, 1, 0, 1}, {38, 2, 0, 2, 0, 2}, {16, 0,
     1, 2, 0}, {38, 0, 0, 1, 0, 1}, {38, 1, 0, 0, 0, 2}, {38, 2, 0, 2, 0, 
    3}, {16, 1, 2, 3, 1}, {19, 1, 2}, {38, 0, 0, 0, 0, 1}, {38, 1, 0, 2, 0, 
    3}, {38, 2, 0, 1, 0, 4}, {16, 1, 3, 4, 1}, {19, 1, 3}, {38, 0, 0, 2, 0, 
    1}, {38, 1, 0, 0, 0, 4}, {38, 2, 0, 1, 0, 5}, {16, 1, 4, 5, 1}, {38, 0, 0,
     1, 0, 4}, {38, 1, 0, 2, 0, 5}, {38, 2, 0, 0, 0, 6}, {16, 4, 5, 6, 4}, {
    38, 0, 0, 2, 0, 5}, {38, 1, 0, 1, 0, 6}, {38, 2, 0, 0, 0, 7}, {16, 5, 6, 
    7, 5}, {19, 5, 6}, {13, 0, 2, 3, 1, 4, 6, 0}, {40, 38, 3, 0, 0, 3, 0, 
    2}, {27, 4, 9, 2, 8, 0}, {2, 0, 3}, {
    42, "CopyTensor", 3, 1, 3, 3, 1, 5}, {3, 109}, {38, 2, 0, 2, 0, 2}, {40, 
    56, 3, 0, 2, 3, 0, 4}, {38, 0, 0, 0, 0, 6}, {38, 1, 0, 1, 0, 5}, {38, 2, 
    0, 1, 0, 7}, {38, 1, 0, 0, 0, 3}, {38, 0, 0, 1, 0, 1}, {40, 56, 3, 0, 7, 
    3, 0, 10}, {38, 1, 0, 2, 0, 11}, {40, 56, 3, 0, 11, 3, 0, 12}, {38, 0, 0, 
    2, 0, 13}, {40, 56, 3, 0, 13, 3, 0, 14}, {38, 2, 0, 0, 0, 15}, {40, 56, 3,
     0, 1, 3, 0, 16}, {40, 56, 3, 0, 6, 3, 0, 17}, {40, 56, 3, 0, 5, 3, 0, 
    18}, {40, 56, 3, 0, 3, 3, 0, 19}, {40, 56, 3, 0, 15, 3, 0, 20}, {40, 60, 
    3, 0, 0, 3, 0, 21}, {16, 6, 5, 4, 22}, {16, 1, 3, 4, 23}, {19, 23, 24}, {
    16, 6, 12, 7, 23}, {19, 23, 25}, {16, 6, 18, 7, 23}, {19, 23, 26}, {16, 
    14, 3, 7, 23}, {16, 16, 3, 7, 27}, {16, 17, 3, 7, 28}, {16, 6, 19, 7, 
    29}, {19, 29, 30}, {16, 6, 5, 10, 29}, {16, 1, 3, 10, 31}, {19, 31, 32}, {
    16, 1, 12, 15, 31}, {16, 14, 5, 15, 33}, {19, 33, 34}, {16, 16, 5, 15, 
    33}, {19, 33, 35}, {16, 17, 5, 15, 33}, {19, 33, 36}, {16, 1, 18, 15, 
    33}, {16, 1, 19, 15, 37}, {16, 6, 5, 20, 38}, {16, 1, 3, 20, 39}, {19, 39,
     40}, {13, 22, 24, 25, 26, 23, 27, 28, 30, 29, 32, 31, 34, 35, 36, 33, 37,
     38, 40, 22}, {16, 22, 21, 22}, {16, 6, 12, 2, 24}, {16, 6, 18, 2, 25}, {
    16, 14, 3, 2, 26}, {19, 26, 23}, {16, 16, 3, 2, 26}, {19, 26, 27}, {16, 
    17, 3, 2, 26}, {19, 26, 28}, {16, 6, 19, 2, 26}, {16, 6, 11, 4, 30}, {19, 
    30, 29}, {16, 13, 3, 4, 30}, {16, 6, 11, 10, 32}, {19, 32, 31}, {16, 13, 
    3, 10, 32}, {16, 14, 11, 15, 34}, {16, 16, 11, 15, 35}, {16, 17, 11, 15, 
    36}, {16, 13, 12, 15, 33}, {19, 33, 37}, {16, 13, 18, 15, 33}, {19, 33, 
    38}, {16, 13, 19, 15, 33}, {19, 33, 40}, {16, 6, 11, 20, 33}, {19, 33, 
    39}, {16, 13, 3, 20, 33}, {13, 24, 25, 23, 27, 28, 26, 29, 30, 31, 32, 34,
     35, 36, 37, 38, 40, 39, 33, 24}, {16, 24, 21, 24}, {19, 1, 25}, {16, 25, 
    12, 2, 25}, {16, 14, 5, 2, 23}, {16, 16, 5, 2, 27}, {16, 17, 5, 2, 28}, {
    16, 1, 18, 2, 26}, {19, 26, 29}, {16, 1, 19, 2, 26}, {19, 26, 30}, {16, 1,
     11, 4, 26}, {16, 13, 5, 4, 31}, {19, 31, 32}, {16, 14, 11, 7, 31}, {19, 
    31, 34}, {16, 16, 11, 7, 31}, {19, 31, 35}, {16, 17, 11, 7, 31}, {19, 31, 
    36}, {16, 13, 12, 7, 31}, {16, 13, 18, 7, 37}, {16, 13, 19, 7, 38}, {16, 
    1, 11, 10, 40}, {16, 13, 5, 10, 39}, {19, 39, 33}, {16, 1, 11, 20, 39}, {
    16, 13, 5, 20, 41}, {19, 41, 42}, {13, 25, 23, 27, 28, 29, 30, 26, 32, 34,
     35, 36, 31, 37, 38, 40, 33, 39, 42, 25}, {16, 25, 21, 25}, {34, 1, 3, 22,
     24, 25, 3, 4}, {42, "CopyTensor", 3, 1, 4, 3, 1, 5}, {1}}, 
   Function[{$CellContext`a, $CellContext`b, $CellContext`c}, 
    Block[{
     Compile`$5, Compile`$6, Compile`$2, Compile`$3, Compile`$18, Compile`$10,
       Compile`$9, Compile`$52, Compile`$15, Compile`$16, Compile`$26, 
      Compile`$28, Compile`$60, Compile`$35, Compile`$39, Compile`$22, 
      Compile`$45, Compile`$75, Compile`$82}, 
     Block[{$CellContext`denom = 
       Part[$CellContext`a, 3] Part[$CellContext`b, 2] 
         Part[$CellContext`c, 1] - Part[$CellContext`a, 2] 
        Part[$CellContext`b, 3] Part[$CellContext`c, 1] - 
        Part[$CellContext`a, 3] Part[$CellContext`b, 1] 
        Part[$CellContext`c, 2] + 
        Part[$CellContext`a, 1] Part[$CellContext`b, 3] 
         Part[$CellContext`c, 2] + 
        Part[$CellContext`a, 2] Part[$CellContext`b, 1] 
         Part[$CellContext`c, 3] - Part[$CellContext`a, 1] 
        Part[$CellContext`b, 2] Part[$CellContext`c, 3]}, 
      If[Abs[$CellContext`denom] <= 0.00001, {10000., 10000., 10000.}, 
       Compile`$5 = Part[$CellContext`c, 1]; Compile`$6 = Compile`$5^2; 
       Compile`$2 = Part[$CellContext`a, 3]; 
       Compile`$3 = Part[$CellContext`b, 2]; 
       Compile`$18 = Part[$CellContext`c, 2]; 
       Compile`$10 = Part[$CellContext`b, 3]; 
       Compile`$9 = Part[$CellContext`a, 2]; Compile`$52 = Compile`$18^2; 
       Compile`$15 = Part[$CellContext`b, 1]; Compile`$16 = Compile`$15^2; 
       Compile`$26 = Part[$CellContext`a, 1]; Compile`$28 = Compile`$26^2; 
       Compile`$60 = Part[$CellContext`c, 3]; Compile`$35 = Compile`$9^2; 
       Compile`$39 = Compile`$2^2; Compile`$22 = Compile`$3^2; 
       Compile`$45 = Compile`$10^2; Compile`$75 = Compile`$60^2; 
       Compile`$82 = $CellContext`denom^(-1); {(
          Compile`$2 Compile`$3 Compile`$6 - Compile`$9 Compile`$10 
          Compile`$6 - Compile`$2 Compile`$16 Compile`$18 - Compile`$2 
          Compile`$22 Compile`$18 + Compile`$28 Compile`$10 Compile`$18 + 
          Compile`$35 Compile`$10 Compile`$18 + 
          Compile`$39 Compile`$10 Compile`$18 - Compile`$2 Compile`$45 
          Compile`$18 + Compile`$2 Compile`$3 Compile`$52 - Compile`$9 
          Compile`$10 Compile`$52 + Compile`$9 Compile`$16 Compile`$60 - 
          Compile`$28 Compile`$3 Compile`$60 - Compile`$35 Compile`$3 
          Compile`$60 - Compile`$39 Compile`$3 Compile`$60 + 
          Compile`$9 Compile`$22 Compile`$60 + 
          Compile`$9 Compile`$45 Compile`$60 + 
          Compile`$2 Compile`$3 Compile`$75 - Compile`$9 Compile`$10 
          Compile`$75) 
         Compile`$82, (Compile`$2 Compile`$16 Compile`$5 + 
          Compile`$2 Compile`$22 Compile`$5 - Compile`$28 Compile`$10 
          Compile`$5 - Compile`$35 Compile`$10 Compile`$5 - Compile`$39 
          Compile`$10 Compile`$5 + Compile`$2 Compile`$45 Compile`$5 - 
          Compile`$2 Compile`$15 Compile`$6 + 
          Compile`$26 Compile`$10 Compile`$6 - Compile`$2 Compile`$15 
          Compile`$52 + Compile`$26 Compile`$10 Compile`$52 + 
          Compile`$28 Compile`$15 Compile`$60 + 
          Compile`$35 Compile`$15 Compile`$60 + 
          Compile`$39 Compile`$15 Compile`$60 - Compile`$26 Compile`$16 
          Compile`$60 - Compile`$26 Compile`$22 Compile`$60 - Compile`$26 
          Compile`$45 Compile`$60 - Compile`$2 Compile`$15 Compile`$75 + 
          Compile`$26 Compile`$10 Compile`$75) 
         Compile`$82, ((-Compile`$9) Compile`$16 Compile`$5 + 
          Compile`$28 Compile`$3 Compile`$5 + 
          Compile`$35 Compile`$3 Compile`$5 + 
          Compile`$39 Compile`$3 Compile`$5 - Compile`$9 Compile`$22 
          Compile`$5 - Compile`$9 Compile`$45 Compile`$5 + 
          Compile`$9 Compile`$15 Compile`$6 - Compile`$26 Compile`$3 
          Compile`$6 - Compile`$28 Compile`$15 Compile`$18 - Compile`$35 
          Compile`$15 Compile`$18 - Compile`$39 Compile`$15 Compile`$18 + 
          Compile`$26 Compile`$16 Compile`$18 + 
          Compile`$26 Compile`$22 Compile`$18 + 
          Compile`$26 Compile`$45 Compile`$18 + 
          Compile`$9 Compile`$15 Compile`$52 - Compile`$26 Compile`$3 
          Compile`$52 + Compile`$9 Compile`$15 Compile`$75 - Compile`$26 
          Compile`$3 Compile`$75) Compile`$82}]]]], Evaluate],
  Editable->False,
  SelectWithContents->True,
  Selectable->False]], "Output",
 CellChangeTimes->{{3.5472991059530573`*^9, 3.547299135905674*^9}, 
   3.547299225956953*^9, 3.547299302359056*^9, {3.5474727266432753`*^9, 
   3.54747272994803*^9}, 3.54747279846767*^9, 3.547473261337965*^9, 
   3.5474733127226973`*^9, 3.547473344735477*^9, 3.547473877832135*^9, 
   3.5474740502990227`*^9, 3.547474107776887*^9, {3.547476662861649*^9, 
   3.547476710185033*^9}, 3.547476843908044*^9, 3.547476880947139*^9, 
   3.547478036475692*^9, 3.5474781451176167`*^9, {3.5474786089071608`*^9, 
   3.547478654930313*^9}, 3.5474787986777067`*^9, 3.547486980416423*^9, 
   3.547487244772559*^9, 3.547487293434578*^9, 3.547487958286728*^9, 
   3.5474880288668203`*^9, 3.5474888329608*^9, 3.547489536733246*^9, 
   3.547489750016077*^9, 3.547490357925378*^9, 3.547554389338797*^9, 
   3.547557354100099*^9, 3.547557534437181*^9, 3.547557622008007*^9, 
   3.547557999228956*^9, 3.5478229103480997`*^9, 3.5478240837843523`*^9, 
   3.547824186449692*^9, 3.547824298785336*^9, 3.5478245900588007`*^9, 
   3.547824677626134*^9, 3.547826333396834*^9, 3.547826519453923*^9, 
   3.547826774822206*^9, 3.548413205717266*^9, 3.548413540724642*^9, 
   3.548413659471122*^9, 3.548415106717*^9, 3.5484372734433937`*^9, {
   3.549640231457782*^9, 3.54964024351892*^9}, {3.549640802016211*^9, 
   3.549640836749839*^9}, {3.549640876534828*^9, 3.54964093478094*^9}, 
   3.549640974606023*^9, 3.549641036498678*^9, {3.5496417718110447`*^9, 
   3.549641772773183*^9}, {3.551111508486868*^9, 3.5511115097002287`*^9}, {
   3.5527772460157337`*^9, 3.5527772470619793`*^9}, 3.561539996597108*^9, 
   3.5892916456871223`*^9, {3.6085375461271763`*^9, 3.608537562450387*^9}, 
   3.6085387865424547`*^9, 3.608539298724235*^9, {3.610684745054587*^9, 
   3.6106847455572033`*^9}, 3.610685909048162*^9, {3.610686363521367*^9, 
   3.610686363986012*^9}, {3.6106871848278112`*^9, 3.610687185321024*^9}, 
   3.610691281706564*^9, {3.610692291327538*^9, 3.6106922918543377`*^9}, 
   3.610693140979814*^9, {3.610695041902598*^9, 3.610695042397809*^9}, 
   3.610695102869214*^9, {3.610697195622899*^9, 3.610697196070475*^9}, {
   3.6106988192580137`*^9, 3.6106988197591133`*^9}, {3.613205430116321*^9, 
   3.613205430478953*^9}, 3.6944397860847063`*^9}]
}, Open  ]],

Cell[BoxData[{
 RowBox[{
  RowBox[{"Clear", "[", "doubleWinter", "]"}], 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"doubleWinter", "[", "argument_", "]"}], " ", ":=", " ", 
  RowBox[{"Module", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
     "gbplane", ",", " ", "degall", ",", " ", "axisall", ",", " ", "rot", ",",
       " ", "norms1", ",", " ", "ds1", ",", " ", "colors1", ",", " ", 
      "symstring1", ",", " ", "geometry1", ",", " ", "showaxes1", ",", " ", 
      "axes1", ",", " ", "vp1", ",", " ", "vv1", ",", " ", "sym1", ",", " ", 
      "aa1", ",", " ", "bb1", ",", " ", "cc1", ",", " ", "\[Alpha]\[Alpha]1", 
      ",", " ", "\[Beta]\[Beta]1", ",", " ", "\[Gamma]\[Gamma]1", ",", " ", 
      "avect1", ",", " ", "bvect1", ",", " ", "cvect1", ",", " ", 
      "cartesian1", ",", " ", "points1", ",", " ", "normsxyz1", ",", " ", 
      "symop1", ",", " ", "dmult1", ",", " ", "gams1", ",", " ", 
      "eliminated1", ",", " ", "surviving1", ",", " ", "cols1", ",", " ", 
      "newGsPre1", ",", " ", "newG1s", ",", " ", "verts1", ",", " ", 
      "vandps1", ",", " ", "vol1", ",", "norms2", ",", " ", "ds2", ",", " ", 
      "colors2", ",", " ", "symstring2", ",", " ", "geometry2", ",", " ", 
      "showaxes2", ",", " ", "axes2", ",", " ", "vp2", ",", " ", "vv2", ",", 
      " ", "sym2", ",", " ", "aa2", ",", " ", "bb2", ",", " ", "cc2", ",", 
      " ", "\[Alpha]\[Alpha]2", ",", " ", "\[Beta]\[Beta]2", ",", " ", 
      "\[Gamma]\[Gamma]2", ",", " ", "avect2", ",", " ", "bvect2", ",", " ", 
      "cvect2", ",", " ", "cartesian2", ",", " ", "points2", ",", " ", 
      "normsxyz2", ",", " ", "symop2", ",", " ", "dmult2", ",", " ", "gams2", 
      ",", " ", "eliminated2", ",", " ", "surviving2", ",", " ", "cols2", ",",
       " ", "newGsPre2", ",", " ", "newG2s", ",", " ", "verts2", ",", " ", 
      "vandps2", ",", " ", "vol2", ",", " ", "eu1", ",", " ", "eu2", ",", " ",
       "conv", ",", " ", "sensitiv", ",", " ", "opacityr", ",", "showperim", 
      ",", " ", "perimsize", ",", " ", "showgbr", ",", " ", "gbsizer", ",", 
      " ", "axessizer", ",", " ", "vpr", ",", " ", "vvr", ",", " ", "ggb", 
      ",", " ", "finalwnorms1", ",", " ", "finalwnorms2", ",", " ", "rotate1",
       ",", " ", "rotate2", ",", " ", "shift1", ",", " ", "shift2", ",", " ", 
      "rotwulff1", ",", " ", "rotwulff2", ",", " ", "shiftwulff1", ",", " ", 
      "shiftwulff2", ",", "full1", ",", " ", "full2", ",", " ", "half1", ",", 
      " ", "half2", ",", " ", "halfn1", ",", " ", "halfn2", ",", " ", 
      "color1", ",", " ", "color2", ",", " ", "clean1", ",", " ", "clean2", 
      ",", " ", "wnormsa", ",", " ", "colorsa", ",", " ", "eliminateda", ",", 
      " ", "survivinga", ",", " ", "cols", ",", " ", "newGsa", ",", " ", 
      "vertsa", ",", " ", "vertsAndParents", ",", " ", "vol", ",", " ", 
      "gams", ",", " ", "verts", ",", " ", "vandps", ",", " ", "switch", ",", 
      " ", "borders", ",", " ", "possibleEdges", ",", " ", "edges", ",", " ", 
      "per", ",", " ", "temp", ",", " ", "next", ",", " ", "ord", ",", " ", 
      "fin", ",", " ", "bord", ",", " ", "perimeterverts", ",", "offset", ",",
       " ", "stepsize", ",", " ", "max", ",", " ", "midptcutoff", ",", " ", 
      "midpts", ",", " ", "refined", ",", " ", "perimeterpos", ",", " ", 
      "perimeter", ",", " ", "scale", ",", " ", "neighbors", ",", " ", 
      "gbnodesl2", ",", " ", "gbnodesl3", ",", " ", "gbnodesl4", ",", " ", 
      "gbnodesl5", ",", " ", "gbnodesl6", ",", " ", "gbnodesl7", ",", " ", 
      "gbnodesl8", ",", " ", "gbnodesl9", ",", " ", "gbnodes", ",", " ", 
      "evoln", ",", " ", "gbtris", ",", " ", "wrinklearea", ",", " ", 
      "flatarea", ",", " ", "newarea", ",", " ", "newverts1", ",", " ", 
      "polys1", ",", " ", "wulffshape1", ",", " ", "plot1", ",", " ", "etop", 
      ",", " ", "gpv1", ",", " ", "newverts2", ",", " ", "polys2", ",", " ", 
      "wulffshape2", ",", " ", "plot2", ",", " ", "ebot", ",", " ", "gpv2", 
      ",", "\[IndentingNewLine]", "agb", ",", " ", "energetics", ",", " ", 
      "epi", ",", " ", "plotr", ",", " ", "showwulff", ",", "  ", "showstats",
       ",", " ", "plotl"}], "}"}], ",", "\[IndentingNewLine]", 
    "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"gbplane", " ", "=", " ", 
      RowBox[{"argument", "[", 
       RowBox[{"[", 
        RowBox[{"5", ",", " ", "3"}], "]"}], "]"}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"degall", " ", "=", " ", 
      RowBox[{"VectorAngle", "[", 
       RowBox[{"gbplane", ",", " ", 
        RowBox[{"{", 
         RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}]}], "]"}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"axisall", " ", "=", " ", 
      RowBox[{"Cross", "[", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}], ",", " ", 
        "gbplane"}], "]"}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"rot", " ", "=", " ", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"gbplane", " ", "\[Equal]", " ", 
         RowBox[{"{", 
          RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}]}], ",", " ", 
        RowBox[{"IdentityMatrix", "[", "3", "]"}], ",", " ", 
        RowBox[{"RotationMatrix", "[", 
         RowBox[{"degall", ",", " ", "axisall"}], "]"}]}], "]"}]}], ";", 
     "\[IndentingNewLine]", "\[IndentingNewLine]", "\[IndentingNewLine]", 
     RowBox[{
      StyleBox["(*",
       FontSize->16], 
      StyleBox[" ",
       FontSize->16], 
      RowBox[{
       StyleBox["find",
        FontSize->16], 
       StyleBox[" ",
        FontSize->16], 
       SubscriptBox[
        StyleBox["W",
         FontSize->16], "A"]}], " ", 
      StyleBox["*)",
       FontSize->16]}], "\[IndentingNewLine]", 
     RowBox[{"norms1", " ", "=", " ", 
      RowBox[{"argument", "[", 
       RowBox[{"[", 
        RowBox[{"1", ",", " ", "1"}], "]"}], "]"}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"ds1", " ", "=", " ", 
      RowBox[{"argument", "[", 
       RowBox[{"[", 
        RowBox[{"1", ",", " ", "2"}], "]"}], "]"}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"colors1", " ", "=", " ", 
      RowBox[{"argument", "[", 
       RowBox[{"[", 
        RowBox[{"1", ",", " ", "3"}], "]"}], "]"}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"symstring1", " ", "=", " ", 
      RowBox[{"argument", "[", 
       RowBox[{"[", 
        RowBox[{"1", ",", " ", "4"}], "]"}], "]"}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"geometry1", " ", "=", " ", 
      RowBox[{"argument", "[", 
       RowBox[{"[", 
        RowBox[{"1", ",", " ", "5"}], "]"}], "]"}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"showaxes1", " ", "=", " ", 
      RowBox[{"(*", 
       RowBox[{"argument", "[", 
        RowBox[{"[", 
         RowBox[{"1", ",", " ", "6", ",", " ", "1"}], "]"}], "]"}], "*)"}], 
      "True"}], ";", "\[IndentingNewLine]", 
     RowBox[{"axes1", " ", "=", " ", 
      RowBox[{"argument", "[", 
       RowBox[{"[", 
        RowBox[{"1", ",", " ", "6", ",", " ", "2"}], "]"}], "]"}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"vp1", " ", "=", " ", 
      RowBox[{"argument", "[", 
       RowBox[{"[", 
        RowBox[{"1", ",", " ", "7", ",", " ", "1"}], "]"}], "]"}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"vv1", " ", "=", " ", 
      RowBox[{"argument", "[", 
       RowBox[{"[", 
        RowBox[{"1", ",", " ", "7", ",", " ", "2"}], "]"}], "]"}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"sym1", " ", "=", " ", 
      RowBox[{"symmetryMatrices", "[", "symstring1", "]"}]}], ";", 
     "\[IndentingNewLine]", "\[IndentingNewLine]", 
     RowBox[{"aa1", " ", "=", " ", 
      RowBox[{"geometry1", "[", 
       RowBox[{"[", "1", "]"}], "]"}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"bb1", " ", "=", " ", 
      RowBox[{"geometry1", "[", 
       RowBox[{"[", "2", "]"}], "]"}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"cc1", " ", "=", " ", 
      RowBox[{"geometry1", "[", 
       RowBox[{"[", "3", "]"}], "]"}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"\[Alpha]\[Alpha]1", " ", "=", " ", 
      RowBox[{
       RowBox[{"geometry1", "[", 
        RowBox[{"[", "4", "]"}], "]"}], " ", 
       RowBox[{"Pi", "/", "180"}]}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"\[Beta]\[Beta]1", " ", "=", " ", 
      RowBox[{
       RowBox[{"geometry1", "[", 
        RowBox[{"[", "5", "]"}], "]"}], " ", 
       RowBox[{"Pi", "/", "180"}]}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"\[Gamma]\[Gamma]1", " ", "=", " ", 
      RowBox[{
       RowBox[{"geometry1", "[", 
        RowBox[{"[", "6", "]"}], "]"}], " ", 
       RowBox[{"Pi", "/", "180"}]}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"avect1", " ", "=", " ", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"aa1", " ", 
         RowBox[{"Sin", "[", "\[Beta]\[Beta]1", "]"}]}], ",", " ", "0", ",", 
        " ", 
        RowBox[{"aa1", " ", 
         RowBox[{"Cos", "[", "\[Beta]\[Beta]1", "]"}]}]}], "}"}]}], ";", " ", 
     "\[IndentingNewLine]", 
     RowBox[{"bvect1", " ", "=", " ", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"bb1", " ", 
         RowBox[{"Sin", "[", "\[Alpha]\[Alpha]1", "]"}], " ", 
         RowBox[{"Cos", "[", "\[Gamma]\[Gamma]1", "]"}]}], ",", " ", 
        RowBox[{"bb1", " ", 
         RowBox[{"Sin", "[", "\[Alpha]\[Alpha]1", "]"}], " ", 
         RowBox[{"Sin", "[", "\[Gamma]\[Gamma]1", "]"}]}], ",", " ", 
        RowBox[{"bb1", " ", 
         RowBox[{"Cos", "[", "\[Alpha]\[Alpha]1", "]"}]}]}], "}"}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"cvect1", " ", "=", " ", 
      RowBox[{"{", 
       RowBox[{"0", ",", " ", "0", ",", " ", "cc1"}], "}"}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"cartesian1", " ", "=", " ", 
      RowBox[{"Table", "[", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{
             RowBox[{"norms1", "[", 
              RowBox[{"[", 
               RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], " ", "\[Equal]", 
             " ", "0"}], ",", " ", "\"\<Inf\>\"", ",", " ", 
            RowBox[{"avect1", "/", 
             RowBox[{"norms1", "[", 
              RowBox[{"[", 
               RowBox[{"i", ",", " ", "1"}], "]"}], "]"}]}]}], "]"}], ",", 
          " ", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{
             RowBox[{"norms1", "[", 
              RowBox[{"[", 
               RowBox[{"i", ",", " ", "2"}], "]"}], "]"}], " ", "\[Equal]", 
             " ", "0"}], ",", " ", "\"\<Inf\>\"", ",", " ", 
            RowBox[{"bvect1", "/", 
             RowBox[{"norms1", "[", 
              RowBox[{"[", 
               RowBox[{"i", ",", " ", "2"}], "]"}], "]"}]}]}], "]"}], ",", 
          " ", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{
             RowBox[{"norms1", "[", 
              RowBox[{"[", 
               RowBox[{"i", ",", " ", "3"}], "]"}], "]"}], " ", "\[Equal]", 
             " ", "0"}], ",", " ", "\"\<Inf\>\"", ",", " ", 
            RowBox[{"cvect1", "/", 
             RowBox[{"norms1", "[", 
              RowBox[{"[", 
               RowBox[{"i", ",", " ", "3"}], "]"}], "]"}]}]}], "]"}]}], "}"}],
         ",", " ", 
        RowBox[{"{", 
         RowBox[{"i", ",", " ", "1", ",", " ", 
          RowBox[{"Length", "[", "norms1", "]"}]}], "}"}]}], "]"}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"points1", " ", "=", " ", 
      RowBox[{"Table", "[", 
       RowBox[{
        RowBox[{"Which", "[", "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{
           RowBox[{"!", 
            RowBox[{"VectorQ", "[", 
             RowBox[{"cartesian1", "[", 
              RowBox[{"[", 
               RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], "]"}]}], "  ", "&&",
            " ", 
           RowBox[{"!", 
            RowBox[{"VectorQ", "[", 
             RowBox[{"cartesian1", "[", 
              RowBox[{"[", 
               RowBox[{"i", ",", " ", "2"}], "]"}], "]"}], "]"}]}]}], ",", 
          "\[IndentingNewLine]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{
             RowBox[{"cartesian1", "[", 
              RowBox[{"[", 
               RowBox[{"i", ",", " ", "3"}], "]"}], "]"}], " ", "+", " ", 
             "avect1"}], ",", " ", 
            RowBox[{
             RowBox[{"cartesian1", "[", 
              RowBox[{"[", 
               RowBox[{"i", ",", " ", "3"}], "]"}], "]"}], " ", "+", " ", 
             "bvect1"}], ",", " ", 
            RowBox[{"cartesian1", "[", 
             RowBox[{"[", 
              RowBox[{"i", ",", " ", "3"}], "]"}], "]"}]}], "}"}], ",", 
          "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{"!", 
            RowBox[{"VectorQ", "[", 
             RowBox[{"cartesian1", "[", 
              RowBox[{"[", 
               RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], "]"}]}], " ", "&&",
            " ", 
           RowBox[{"!", 
            RowBox[{"VectorQ", "[", 
             RowBox[{"cartesian1", "[", 
              RowBox[{"[", 
               RowBox[{"i", ",", " ", "3"}], "]"}], "]"}], "]"}]}]}], ",", 
          "\[IndentingNewLine]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{
             RowBox[{"cartesian1", "[", 
              RowBox[{"[", 
               RowBox[{"i", ",", " ", "2"}], "]"}], "]"}], " ", "+", " ", 
             "avect1"}], ",", " ", 
            RowBox[{"cartesian1", "[", 
             RowBox[{"[", 
              RowBox[{"i", ",", " ", "2"}], "]"}], "]"}], ",", " ", 
            RowBox[{
             RowBox[{"cartesian1", "[", 
              RowBox[{"[", 
               RowBox[{"i", ",", " ", "2"}], "]"}], "]"}], "+", "cvect1"}]}], 
           "}"}], ",", "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{"!", 
            RowBox[{"VectorQ", "[", 
             RowBox[{"cartesian1", "[", 
              RowBox[{"[", 
               RowBox[{"i", ",", " ", "2"}], "]"}], "]"}], "]"}]}], " ", "&&",
            " ", 
           RowBox[{"!", 
            RowBox[{"VectorQ", "[", 
             RowBox[{"cartesian1", "[", 
              RowBox[{"[", 
               RowBox[{"i", ",", " ", "3"}], "]"}], "]"}], "]"}]}]}], ",", 
          "\[IndentingNewLine]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"cartesian1", "[", 
             RowBox[{"[", 
              RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], ",", " ", 
            RowBox[{
             RowBox[{"cartesian1", "[", 
              RowBox[{"[", 
               RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], "+", "bvect1"}], 
            ",", " ", 
            RowBox[{
             RowBox[{"cartesian1", "[", 
              RowBox[{"[", 
               RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], "+", "cvect1"}]}], 
           "}"}], ",", "\[IndentingNewLine]", 
          RowBox[{"!", 
           RowBox[{"VectorQ", "[", 
            RowBox[{"cartesian1", "[", 
             RowBox[{"[", 
              RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], "]"}]}], ",", 
          "\[IndentingNewLine]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{
             RowBox[{"cartesian1", "[", 
              RowBox[{"[", 
               RowBox[{"i", ",", " ", "3"}], "]"}], "]"}], "+", "avect1"}], 
            ",", " ", 
            RowBox[{"cartesian1", "[", 
             RowBox[{"[", 
              RowBox[{"i", ",", " ", "2"}], "]"}], "]"}], ",", " ", 
            RowBox[{"cartesian1", "[", 
             RowBox[{"[", 
              RowBox[{"i", ",", " ", "3"}], "]"}], "]"}]}], "}"}], ",", 
          "\[IndentingNewLine]", 
          RowBox[{"!", 
           RowBox[{"VectorQ", "[", 
            RowBox[{"cartesian1", "[", 
             RowBox[{"[", 
              RowBox[{"i", ",", " ", "2"}], "]"}], "]"}], "]"}]}], ",", 
          "\[IndentingNewLine]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"cartesian1", "[", 
             RowBox[{"[", 
              RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], ",", " ", 
            RowBox[{
             RowBox[{"cartesian1", "[", 
              RowBox[{"[", 
               RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], "+", "bvect1"}], 
            ",", " ", 
            RowBox[{"cartesian1", "[", 
             RowBox[{"[", 
              RowBox[{"i", ",", " ", "3"}], "]"}], "]"}]}], "}"}], ",", 
          "\[IndentingNewLine]", 
          RowBox[{"!", 
           RowBox[{"VectorQ", "[", 
            RowBox[{"cartesian1", "[", 
             RowBox[{"[", 
              RowBox[{"i", ",", " ", "3"}], "]"}], "]"}], "]"}]}], ",", 
          "\[IndentingNewLine]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"cartesian1", "[", 
             RowBox[{"[", 
              RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], ",", " ", 
            RowBox[{"cartesian1", "[", 
             RowBox[{"[", 
              RowBox[{"i", ",", " ", "2"}], "]"}], "]"}], ",", " ", 
            RowBox[{
             RowBox[{"cartesian1", "[", 
              RowBox[{"[", 
               RowBox[{"i", ",", " ", "2"}], "]"}], "]"}], "+", "cvect1"}]}], 
           "}"}], ",", "\[IndentingNewLine]", "True", ",", 
          "\[IndentingNewLine]", 
          RowBox[{"cartesian1", "[", 
           RowBox[{"[", "i", "]"}], "]"}]}], "\[IndentingNewLine]", "]"}], 
        ",", " ", 
        RowBox[{"{", 
         RowBox[{"i", ",", " ", 
          RowBox[{"Length", "[", "norms1", "]"}]}], "}"}]}], "]"}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"normsxyz1", " ", "=", " ", 
      RowBox[{"Table", "[", 
       RowBox[{
        RowBox[{"Cross", "[", 
         RowBox[{
          RowBox[{
           RowBox[{"points1", "[", 
            RowBox[{"[", 
             RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], "-", 
           RowBox[{"points1", "[", 
            RowBox[{"[", 
             RowBox[{"i", ",", " ", "2"}], "]"}], "]"}]}], ",", " ", 
          RowBox[{
           RowBox[{"points1", "[", 
            RowBox[{"[", 
             RowBox[{"i", ",", " ", "2"}], "]"}], "]"}], "-", 
           RowBox[{"points1", "[", 
            RowBox[{"[", 
             RowBox[{"i", ",", " ", "3"}], "]"}], "]"}]}]}], "]"}], ",", " ", 
        
        RowBox[{"{", 
         RowBox[{"i", ",", " ", 
          RowBox[{"Length", "[", "norms1", "]"}]}], "}"}]}], "]"}]}], ";", 
     "\[IndentingNewLine]", "\[IndentingNewLine]", 
     RowBox[{"symop1", " ", "=", " ", 
      RowBox[{"Union", "/@", 
       RowBox[{"Table", "[", 
        RowBox[{
         RowBox[{"FixedPoint", "[", 
          RowBox[{
           RowBox[{
            RowBox[{"Simplify", "@", 
             RowBox[{"Union", "[", 
              RowBox[{"Partition", "[", 
               RowBox[{
                RowBox[{"Flatten", "[", 
                 RowBox[{"Table", "[", 
                  RowBox[{
                   RowBox[{"Round", "[", 
                    RowBox[{
                    RowBox[{"sym1", ".", " ", 
                    RowBox[{"#", "[", 
                    RowBox[{"[", "i", "]"}], "]"}]}], ",", " ", 
                    SuperscriptBox["10", 
                    RowBox[{"-", "10."}]]}], "]"}], ",", " ", 
                   RowBox[{"{", 
                    RowBox[{"i", ",", " ", "1", ",", " ", 
                    RowBox[{"Length", "[", "#", "]"}]}], "}"}]}], "]"}], 
                 "]"}], ",", " ", "3"}], "]"}], "]"}]}], " ", "&"}], ",", 
           RowBox[{"sym1", ".", 
            RowBox[{"normsxyz1", "[", 
             RowBox[{"[", "j", "]"}], "]"}]}]}], "]"}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"j", ",", " ", "1", ",", " ", 
           RowBox[{"Length", "[", "normsxyz1", "]"}]}], "}"}]}], "]"}]}]}], 
     ";", "\[IndentingNewLine]", 
     RowBox[{"dmult1", " ", "=", " ", 
      RowBox[{"Table", "[", 
       RowBox[{
        RowBox[{"ds1", "[", 
         RowBox[{"[", "i", "]"}], "]"}], ",", " ", 
        RowBox[{"{", 
         RowBox[{"i", ",", " ", "1", ",", " ", 
          RowBox[{"Length", "[", "ds1", "]"}]}], "}"}], ",", "  ", 
        RowBox[{"{", 
         RowBox[{"j", ",", " ", "1", ",", " ", 
          RowBox[{"Length", "[", 
           RowBox[{"symop1", "[", 
            RowBox[{"[", "i", "]"}], "]"}], " ", "]"}]}], "}"}]}], "]"}]}], 
     ";", "\[IndentingNewLine]", 
     RowBox[{"gams1", " ", "=", " ", 
      RowBox[{"Table", "[", 
       RowBox[{
        RowBox[{"N", "[", 
         RowBox[{
          RowBox[{"dmult1", "[", 
           RowBox[{"[", 
            RowBox[{"i", ",", " ", "j"}], "]"}], "]"}], " ", 
          RowBox[{"Normalize", "[", 
           RowBox[{"symop1", "[", 
            RowBox[{"[", 
             RowBox[{"i", ",", " ", "j"}], "]"}], "]"}], "]"}]}], "]"}], ",", 
        " ", 
        RowBox[{"{", 
         RowBox[{"i", ",", " ", "1", ",", " ", 
          RowBox[{"Length", "[", "normsxyz1", "]"}]}], "}"}], ",", " ", 
        RowBox[{"{", 
         RowBox[{"j", ",", " ", "1", ",", " ", 
          RowBox[{"Length", "[", 
           RowBox[{"symop1", "[", 
            RowBox[{"[", "i", "]"}], "]"}], " ", "]"}]}], " ", "}"}]}], 
       "]"}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"eliminated1", " ", "=", " ", 
      RowBox[{"Table", "[", 
       RowBox[{
        RowBox[{"outsideWulffCompiled", "[", 
         RowBox[{
          RowBox[{"gams1", "[", 
           RowBox[{"[", 
            RowBox[{"i", ",", " ", "j"}], "]"}], "]"}], ",", " ", 
          RowBox[{"gams1", "[", 
           RowBox[{"[", 
            RowBox[{"k", ",", " ", "1"}], "]"}], "]"}]}], "]"}], ",", " ", 
        RowBox[{"{", 
         RowBox[{"k", ",", " ", 
          RowBox[{"Length", "[", "gams1", "]"}]}], "}"}], ",", " ", 
        RowBox[{"{", 
         RowBox[{"i", ",", " ", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{"k", " ", "\[Equal]", " ", "1"}], ",", " ", 
            RowBox[{"Table", "[", 
             RowBox[{"a", ",", " ", 
              RowBox[{"{", 
               RowBox[{"a", ",", " ", "2", ",", " ", 
                RowBox[{"Length", "[", "gams1", "]"}]}], "}"}]}], "]"}], ",", 
            " ", 
            RowBox[{"If", "[", 
             RowBox[{
              RowBox[{"k", " ", "\[Equal]", " ", 
               RowBox[{"Length", "[", "gams1", "]"}]}], ",", " ", 
              RowBox[{"Table", "[", 
               RowBox[{"a", ",", " ", 
                RowBox[{"{", 
                 RowBox[{"a", ",", " ", "1", ",", " ", 
                  RowBox[{"k", "-", "1"}]}], "}"}]}], "]"}], ",", " ", 
              RowBox[{"Join", "[", 
               RowBox[{
                RowBox[{"Table", "[", 
                 RowBox[{"a", ",", " ", 
                  RowBox[{"{", 
                   RowBox[{"a", ",", " ", 
                    RowBox[{"k", "-", "1"}]}], "}"}]}], "]"}], ",", " ", 
                RowBox[{"Table", "[", 
                 RowBox[{"a", ",", " ", 
                  RowBox[{"{", 
                   RowBox[{"a", ",", " ", 
                    RowBox[{"k", "+", "1"}], ",", " ", 
                    RowBox[{"Length", "[", "gams1", "]"}]}], "}"}]}], "]"}]}],
                "]"}]}], "]"}]}], "]"}]}], "}"}], ",", " ", 
        RowBox[{"{", 
         RowBox[{"j", ",", " ", 
          RowBox[{"Length", "[", 
           RowBox[{"gams1", "[", 
            RowBox[{"[", "i", "]"}], "]"}], "]"}]}], "}"}]}], "]"}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"surviving1", " ", "=", " ", 
      RowBox[{"Select", "[", 
       RowBox[{
        RowBox[{"Table", "[", 
         RowBox[{
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{"MemberQ", "[", 
             RowBox[{
              RowBox[{"Flatten", "[", 
               RowBox[{"eliminated1", "[", 
                RowBox[{"[", "i", "]"}], "]"}], "]"}], ",", " ", "True"}], 
             "]"}], ",", " ", "Null", ",", " ", "i"}], "]"}], ",", " ", 
          RowBox[{"{", 
           RowBox[{"i", ",", " ", 
            RowBox[{"Length", "[", "gams1", "]"}]}], "}"}]}], "]"}], ",", " ",
         "NumericQ"}], "]"}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"cols1", " ", "=", " ", 
      RowBox[{"Flatten", "@", 
       RowBox[{"Table", "[", 
        RowBox[{
         RowBox[{"colors1", "[", 
          RowBox[{"[", "i", "]"}], "]"}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"i", ",", " ", "surviving1"}], "}"}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"j", ",", " ", 
           RowBox[{"Length", "[", 
            RowBox[{"gams1", "[", 
             RowBox[{"[", "i", "]"}], "]"}], "]"}]}], "}"}]}], "]"}]}]}], ";",
      "\[IndentingNewLine]", 
     RowBox[{"newGsPre1", " ", "=", " ", 
      RowBox[{"Flatten", "[", 
       RowBox[{
        RowBox[{"Table", "[", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{
            RowBox[{"gams1", "[", 
             RowBox[{"[", 
              RowBox[{"i", ",", " ", "j"}], "]"}], "]"}], ",", " ", "i"}], 
           "}"}], ",", " ", 
          RowBox[{"{", 
           RowBox[{"i", ",", " ", "surviving1"}], "}"}], ",", " ", 
          RowBox[{"{", 
           RowBox[{"j", ",", " ", 
            RowBox[{"Length", "[", 
             RowBox[{"gams1", "[", 
              RowBox[{"[", "i", "]"}], "]"}], "]"}]}], "}"}]}], "]"}], ",", 
        " ", "1"}], "]"}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"newG1s", " ", "=", " ", 
      RowBox[{"Table", "[", 
       RowBox[{
        RowBox[{"Join", "[", 
         RowBox[{
          RowBox[{"newGsPre1", "[", 
           RowBox[{"[", "i", "]"}], "]"}], ",", " ", 
          RowBox[{"{", "i", "}"}]}], "]"}], ",", " ", 
        RowBox[{"{", 
         RowBox[{"i", ",", " ", 
          RowBox[{"Length", "[", "newGsPre1", "]"}]}], "}"}]}], "]"}]}], ";", 
     "\[IndentingNewLine]", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"verts1", ",", " ", "vandps1"}], "}"}], " ", "=", " ", 
      RowBox[{"makeAWulff", "[", 
       RowBox[{"newG1s", ",", " ", "cols1"}], "]"}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"vol1", " ", "=", " ", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{"1", "/", "3"}], ")"}], " ", 
       RowBox[{"Sum", "[", 
        RowBox[{
         RowBox[{
          RowBox[{"Re", "[", 
           RowBox[{"findarea", "[", 
            RowBox[{"verts1", "[", 
             RowBox[{"[", "i", "]"}], "]"}], "]"}], "]"}], " ", 
          RowBox[{"Norm", "[", 
           RowBox[{"newG1s", "[", 
            RowBox[{"[", 
             RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], "]"}]}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"i", ",", " ", "1", ",", "  ", 
           RowBox[{"Length", "[", "newG1s", "]"}]}], "}"}]}], "]"}]}]}], ";", 
     "\[IndentingNewLine]", "\[IndentingNewLine]", "\[IndentingNewLine]", 
     "\[IndentingNewLine]", 
     RowBox[{
      StyleBox["(*",
       FontSize->16], 
      StyleBox[" ",
       FontSize->16], 
      RowBox[{
       StyleBox["find",
        FontSize->16], 
       StyleBox[" ",
        FontSize->16], 
       SubscriptBox[
        StyleBox["W",
         FontSize->16], "B"]}], " ", 
      StyleBox["*)",
       FontSize->16]}], "\[IndentingNewLine]", 
     RowBox[{"norms2", " ", "=", " ", 
      RowBox[{"Table", "[", 
       RowBox[{
        RowBox[{"Normalize", "[", 
         RowBox[{"argument", "[", 
          RowBox[{"[", 
           RowBox[{"2", ",", " ", "1", ",", " ", "i"}], "]"}], "]"}], "]"}], 
        ",", " ", 
        RowBox[{"{", 
         RowBox[{"i", ",", " ", 
          RowBox[{"Length", "[", 
           RowBox[{"argument", "[", 
            RowBox[{"[", 
             RowBox[{"2", ",", " ", "1"}], "]"}], "]"}], "]"}]}], "}"}]}], 
       "]"}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"ds2", " ", "=", " ", 
      RowBox[{"argument", "[", 
       RowBox[{"[", 
        RowBox[{"2", ",", " ", "2"}], "]"}], "]"}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"colors2", " ", "=", " ", 
      RowBox[{"argument", "[", 
       RowBox[{"[", 
        RowBox[{"2", ",", " ", "3"}], "]"}], "]"}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"symstring2", " ", "=", " ", 
      RowBox[{"argument", "[", 
       RowBox[{"[", 
        RowBox[{"2", ",", " ", "4"}], "]"}], "]"}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"geometry2", " ", "=", " ", 
      RowBox[{"argument", "[", 
       RowBox[{"[", 
        RowBox[{"2", ",", " ", "5"}], "]"}], "]"}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"showaxes2", " ", "=", " ", 
      RowBox[{"(*", 
       RowBox[{"argument", "[", 
        RowBox[{"[", 
         RowBox[{"2", ",", " ", "6", ",", " ", "1"}], "]"}], "]"}], "*)"}], 
      "True"}], ";", "\[IndentingNewLine]", 
     RowBox[{"axes2", " ", "=", " ", 
      RowBox[{"argument", "[", 
       RowBox[{"[", 
        RowBox[{"2", ",", " ", "6", ",", " ", "2"}], "]"}], "]"}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"vp2", " ", "=", " ", 
      RowBox[{"argument", "[", 
       RowBox[{"[", 
        RowBox[{"2", ",", " ", "7", ",", " ", "1"}], "]"}], "]"}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"vv2", " ", "=", " ", 
      RowBox[{"argument", "[", 
       RowBox[{"[", 
        RowBox[{"2", ",", " ", "7", ",", " ", "2"}], "]"}], "]"}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"sym2", " ", "=", " ", 
      RowBox[{"symmetryMatrices", "[", "symstring2", "]"}]}], ";", 
     "\[IndentingNewLine]", "\[IndentingNewLine]", 
     RowBox[{"aa2", " ", "=", " ", 
      RowBox[{"geometry2", "[", 
       RowBox[{"[", "1", "]"}], "]"}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"bb2", " ", "=", " ", 
      RowBox[{"geometry2", "[", 
       RowBox[{"[", "2", "]"}], "]"}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"cc2", " ", "=", " ", 
      RowBox[{"geometry2", "[", 
       RowBox[{"[", "3", "]"}], "]"}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"\[Alpha]\[Alpha]2", " ", "=", " ", 
      RowBox[{
       RowBox[{"geometry2", "[", 
        RowBox[{"[", "4", "]"}], "]"}], " ", 
       RowBox[{"Pi", "/", "180"}]}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"\[Beta]\[Beta]2", " ", "=", " ", 
      RowBox[{
       RowBox[{"geometry2", "[", 
        RowBox[{"[", "5", "]"}], "]"}], " ", 
       RowBox[{"Pi", "/", "180"}]}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"\[Gamma]\[Gamma]2", " ", "=", " ", 
      RowBox[{
       RowBox[{"geometry2", "[", 
        RowBox[{"[", "6", "]"}], "]"}], " ", 
       RowBox[{"Pi", "/", "180"}]}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"avect2", " ", "=", " ", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"aa2", " ", 
         RowBox[{"Sin", "[", "\[Beta]\[Beta]2", "]"}]}], ",", " ", "0", ",", 
        " ", 
        RowBox[{"aa2", " ", 
         RowBox[{"Cos", "[", "\[Beta]\[Beta]2", "]"}]}]}], "}"}]}], ";", " ", 
     "\[IndentingNewLine]", 
     RowBox[{"bvect2", " ", "=", " ", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"bb2", " ", 
         RowBox[{"Sin", "[", "\[Alpha]\[Alpha]2", "]"}], " ", 
         RowBox[{"Cos", "[", "\[Gamma]\[Gamma]2", "]"}]}], ",", " ", 
        RowBox[{"bb2", " ", 
         RowBox[{"Sin", "[", "\[Alpha]\[Alpha]2", "]"}], " ", 
         RowBox[{"Sin", "[", "\[Gamma]\[Gamma]2", "]"}]}], ",", " ", 
        RowBox[{"bb2", " ", 
         RowBox[{"Cos", "[", "\[Alpha]\[Alpha]2", "]"}]}]}], "}"}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"cvect2", " ", "=", " ", 
      RowBox[{"{", 
       RowBox[{"0", ",", " ", "0", ",", " ", "cc2"}], "}"}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"cartesian2", " ", "=", " ", 
      RowBox[{"Table", "[", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{
             RowBox[{"norms2", "[", 
              RowBox[{"[", 
               RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], " ", "\[Equal]", 
             " ", "0"}], ",", " ", "\"\<Inf\>\"", ",", " ", 
            RowBox[{"avect2", "/", 
             RowBox[{"norms2", "[", 
              RowBox[{"[", 
               RowBox[{"i", ",", " ", "1"}], "]"}], "]"}]}]}], "]"}], ",", 
          " ", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{
             RowBox[{"norms2", "[", 
              RowBox[{"[", 
               RowBox[{"i", ",", " ", "2"}], "]"}], "]"}], " ", "\[Equal]", 
             " ", "0"}], ",", " ", "\"\<Inf\>\"", ",", " ", 
            RowBox[{"bvect2", "/", 
             RowBox[{"norms2", "[", 
              RowBox[{"[", 
               RowBox[{"i", ",", " ", "2"}], "]"}], "]"}]}]}], "]"}], ",", 
          " ", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{
             RowBox[{"norms2", "[", 
              RowBox[{"[", 
               RowBox[{"i", ",", " ", "3"}], "]"}], "]"}], " ", "\[Equal]", 
             " ", "0"}], ",", " ", "\"\<Inf\>\"", ",", " ", 
            RowBox[{"cvect2", "/", 
             RowBox[{"norms2", "[", 
              RowBox[{"[", 
               RowBox[{"i", ",", " ", "3"}], "]"}], "]"}]}]}], "]"}]}], "}"}],
         ",", " ", 
        RowBox[{"{", 
         RowBox[{"i", ",", " ", "1", ",", " ", 
          RowBox[{"Length", "[", "norms2", "]"}]}], "}"}]}], "]"}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"points2", " ", "=", " ", 
      RowBox[{"Table", "[", 
       RowBox[{
        RowBox[{"Which", "[", "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{
           RowBox[{"!", 
            RowBox[{"VectorQ", "[", 
             RowBox[{"cartesian2", "[", 
              RowBox[{"[", 
               RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], "]"}]}], "  ", "&&",
            " ", 
           RowBox[{"!", 
            RowBox[{"VectorQ", "[", 
             RowBox[{"cartesian2", "[", 
              RowBox[{"[", 
               RowBox[{"i", ",", " ", "2"}], "]"}], "]"}], "]"}]}]}], ",", 
          "\[IndentingNewLine]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{
             RowBox[{"cartesian2", "[", 
              RowBox[{"[", 
               RowBox[{"i", ",", " ", "3"}], "]"}], "]"}], " ", "+", " ", 
             "avect2"}], ",", " ", 
            RowBox[{
             RowBox[{"cartesian2", "[", 
              RowBox[{"[", 
               RowBox[{"i", ",", " ", "3"}], "]"}], "]"}], " ", "+", " ", 
             "bvect2"}], ",", " ", 
            RowBox[{"cartesian2", "[", 
             RowBox[{"[", 
              RowBox[{"i", ",", " ", "3"}], "]"}], "]"}]}], "}"}], ",", 
          "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{"!", 
            RowBox[{"VectorQ", "[", 
             RowBox[{"cartesian2", "[", 
              RowBox[{"[", 
               RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], "]"}]}], " ", "&&",
            " ", 
           RowBox[{"!", 
            RowBox[{"VectorQ", "[", 
             RowBox[{"cartesian2", "[", 
              RowBox[{"[", 
               RowBox[{"i", ",", " ", "3"}], "]"}], "]"}], "]"}]}]}], ",", 
          "\[IndentingNewLine]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{
             RowBox[{"cartesian2", "[", 
              RowBox[{"[", 
               RowBox[{"i", ",", " ", "2"}], "]"}], "]"}], " ", "+", " ", 
             "avect1"}], ",", " ", 
            RowBox[{"cartesian2", "[", 
             RowBox[{"[", 
              RowBox[{"i", ",", " ", "2"}], "]"}], "]"}], ",", " ", 
            RowBox[{
             RowBox[{"cartesian2", "[", 
              RowBox[{"[", 
               RowBox[{"i", ",", " ", "2"}], "]"}], "]"}], "+", "cvect2"}]}], 
           "}"}], ",", "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{"!", 
            RowBox[{"VectorQ", "[", 
             RowBox[{"cartesian2", "[", 
              RowBox[{"[", 
               RowBox[{"i", ",", " ", "2"}], "]"}], "]"}], "]"}]}], " ", "&&",
            " ", 
           RowBox[{"!", 
            RowBox[{"VectorQ", "[", 
             RowBox[{"cartesian2", "[", 
              RowBox[{"[", 
               RowBox[{"i", ",", " ", "3"}], "]"}], "]"}], "]"}]}]}], ",", 
          "\[IndentingNewLine]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"cartesian2", "[", 
             RowBox[{"[", 
              RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], ",", " ", 
            RowBox[{
             RowBox[{"cartesian2", "[", 
              RowBox[{"[", 
               RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], "+", "bvect2"}], 
            ",", " ", 
            RowBox[{
             RowBox[{"cartesian2", "[", 
              RowBox[{"[", 
               RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], "+", "cvect2"}]}], 
           "}"}], ",", "\[IndentingNewLine]", 
          RowBox[{"!", 
           RowBox[{"VectorQ", "[", 
            RowBox[{"cartesian2", "[", 
             RowBox[{"[", 
              RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], "]"}]}], ",", 
          "\[IndentingNewLine]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{
             RowBox[{"cartesian2", "[", 
              RowBox[{"[", 
               RowBox[{"i", ",", " ", "3"}], "]"}], "]"}], "+", "avect2"}], 
            ",", " ", 
            RowBox[{"cartesian2", "[", 
             RowBox[{"[", 
              RowBox[{"i", ",", " ", "2"}], "]"}], "]"}], ",", " ", 
            RowBox[{"cartesian2", "[", 
             RowBox[{"[", 
              RowBox[{"i", ",", " ", "3"}], "]"}], "]"}]}], "}"}], ",", 
          "\[IndentingNewLine]", 
          RowBox[{"!", 
           RowBox[{"VectorQ", "[", 
            RowBox[{"cartesian2", "[", 
             RowBox[{"[", 
              RowBox[{"i", ",", " ", "2"}], "]"}], "]"}], "]"}]}], ",", 
          "\[IndentingNewLine]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"cartesian2", "[", 
             RowBox[{"[", 
              RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], ",", " ", 
            RowBox[{
             RowBox[{"cartesian2", "[", 
              RowBox[{"[", 
               RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], "+", "bvect2"}], 
            ",", " ", 
            RowBox[{"cartesian2", "[", 
             RowBox[{"[", 
              RowBox[{"i", ",", " ", "3"}], "]"}], "]"}]}], "}"}], ",", 
          "\[IndentingNewLine]", 
          RowBox[{"!", 
           RowBox[{"VectorQ", "[", 
            RowBox[{"cartesian2", "[", 
             RowBox[{"[", 
              RowBox[{"i", ",", " ", "3"}], "]"}], "]"}], "]"}]}], ",", 
          "\[IndentingNewLine]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"cartesian2", "[", 
             RowBox[{"[", 
              RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], ",", " ", 
            RowBox[{"cartesian2", "[", 
             RowBox[{"[", 
              RowBox[{"i", ",", " ", "2"}], "]"}], "]"}], ",", " ", 
            RowBox[{
             RowBox[{"cartesian2", "[", 
              RowBox[{"[", 
               RowBox[{"i", ",", " ", "2"}], "]"}], "]"}], "+", "cvect2"}]}], 
           "}"}], ",", "\[IndentingNewLine]", "True", ",", 
          "\[IndentingNewLine]", 
          RowBox[{"cartesian2", "[", 
           RowBox[{"[", "i", "]"}], "]"}]}], "\[IndentingNewLine]", "]"}], 
        ",", " ", 
        RowBox[{"{", 
         RowBox[{"i", ",", " ", 
          RowBox[{"Length", "[", "norms2", "]"}]}], "}"}]}], "]"}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"normsxyz2", " ", "=", " ", 
      RowBox[{"Table", "[", 
       RowBox[{
        RowBox[{"Cross", "[", 
         RowBox[{
          RowBox[{
           RowBox[{"points2", "[", 
            RowBox[{"[", 
             RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], "-", 
           RowBox[{"points2", "[", 
            RowBox[{"[", 
             RowBox[{"i", ",", " ", "2"}], "]"}], "]"}]}], ",", " ", 
          RowBox[{
           RowBox[{"points2", "[", 
            RowBox[{"[", 
             RowBox[{"i", ",", " ", "2"}], "]"}], "]"}], "-", 
           RowBox[{"points2", "[", 
            RowBox[{"[", 
             RowBox[{"i", ",", " ", "3"}], "]"}], "]"}]}]}], "]"}], ",", " ", 
        
        RowBox[{"{", 
         RowBox[{"i", ",", " ", 
          RowBox[{"Length", "[", "norms2", "]"}]}], "}"}]}], "]"}]}], ";", 
     "\[IndentingNewLine]", "\[IndentingNewLine]", 
     RowBox[{"symop2", " ", "=", " ", 
      RowBox[{"Union", "/@", 
       RowBox[{"Table", "[", 
        RowBox[{
         RowBox[{"FixedPoint", "[", 
          RowBox[{
           RowBox[{
            RowBox[{"Simplify", "@", 
             RowBox[{"Union", "[", 
              RowBox[{"Partition", "[", 
               RowBox[{
                RowBox[{"Flatten", "[", 
                 RowBox[{"Table", "[", 
                  RowBox[{
                   RowBox[{"Round", "[", 
                    RowBox[{
                    RowBox[{"sym2", ".", " ", 
                    RowBox[{"#", "[", 
                    RowBox[{"[", "i", "]"}], "]"}]}], ",", " ", 
                    SuperscriptBox["10", 
                    RowBox[{"-", "10."}]]}], "]"}], ",", " ", 
                   RowBox[{"{", 
                    RowBox[{"i", ",", " ", "1", ",", " ", 
                    RowBox[{"Length", "[", "#", "]"}]}], "}"}]}], "]"}], 
                 "]"}], ",", " ", "3"}], "]"}], "]"}]}], " ", "&"}], ",", 
           RowBox[{"sym2", ".", 
            RowBox[{"normsxyz2", "[", 
             RowBox[{"[", "j", "]"}], "]"}]}]}], "]"}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"j", ",", " ", "1", ",", " ", 
           RowBox[{"Length", "[", "normsxyz2", "]"}]}], "}"}]}], "]"}]}]}], 
     ";", "\[IndentingNewLine]", 
     RowBox[{"dmult2", " ", "=", " ", 
      RowBox[{"Table", "[", 
       RowBox[{
        RowBox[{"ds2", "[", 
         RowBox[{"[", "i", "]"}], "]"}], ",", " ", 
        RowBox[{"{", 
         RowBox[{"i", ",", " ", "1", ",", " ", 
          RowBox[{"Length", "[", "ds2", "]"}]}], "}"}], ",", "  ", 
        RowBox[{"{", 
         RowBox[{"j", ",", " ", "1", ",", " ", 
          RowBox[{"Length", "[", 
           RowBox[{"symop2", "[", 
            RowBox[{"[", "i", "]"}], "]"}], " ", "]"}]}], "}"}]}], "]"}]}], 
     ";", "\[IndentingNewLine]", 
     RowBox[{"gams2", " ", "=", " ", 
      RowBox[{"Table", "[", 
       RowBox[{
        RowBox[{"N", "[", 
         RowBox[{
          RowBox[{"dmult2", "[", 
           RowBox[{"[", 
            RowBox[{"i", ",", " ", "j"}], "]"}], "]"}], " ", 
          RowBox[{"Normalize", "[", 
           RowBox[{"symop2", "[", 
            RowBox[{"[", 
             RowBox[{"i", ",", " ", "j"}], "]"}], "]"}], "]"}]}], "]"}], ",", 
        " ", 
        RowBox[{"{", 
         RowBox[{"i", ",", " ", "1", ",", " ", 
          RowBox[{"Length", "[", "normsxyz2", "]"}]}], "}"}], ",", " ", 
        RowBox[{"{", 
         RowBox[{"j", ",", " ", "1", ",", " ", 
          RowBox[{"Length", "[", 
           RowBox[{"symop2", "[", 
            RowBox[{"[", "i", "]"}], "]"}], " ", "]"}]}], " ", "}"}]}], 
       "]"}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"eliminated2", " ", "=", " ", 
      RowBox[{"Table", "[", 
       RowBox[{
        RowBox[{"outsideWulffCompiled", "[", 
         RowBox[{
          RowBox[{"gams2", "[", 
           RowBox[{"[", 
            RowBox[{"i", ",", " ", "j"}], "]"}], "]"}], ",", " ", 
          RowBox[{"gams2", "[", 
           RowBox[{"[", 
            RowBox[{"k", ",", " ", "1"}], "]"}], "]"}]}], "]"}], ",", " ", 
        RowBox[{"{", 
         RowBox[{"k", ",", " ", 
          RowBox[{"Length", "[", "gams2", "]"}]}], "}"}], ",", " ", 
        RowBox[{"{", 
         RowBox[{"i", ",", " ", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{"k", " ", "\[Equal]", " ", "1"}], ",", " ", 
            RowBox[{"Table", "[", 
             RowBox[{"a", ",", " ", 
              RowBox[{"{", 
               RowBox[{"a", ",", " ", "2", ",", " ", 
                RowBox[{"Length", "[", "gams2", "]"}]}], "}"}]}], "]"}], ",", 
            " ", 
            RowBox[{"If", "[", 
             RowBox[{
              RowBox[{"k", " ", "\[Equal]", " ", 
               RowBox[{"Length", "[", "gams2", "]"}]}], ",", " ", 
              RowBox[{"Table", "[", 
               RowBox[{"a", ",", " ", 
                RowBox[{"{", 
                 RowBox[{"a", ",", " ", "1", ",", " ", 
                  RowBox[{"k", "-", "1"}]}], "}"}]}], "]"}], ",", " ", 
              RowBox[{"Join", "[", 
               RowBox[{
                RowBox[{"Table", "[", 
                 RowBox[{"a", ",", " ", 
                  RowBox[{"{", 
                   RowBox[{"a", ",", " ", 
                    RowBox[{"k", "-", "1"}]}], "}"}]}], "]"}], ",", " ", 
                RowBox[{"Table", "[", 
                 RowBox[{"a", ",", " ", 
                  RowBox[{"{", 
                   RowBox[{"a", ",", " ", 
                    RowBox[{"k", "+", "1"}], ",", " ", 
                    RowBox[{"Length", "[", "gams2", "]"}]}], "}"}]}], "]"}]}],
                "]"}]}], "]"}]}], "]"}]}], "}"}], ",", " ", 
        RowBox[{"{", 
         RowBox[{"j", ",", " ", 
          RowBox[{"Length", "[", 
           RowBox[{"gams2", "[", 
            RowBox[{"[", "i", "]"}], "]"}], "]"}]}], "}"}]}], "]"}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"surviving2", " ", "=", " ", 
      RowBox[{"Select", "[", 
       RowBox[{
        RowBox[{"Table", "[", 
         RowBox[{
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{"MemberQ", "[", 
             RowBox[{
              RowBox[{"Flatten", "[", 
               RowBox[{"eliminated2", "[", 
                RowBox[{"[", "i", "]"}], "]"}], "]"}], ",", " ", "True"}], 
             "]"}], ",", " ", "Null", ",", " ", "i"}], "]"}], ",", " ", 
          RowBox[{"{", 
           RowBox[{"i", ",", " ", 
            RowBox[{"Length", "[", "gams2", "]"}]}], "}"}]}], "]"}], ",", " ",
         "NumericQ"}], "]"}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"cols2", " ", "=", " ", 
      RowBox[{"Flatten", "@", 
       RowBox[{"Table", "[", 
        RowBox[{
         RowBox[{"colors2", "[", 
          RowBox[{"[", "i", "]"}], "]"}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"i", ",", " ", "surviving2"}], "}"}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"j", ",", " ", 
           RowBox[{"Length", "[", 
            RowBox[{"gams2", "[", 
             RowBox[{"[", "i", "]"}], "]"}], "]"}]}], "}"}]}], "]"}]}]}], ";",
      "\[IndentingNewLine]", 
     RowBox[{"newGsPre2", " ", "=", " ", 
      RowBox[{"Flatten", "[", 
       RowBox[{
        RowBox[{"Table", "[", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{
            RowBox[{"gams2", "[", 
             RowBox[{"[", 
              RowBox[{"i", ",", " ", "j"}], "]"}], "]"}], ",", " ", "i"}], 
           "}"}], ",", " ", 
          RowBox[{"{", 
           RowBox[{"i", ",", " ", "surviving2"}], "}"}], ",", " ", 
          RowBox[{"{", 
           RowBox[{"j", ",", " ", 
            RowBox[{"Length", "[", 
             RowBox[{"gams2", "[", 
              RowBox[{"[", "i", "]"}], "]"}], "]"}]}], "}"}]}], "]"}], ",", 
        " ", "1"}], "]"}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"newG2s", " ", "=", " ", 
      RowBox[{"Table", "[", 
       RowBox[{
        RowBox[{"Join", "[", 
         RowBox[{
          RowBox[{"newGsPre2", "[", 
           RowBox[{"[", "i", "]"}], "]"}], ",", " ", 
          RowBox[{"{", "i", "}"}]}], "]"}], ",", " ", 
        RowBox[{"{", 
         RowBox[{"i", ",", " ", 
          RowBox[{"Length", "[", "newGsPre2", "]"}]}], "}"}]}], "]"}]}], ";", 
     "\[IndentingNewLine]", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"verts2", ",", " ", "vandps2"}], "}"}], " ", "=", " ", 
      RowBox[{"makeAWulff", "[", 
       RowBox[{"newG2s", ",", " ", "cols2"}], "]"}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"vol2", " ", "=", " ", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{"1", "/", "3"}], ")"}], " ", 
       RowBox[{"Sum", "[", 
        RowBox[{
         RowBox[{
          RowBox[{"Re", "[", 
           RowBox[{"findarea", "[", 
            RowBox[{"verts2", "[", 
             RowBox[{"[", "i", "]"}], "]"}], "]"}], "]"}], " ", 
          RowBox[{"Norm", "[", 
           RowBox[{"newG2s", "[", 
            RowBox[{"[", 
             RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], "]"}]}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"i", ",", " ", "1", ",", "  ", 
           RowBox[{"Length", "[", "newG2s", "]"}]}], "}"}]}], "]"}]}]}], ";", 
     "\[IndentingNewLine]", "\[IndentingNewLine]", "\[IndentingNewLine]", 
     StyleBox[
      RowBox[{"(*", " ", 
       RowBox[{
        RowBox[{"find", " ", "the", " ", "double"}], "-", 
        RowBox[{"Winterbottom", " ", "shape"}]}], " ", "*)"}],
      FontSize->16], "\[IndentingNewLine]", 
     RowBox[{"eu1", " ", "=", " ", 
      RowBox[{"argument", "[", 
       RowBox[{"[", 
        RowBox[{"3", ",", " ", "1"}], "]"}], "]"}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"eu2", " ", "=", " ", 
      RowBox[{"argument", "[", 
       RowBox[{"[", 
        RowBox[{"3", ",", " ", "2"}], "]"}], "]"}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"conv", " ", "=", " ", 
      RowBox[{"argument", "[", 
       RowBox[{"[", 
        RowBox[{"3", ",", " ", "3"}], "]"}], "]"}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"opacityr", " ", "=", " ", 
      RowBox[{"argument", "[", 
       RowBox[{"[", 
        RowBox[{"4", ",", " ", "1"}], "]"}], "]"}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"showperim", " ", "=", " ", 
      RowBox[{"argument", "[", 
       RowBox[{"[", 
        RowBox[{"4", ",", " ", "2", ",", " ", "1"}], "]"}], "]"}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"perimsize", " ", "=", " ", 
      RowBox[{"argument", "[", 
       RowBox[{"[", 
        RowBox[{"4", ",", " ", "2", ",", " ", "2"}], "]"}], "]"}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"showgbr", " ", "=", " ", 
      RowBox[{"argument", "[", 
       RowBox[{"[", 
        RowBox[{"4", ",", " ", "3", ",", " ", "1"}], "]"}], "]"}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"gbsizer", " ", "=", " ", 
      RowBox[{"argument", "[", 
       RowBox[{"[", 
        RowBox[{"4", ",", " ", "3", ",", " ", "2"}], "]"}], "]"}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"axessizer", " ", "=", " ", 
      RowBox[{"argument", "[", 
       RowBox[{"[", 
        RowBox[{"4", ",", " ", "4"}], "]"}], "]"}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"vpr", " ", "=", " ", 
      RowBox[{"rot", ".", 
       RowBox[{"argument", "[", 
        RowBox[{"[", 
         RowBox[{"4", ",", " ", "5", ",", " ", "1"}], "]"}], "]"}]}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"vvr", " ", "=", " ", 
      RowBox[{"rot", ".", 
       RowBox[{"argument", "[", 
        RowBox[{"[", 
         RowBox[{"4", ",", " ", "5", ",", " ", "2"}], "]"}], "]"}]}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"ggb", " ", "=", " ", 
      RowBox[{"argument", "[", 
       RowBox[{"[", 
        RowBox[{"5", ",", " ", "1"}], "]"}], "]"}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"sensitiv", " ", "=", " ", 
      RowBox[{"argument", "[", 
       RowBox[{"[", "6", "]"}], "]"}]}], ";", "\[IndentingNewLine]", 
     "\[IndentingNewLine]", 
     RowBox[{"(*", 
      RowBox[{"take", " ", "the", " ", "outputs", " ", "from", " ", "above"}],
       "*)"}], "\[IndentingNewLine]", 
     RowBox[{"finalwnorms1", " ", "=", " ", 
      RowBox[{"Table", "[", 
       RowBox[{
        RowBox[{"newG1s", "[", 
         RowBox[{"[", 
          RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], ",", " ", 
        RowBox[{"{", 
         RowBox[{"i", ",", " ", "1", ",", " ", 
          RowBox[{"Length", "[", "newG1s", "]"}]}], "}"}]}], "]"}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"finalwnorms2", " ", "=", " ", 
      RowBox[{"Table", "[", 
       RowBox[{
        RowBox[{"newG2s", "[", 
         RowBox[{"[", 
          RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], ",", " ", 
        RowBox[{"{", 
         RowBox[{"i", ",", " ", "1", ",", " ", 
          RowBox[{"Length", "[", "newG2s", "]"}]}], "}"}]}], "]"}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"(*", 
      RowBox[{
      "rotate", " ", "the", " ", "shapes", " ", "relative", " ", "to", " ", 
       "eachother"}], "*)"}], "\[IndentingNewLine]", 
     RowBox[{"rotate1", " ", "=", " ", 
      RowBox[{"Table", "[", 
       RowBox[{
        RowBox[{
         RowBox[{"euler", "[", 
          RowBox[{
           RowBox[{"eu1", "[", 
            RowBox[{"[", "1", "]"}], "]"}], ",", " ", 
           RowBox[{"eu1", "[", 
            RowBox[{"[", "2", "]"}], "]"}], ",", " ", 
           RowBox[{"eu1", "[", 
            RowBox[{"[", "3", "]"}], "]"}], ",", " ", "conv"}], "]"}], ".", 
         RowBox[{"(", 
          RowBox[{"rot", ".", 
           RowBox[{"finalwnorms1", "[", 
            RowBox[{"[", "i", "]"}], "]"}]}], ")"}]}], ",", " ", 
        RowBox[{"{", 
         RowBox[{"i", ",", " ", "1", ",", " ", 
          RowBox[{"Length", "[", "finalwnorms1", "]"}]}], "}"}]}], "]"}]}], 
     ";", "\[IndentingNewLine]", 
     RowBox[{"rotate2", " ", "=", " ", 
      RowBox[{"Table", "[", 
       RowBox[{
        RowBox[{
         RowBox[{"euler", "[", 
          RowBox[{
           RowBox[{"eu2", "[", 
            RowBox[{"[", "1", "]"}], "]"}], ",", " ", 
           RowBox[{"eu2", "[", 
            RowBox[{"[", "2", "]"}], "]"}], ",", " ", 
           RowBox[{"eu2", "[", 
            RowBox[{"[", "3", "]"}], "]"}], ",", "conv"}], "]"}], ".", 
         RowBox[{"(", 
          RowBox[{"rot", ".", 
           RowBox[{"finalwnorms2", "[", 
            RowBox[{"[", "i", "]"}], "]"}]}], ")"}]}], ",", " ", 
        RowBox[{"{", 
         RowBox[{"i", ",", " ", "1", ",", " ", 
          RowBox[{"Length", "[", "finalwnorms2", "]"}]}], "}"}]}], "]"}]}], 
     ";", "\[IndentingNewLine]", 
     RowBox[{"(*", 
      RowBox[{
      "shift", " ", "the", " ", "centers", " ", "of", " ", "the", " ", 
       "shapes", " ", "by", " ", 
       RowBox[{"ggb", "/", "2"}]}], "*)"}], "\[IndentingNewLine]", 
     RowBox[{"shift1", " ", "=", " ", 
      RowBox[{"Table", "[", 
       RowBox[{
        RowBox[{
         RowBox[{"(", 
          RowBox[{
           RowBox[{"Norm", "[", 
            RowBox[{"rotate1", "[", 
             RowBox[{"[", "i", "]"}], "]"}], "]"}], " ", "-", " ", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{"(", 
              RowBox[{"ggb", "/", "2"}], ")"}], " ", 
             RowBox[{"(", 
              RowBox[{
               RowBox[{"Normalize", "[", 
                RowBox[{"rotate1", "[", 
                 RowBox[{"[", "i", "]"}], "]"}], "]"}], ".", 
               RowBox[{"{", 
                RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}]}], ")"}]}],
             ")"}]}], ")"}], " ", 
         RowBox[{"Normalize", "[", 
          RowBox[{"rotate1", "[", 
           RowBox[{"[", "i", "]"}], "]"}], "]"}]}], ",", " ", 
        RowBox[{"{", 
         RowBox[{"i", ",", " ", "1", ",", " ", 
          RowBox[{"Length", "[", "finalwnorms1", "]"}]}], "}"}]}], "]"}]}], 
     ";", "\[IndentingNewLine]", 
     RowBox[{"shift2", " ", "=", " ", 
      RowBox[{"Table", "[", 
       RowBox[{
        RowBox[{
         RowBox[{"(", 
          RowBox[{
           RowBox[{"Norm", "[", 
            RowBox[{"rotate2", "[", 
             RowBox[{"[", "i", "]"}], "]"}], "]"}], " ", "+", " ", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{"(", 
              RowBox[{"ggb", "/", "2"}], ")"}], " ", 
             RowBox[{"(", 
              RowBox[{
               RowBox[{"Normalize", "[", 
                RowBox[{"rotate2", "[", 
                 RowBox[{"[", "i", "]"}], "]"}], "]"}], ".", 
               RowBox[{"{", 
                RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}]}], ")"}]}],
             ")"}]}], ")"}], " ", 
         RowBox[{"Normalize", "[", 
          RowBox[{"rotate2", "[", 
           RowBox[{"[", "i", "]"}], "]"}], "]"}]}], ",", " ", 
        RowBox[{"{", 
         RowBox[{"i", ",", " ", "1", ",", " ", 
          RowBox[{"Length", "[", "finalwnorms2", "]"}]}], "}"}]}], "]"}]}], 
     ";", "\[IndentingNewLine]", "\[IndentingNewLine]", 
     RowBox[{"full1", " ", "=", " ", 
      RowBox[{"Table", "[", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{
          RowBox[{"shift1", "[", 
           RowBox[{"[", "i", "]"}], "]"}], ",", " ", 
          RowBox[{"cols1", "[", 
           RowBox[{"[", "i", "]"}], "]"}]}], "}"}], ",", " ", 
        RowBox[{"{", 
         RowBox[{"i", ",", " ", "1", ",", " ", 
          RowBox[{"Length", "[", "shift1", "]"}]}], "}"}]}], "]"}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"full2", " ", "=", " ", 
      RowBox[{"Table", "[", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{
          RowBox[{"shift2", "[", 
           RowBox[{"[", "i", "]"}], "]"}], ",", " ", 
          RowBox[{"cols2", "[", 
           RowBox[{"[", "i", "]"}], "]"}]}], "}"}], ",", " ", 
        RowBox[{"{", 
         RowBox[{"i", ",", " ", "1", ",", " ", 
          RowBox[{"Length", "[", "shift2", "]"}]}], "}"}]}], "]"}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"(*", 
      RowBox[{
       RowBox[{
       "omit", " ", "the", " ", "normal", " ", "vectors", " ", "far", " ", 
        "below", " ", "the", " ", "grain", " ", "boundary", " ", "plane", " ",
         "for", " ", "the", " ", "top", " ", "shape"}], ",", " ", 
       RowBox[{
       "and", " ", "vice", " ", "versa", " ", "for", " ", "the", " ", 
        "bottom", " ", "shape"}]}], "*)"}], "\[IndentingNewLine]", 
     RowBox[{"half1", " ", "=", " ", 
      RowBox[{"Select", "[", 
       RowBox[{"full1", ",", " ", 
        RowBox[{
         RowBox[{
          RowBox[{"Chop", "@", 
           RowBox[{"#", "[", 
            RowBox[{"[", 
             RowBox[{"1", ",", " ", "3"}], "]"}], "]"}]}], " ", ">", "  ", 
          RowBox[{
           RowBox[{"-", "0.5"}], " ", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{"Max", "[", "ds1", "]"}], "+", 
             RowBox[{"ggb", "/", "2"}]}], ")"}]}]}], " ", "&"}]}], "]"}]}], 
     ";", "\[IndentingNewLine]", 
     RowBox[{"half2", " ", "=", " ", 
      RowBox[{"Select", "[", 
       RowBox[{"full2", ",", " ", 
        RowBox[{
         RowBox[{
          RowBox[{"Chop", "@", 
           RowBox[{"#", "[", 
            RowBox[{"[", 
             RowBox[{"1", ",", " ", "3"}], "]"}], "]"}]}], " ", "<", " ", 
          RowBox[{"0.5", " ", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{"Max", "[", "ds2", "]"}], "+", 
             RowBox[{"ggb", "/", "2"}]}], ")"}]}]}], " ", "&"}]}], "]"}]}], 
     ";", "\[IndentingNewLine]", "\[IndentingNewLine]", 
     RowBox[{"halfn1", " ", "=", " ", 
      RowBox[{"Table", "[", 
       RowBox[{
        RowBox[{"half1", "[", 
         RowBox[{"[", 
          RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], ",", " ", 
        RowBox[{"{", 
         RowBox[{"i", ",", " ", "1", ",", " ", 
          RowBox[{"Length", "[", "half1", "]"}]}], "}"}]}], "]"}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"halfn2", " ", "=", " ", 
      RowBox[{"Table", "[", 
       RowBox[{
        RowBox[{"half2", "[", 
         RowBox[{"[", 
          RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], ",", " ", 
        RowBox[{"{", 
         RowBox[{"i", ",", " ", "1", ",", " ", 
          RowBox[{"Length", "[", "half2", "]"}]}], "}"}]}], "]"}]}], ";", 
     "\[IndentingNewLine]", "\[IndentingNewLine]", 
     RowBox[{"color1", " ", "=", " ", 
      RowBox[{"Table", "[", 
       RowBox[{
        RowBox[{"half1", "[", 
         RowBox[{"[", 
          RowBox[{"i", ",", " ", "2"}], "]"}], "]"}], ",", " ", 
        RowBox[{"{", 
         RowBox[{"i", ",", " ", "1", ",", " ", 
          RowBox[{"Length", "[", "half1", "]"}]}], "}"}]}], "]"}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"color2", " ", "=", " ", 
      RowBox[{"Table", "[", 
       RowBox[{
        RowBox[{"half2", "[", 
         RowBox[{"[", 
          RowBox[{"i", ",", " ", "2"}], "]"}], "]"}], ",", " ", 
        RowBox[{"{", 
         RowBox[{"i", ",", " ", "1", ",", " ", 
          RowBox[{"Length", "[", "half2", "]"}]}], "}"}]}], "]"}]}], ";", 
     "\[IndentingNewLine]", "\[IndentingNewLine]", "\[IndentingNewLine]", 
     RowBox[{"clean1", " ", "=", " ", 
      RowBox[{"Chop", "@", 
       RowBox[{"N", "@", "halfn1"}]}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"clean2", " ", "=", " ", 
      RowBox[{"Chop", "@", 
       RowBox[{"N", "@", "halfn2"}]}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"(*", " ", 
      RowBox[{
      "these", " ", "are", " ", "the", " ", "\"\<starting point\>\"", " ", 
       "to", " ", "make", " ", "the", " ", "overlapping", " ", "shape"}], " ",
       "*)"}], "\[IndentingNewLine]", 
     RowBox[{"wnormsa", " ", "=", " ", 
      RowBox[{"Join", "[", 
       RowBox[{"clean1", ",", " ", "clean2"}], "]"}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"colorsa", " ", "=", " ", 
      RowBox[{"Join", "[", 
       RowBox[{"color1", ",", " ", "color2"}], "]"}]}], ";", 
     "\[IndentingNewLine]", "\[IndentingNewLine]", "\[IndentingNewLine]", 
     RowBox[{"(*", " ", 
      RowBox[{
      "eliminate", " ", "facets", " ", "not", " ", "on", " ", "the", " ", 
       "final", " ", "shape"}], " ", "*)"}], "\[IndentingNewLine]", 
     RowBox[{"eliminateda", " ", "=", " ", 
      RowBox[{"Table", "[", 
       RowBox[{
        RowBox[{"outsideWulffCompiled", "[", 
         RowBox[{
          RowBox[{"wnormsa", "[", 
           RowBox[{"[", "j", "]"}], "]"}], ",", " ", 
          RowBox[{"wnormsa", "[", 
           RowBox[{"[", "i", "]"}], "]"}]}], "]"}], ",", " ", 
        RowBox[{"{", 
         RowBox[{"i", ",", " ", 
          RowBox[{"Length", "[", "wnormsa", "]"}]}], "}"}], ",", " ", 
        RowBox[{"{", 
         RowBox[{"j", ",", " ", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{"i", " ", "\[LessEqual]", " ", 
             RowBox[{"Length", "[", "clean1", "]"}]}], ",", " ", 
            RowBox[{
             RowBox[{"Length", "[", "clean1", "]"}], "+", "1"}], ",", " ", 
            "1"}], "]"}], ",", " ", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{"i", " ", "\[LessEqual]", " ", 
             RowBox[{"Length", "[", "clean1", "]"}]}], ",", " ", 
            RowBox[{"Length", "[", "wnormsa", "]"}], ",", " ", 
            RowBox[{"Length", "[", "clean1", "]"}]}], "]"}]}], "}"}]}], 
       "]"}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"survivinga", " ", "=", " ", 
      RowBox[{"Select", "[", 
       RowBox[{
        RowBox[{"Table", "[", 
         RowBox[{
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{"MemberQ", "[", 
             RowBox[{
              RowBox[{"Flatten", "[", 
               RowBox[{"eliminateda", "[", 
                RowBox[{"[", "i", "]"}], "]"}], "]"}], ",", " ", "True"}], 
             "]"}], ",", " ", "Null", ",", " ", "i"}], "]"}], ",", " ", 
          RowBox[{"{", 
           RowBox[{"i", ",", " ", 
            RowBox[{"Length", "[", "wnormsa", "]"}]}], "}"}]}], "]"}], ",", 
        " ", "NumericQ"}], "]"}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"cols", " ", "=", " ", 
      RowBox[{"Flatten", "@", 
       RowBox[{"Table", "[", 
        RowBox[{
         RowBox[{"colorsa", "[", 
          RowBox[{"[", 
           RowBox[{"survivinga", "[", 
            RowBox[{"[", "i", "]"}], "]"}], " ", "]"}], "]"}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"i", ",", " ", 
           RowBox[{"Length", "[", "survivinga", "]"}]}], "}"}]}], "]"}]}]}], 
     ";", "\[IndentingNewLine]", 
     RowBox[{"newGsa", " ", "=", " ", 
      RowBox[{"Table", "[", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{
          RowBox[{"wnormsa", "[", 
           RowBox[{"[", 
            RowBox[{"survivinga", "[", 
             RowBox[{"[", "i", "]"}], "]"}], "]"}], "]"}], ",", " ", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{
             RowBox[{"survivinga", "[", 
              RowBox[{"[", "i", "]"}], "]"}], " ", "\[LessEqual]", " ", 
             RowBox[{"Length", "[", "clean1", "]"}]}], ",", " ", "1", ",", 
            " ", "2"}], "]"}], ",", " ", "i"}], "}"}], ",", " ", 
        RowBox[{"{", 
         RowBox[{"i", ",", " ", 
          RowBox[{"Length", "[", "survivinga", "]"}]}], "}"}]}], "]"}]}], ";",
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
     RowBox[{"switch", "=", "1"}], ";", " ", 
     RowBox[{"While", "[", 
      RowBox[{
       RowBox[{
        RowBox[{"newGsa", "[", 
         RowBox[{"[", 
          RowBox[{"switch", ",", " ", "2"}], "]"}], "]"}], " ", "\[Equal]", 
        " ", "1"}], ",", " ", 
       RowBox[{"switch", "++"}]}], "]"}], ";", " ", 
     RowBox[{"switch", " ", "=", " ", 
      RowBox[{"switch", "-", "1"}]}], ";", "\[IndentingNewLine]", 
     "\[IndentingNewLine]", 
     RowBox[{"(*", " ", 
      RowBox[{
      "find", " ", "the", " ", "vertices", " ", "defining", " ", "the", " ", 
       "final", " ", "shape"}], " ", "*)"}], "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"vertsa", ",", " ", "vertsAndParents"}], "}"}], " ", "=", 
      RowBox[{"makeAWulffdouble", "[", 
       RowBox[{
       "newGsa", ",", " ", "cols", ",", " ", "switch", ",", " ", "sensitiv"}],
        "]"}]}], ";", "\[IndentingNewLine]", "\[IndentingNewLine]", 
     RowBox[{"(*", " ", 
      RowBox[{
      "find", " ", "the", " ", "volume", " ", "and", " ", "rescale", " ", 
       "the", " ", "shape", " ", "so", " ", "it", " ", "have", " ", "a", " ", 
       "volume", " ", "of", " ", "1"}], " ", "*)"}], "\[IndentingNewLine]", 
     RowBox[{"vol", " ", "=", " ", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{"1", "/", "3"}], ")"}], " ", 
       RowBox[{"Sum", "[", 
        RowBox[{
         RowBox[{
          RowBox[{"Re", "[", 
           RowBox[{"findarea", "[", 
            RowBox[{"vertsa", "[", 
             RowBox[{"[", "i", "]"}], "]"}], "]"}], "]"}], " ", 
          RowBox[{"Norm", "[", 
           RowBox[{"newGsa", "[", 
            RowBox[{"[", 
             RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], "]"}]}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"i", ",", " ", "1", ",", " ", 
           RowBox[{"Length", "[", "newGsa", "]"}]}], "}"}]}], "]"}]}]}], ";", 
     "\[IndentingNewLine]", "\[IndentingNewLine]", 
     RowBox[{"gams", " ", "=", " ", 
      RowBox[{"Table", "[", 
       RowBox[{
        RowBox[{
         SuperscriptBox[
          RowBox[{"(", 
           RowBox[{"1", "/", "vol"}], ")"}], 
          RowBox[{"1", "/", "3"}]], " ", 
         RowBox[{"newGsa", "[", 
          RowBox[{"[", 
           RowBox[{"i", ",", " ", "1"}], "]"}], "]"}]}], ",", " ", 
        RowBox[{"{", 
         RowBox[{"i", ",", " ", 
          RowBox[{"Length", "[", "newGsa", "]"}]}], "}"}]}], "]"}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"verts", " ", "=", " ", 
      RowBox[{"Table", "[", 
       RowBox[{
        RowBox[{
         SuperscriptBox[
          RowBox[{"(", 
           RowBox[{"1", "/", "vol"}], ")"}], 
          RowBox[{"1", "/", "3"}]], " ", 
         RowBox[{"vertsa", "[", 
          RowBox[{"[", 
           RowBox[{"i", ",", " ", "j"}], "]"}], "]"}]}], ",", " ", 
        RowBox[{"{", 
         RowBox[{"i", ",", " ", 
          RowBox[{"Length", "[", "newGsa", "]"}]}], "}"}], ",", " ", 
        RowBox[{"{", 
         RowBox[{"j", ",", " ", 
          RowBox[{"Length", "[", 
           RowBox[{"vertsa", "[", 
            RowBox[{"[", "i", "]"}], "]"}], "]"}]}], "}"}]}], "]"}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"vandps", " ", "=", " ", 
      RowBox[{"Table", "[", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{
          RowBox[{
           SuperscriptBox[
            RowBox[{"(", 
             RowBox[{"1", "/", "vol"}], ")"}], 
            RowBox[{"1", "/", "3"}]], " ", 
           RowBox[{"vertsAndParents", "[", 
            RowBox[{"[", 
             RowBox[{"i", ",", " ", "j", ",", " ", "1"}], "]"}], "]"}]}], ",",
           " ", 
          RowBox[{"vertsAndParents", "[", 
           RowBox[{"[", 
            RowBox[{"i", ",", " ", "j", ",", " ", "2"}], "]"}], "]"}]}], 
         "}"}], ",", " ", 
        RowBox[{"{", 
         RowBox[{"i", ",", " ", 
          RowBox[{"Length", "[", "newGsa", "]"}]}], "}"}], ",", " ", 
        RowBox[{"{", 
         RowBox[{"j", ",", " ", 
          RowBox[{"Length", "[", 
           RowBox[{"vertsAndParents", "[", 
            RowBox[{"[", "i", "]"}], "]"}], "]"}]}], "}"}]}], "]"}]}], ";", 
     "\[IndentingNewLine]", "\[IndentingNewLine]", 
     RowBox[{"(*", " ", 
      RowBox[{
      "find", " ", "the", " ", "triple", " ", "line", " ", "position"}], " ", 
      "*)"}], "\[IndentingNewLine]", 
     RowBox[{"borders", " ", "=", " ", 
      RowBox[{"Union", "[", 
       RowBox[{
        RowBox[{"Flatten", "[", 
         RowBox[{
          RowBox[{"Table", "[", 
           RowBox[{
            RowBox[{"Select", "[", 
             RowBox[{
              RowBox[{"vandps", "[", 
               RowBox[{"[", "i", "]"}], "]"}], ",", " ", 
              RowBox[{
               RowBox[{
                RowBox[{
                 RowBox[{"#", "[", 
                  RowBox[{"[", 
                   RowBox[{"2", ",", " ", "1"}], "]"}], "]"}], " ", 
                 "\[LessEqual]", " ", "switch"}], " ", "&&", " ", 
                RowBox[{
                 RowBox[{"#", "[", 
                  RowBox[{"[", 
                   RowBox[{"2", ",", " ", "3"}], "]"}], "]"}], " ", ">", " ", 
                 "switch"}]}], " ", "&"}]}], "]"}], ",", " ", 
            RowBox[{"{", 
             RowBox[{"i", ",", " ", 
              RowBox[{"Length", "[", "vertsAndParents", "]"}]}], "}"}]}], 
           "]"}], ",", " ", "1"}], "]"}], ",", " ", 
        RowBox[{"SameTest", " ", "\[Rule]", " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            RowBox[{"#1", "[", 
             RowBox[{"[", "2", "]"}], "]"}], " ", "\[Equal]", " ", 
            RowBox[{"#2", "[", 
             RowBox[{"[", "2", "]"}], "]"}]}], " ", "&"}], ")"}]}]}], "]"}]}],
      ";", "\[IndentingNewLine]", 
     RowBox[{"possibleEdges", " ", "=", " ", 
      RowBox[{"Select", "[", 
       RowBox[{
        RowBox[{"Flatten", "[", 
         RowBox[{
          RowBox[{"Table", "[", 
           RowBox[{
            RowBox[{"If", "[", 
             RowBox[{
              RowBox[{
               RowBox[{"Length", "[", 
                RowBox[{"Intersection", "[", 
                 RowBox[{
                  RowBox[{"borders", "[", 
                   RowBox[{"[", 
                    RowBox[{"i", ",", " ", "2"}], "]"}], "]"}], ",", " ", 
                  RowBox[{"borders", "[", 
                   RowBox[{"[", 
                    RowBox[{"j", ",", " ", "2"}], "]"}], "]"}]}], "]"}], 
                "]"}], " ", "\[Equal]", " ", "2"}], ",", " ", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{"i", ",", " ", "j"}], "}"}], ",", " ", 
                RowBox[{"Intersection", "[", 
                 RowBox[{
                  RowBox[{"borders", "[", 
                   RowBox[{"[", 
                    RowBox[{"i", ",", " ", "2"}], "]"}], "]"}], ",", " ", 
                  RowBox[{"borders", "[", 
                   RowBox[{"[", 
                    RowBox[{"j", ",", " ", "2"}], "]"}], "]"}]}], "]"}]}], 
               "}"}], ",", " ", "Null"}], "]"}], ",", " ", 
            RowBox[{"{", 
             RowBox[{"i", ",", " ", 
              RowBox[{
               RowBox[{"Length", "[", "borders", "]"}], "-", "1"}]}], "}"}], 
            ",", " ", 
            RowBox[{"{", 
             RowBox[{"j", ",", " ", 
              RowBox[{"i", "+", "1"}], ",", " ", 
              RowBox[{"Length", "[", "borders", "]"}]}], "}"}]}], "]"}], ",", 
          " ", "1"}], "]"}], ",", " ", 
        RowBox[{
         RowBox[{"!", 
          RowBox[{"SameQ", "[", 
           RowBox[{"Null", ",", " ", "#"}], "]"}]}], " ", "&"}]}], "]"}]}], 
     ";", "\[IndentingNewLine]", 
     RowBox[{"edges", " ", "=", " ", 
      RowBox[{"Select", "[", 
       RowBox[{
        RowBox[{"Table", "[", 
         RowBox[{
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{
             RowBox[{
              RowBox[{"possibleEdges", "[", 
               RowBox[{"[", 
                RowBox[{"i", ",", " ", "2", ",", " ", "1"}], "]"}], "]"}], 
              " ", "\[LessEqual]", " ", "switch"}], " ", "&&", " ", 
             RowBox[{
              RowBox[{"possibleEdges", "[", 
               RowBox[{"[", 
                RowBox[{"i", ",", " ", "2", ",", " ", "2"}], "]"}], "]"}], 
              " ", ">", " ", "switch"}]}], ",", " ", 
            RowBox[{"possibleEdges", "[", 
             RowBox[{"[", 
              RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], ",", " ", "Null"}], 
           "]"}], ",", " ", 
          RowBox[{"{", 
           RowBox[{"i", ",", " ", 
            RowBox[{"Length", "[", "possibleEdges", "]"}]}], "}"}]}], "]"}], 
        ",", " ", 
        RowBox[{
         RowBox[{"!", 
          RowBox[{"SameQ", "[", 
           RowBox[{"Null", ",", " ", "#"}], "]"}]}], " ", "&"}]}], "]"}]}], 
     ";", "\[IndentingNewLine]", "\[IndentingNewLine]", 
     RowBox[{"per", " ", "=", " ", 
      RowBox[{"edges", "[", 
       RowBox[{"[", "1", "]"}], "]"}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"temp", " ", "=", " ", 
      RowBox[{"Delete", "[", 
       RowBox[{"edges", ",", " ", "1"}], "]"}]}], ";", "\[IndentingNewLine]", 
     
     RowBox[{"next", " ", "=", " ", 
      RowBox[{"Flatten", "@", 
       RowBox[{"Position", "[", 
        RowBox[{"temp", ",", " ", 
         RowBox[{"Last", "[", "per", "]"}]}], "]"}]}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"ord", " ", "=", " ", 
      RowBox[{
       RowBox[{"Reap", "[", 
        RowBox[{"While", "[", 
         RowBox[{
          RowBox[{
           RowBox[{"Length", "[", "next", "]"}], " ", ">", "0"}], ",", " ", 
          RowBox[{
           RowBox[{"Sow", "[", "per", "]"}], ";", "\[IndentingNewLine]", 
           RowBox[{"per", " ", "=", " ", 
            RowBox[{"cycle", "[", 
             RowBox[{
              RowBox[{"temp", "[", 
               RowBox[{"[", 
                RowBox[{"next", "[", 
                 RowBox[{"[", "1", "]"}], "]"}], "]"}], "]"}], ",", " ", 
              RowBox[{"(", 
               RowBox[{
                RowBox[{"Length", "[", 
                 RowBox[{"temp", "[", 
                  RowBox[{"[", 
                   RowBox[{"next", "[", 
                    RowBox[{"[", "1", "]"}], "]"}], " ", "]"}], "]"}], " ", 
                 "]"}], " ", "+", " ", "1", " ", "-", " ", 
                RowBox[{"next", "[", 
                 RowBox[{"[", "2", "]"}], "]"}]}], ")"}]}], " ", "]"}]}], ";",
            "\[IndentingNewLine]", 
           RowBox[{"temp", " ", "=", " ", 
            RowBox[{"Delete", "[", 
             RowBox[{"temp", ",", " ", 
              RowBox[{"next", "[", 
               RowBox[{"[", "1", "]"}], "]"}]}], "]"}]}], ";", 
           "\[IndentingNewLine]", 
           RowBox[{"next", " ", "=", " ", 
            RowBox[{"Flatten", "@", 
             RowBox[{"Position", "[", 
              RowBox[{"temp", ",", " ", 
               RowBox[{"Last", "[", "per", "]"}]}], "]"}]}]}]}]}], 
         "\[IndentingNewLine]", "]"}], "]"}], "[", 
       RowBox[{"[", 
        RowBox[{"2", ",", " ", "1"}], "]"}], "]"}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"fin", " ", "=", " ", 
      RowBox[{"Join", "[", 
       RowBox[{"ord", ",", " ", 
        RowBox[{"{", "per", "}"}]}], "]"}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"bord", " ", "=", " ", 
      RowBox[{"Table", "[", 
       RowBox[{
        RowBox[{"fin", "[", 
         RowBox[{"[", 
          RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], ",", " ", 
        RowBox[{"{", 
         RowBox[{"i", ",", " ", "1", ",", " ", 
          RowBox[{"Length", "[", "fin", "]"}]}], "}"}]}], "]"}]}], ";", 
     "\[IndentingNewLine]", "\[IndentingNewLine]", 
     RowBox[{"perimeterverts", " ", "=", " ", 
      RowBox[{"Table", "[", 
       RowBox[{
        RowBox[{"borders", "[", 
         RowBox[{"[", 
          RowBox[{
           RowBox[{"bord", "[", 
            RowBox[{"[", "i", "]"}], "]"}], ",", " ", "1"}], "]"}], "]"}], 
        ",", " ", 
        RowBox[{"{", 
         RowBox[{"i", ",", " ", 
          RowBox[{"Length", "[", "bord", "]"}]}], "}"}]}], "]"}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"offset", " ", "=", " ", 
      RowBox[{"Mean", "[", 
       RowBox[{"Table", "[", 
        RowBox[{
         RowBox[{"perimeterverts", "[", 
          RowBox[{"[", 
           RowBox[{"i", ",", " ", "3"}], "]"}], "]"}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"i", ",", " ", "1", ",", " ", 
           RowBox[{"Length", "[", "perimeterverts", "]"}]}], "}"}]}], "]"}], 
       "]"}]}], ";", "\[IndentingNewLine]", "\[IndentingNewLine]", 
     "\[IndentingNewLine]", "\[IndentingNewLine]", "\[IndentingNewLine]", 
     StyleBox[
      RowBox[{"(*", " ", 
       RowBox[{
       "discretize", " ", "the", " ", "AB", " ", "interface", " ", "and", " ",
         "relax", " ", "it"}], " ", "*)"}],
      FontSize->18], 
     StyleBox[" ",
      FontSize->18], "\[IndentingNewLine]", 
     RowBox[{"stepsize", " ", "=", " ", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"ggb", " ", "<", "0.1"}], ",", " ", "1", ",", " ", "0.1"}], 
       "]"}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"max", " ", "=", " ", "8"}], ";", "\[IndentingNewLine]", 
     RowBox[{"midptcutoff", " ", "=", " ", "0.1"}], ";", 
     "\[IndentingNewLine]", "\[IndentingNewLine]", 
     RowBox[{"midpts", " ", "=", " ", 
      RowBox[{"Table", "[", 
       RowBox[{
        RowBox[{
         RowBox[{"perimeterverts", "[", 
          RowBox[{"[", "i", "]"}], "]"}], " ", "+", " ", 
         RowBox[{
          RowBox[{"(", 
           RowBox[{
            RowBox[{"perimeterverts", "[", 
             RowBox[{"[", 
              RowBox[{"If", "[", 
               RowBox[{
                RowBox[{"i", " ", "\[Equal]", " ", 
                 RowBox[{"Length", "[", "perimeterverts", "]"}]}], ",", " ", 
                "1", ",", " ", 
                RowBox[{"i", "+", "1"}]}], "]"}], " ", "]"}], "]"}], " ", "-",
             " ", 
            RowBox[{"perimeterverts", "[", 
             RowBox[{"[", "i", "]"}], "]"}]}], ")"}], "/", "2"}]}], " ", ",", 
        " ", 
        RowBox[{"{", 
         RowBox[{"i", ",", " ", "1", ",", " ", 
          RowBox[{"Length", "[", "perimeterverts", "]"}]}], "}"}]}], "]"}]}], 
     ";", "\[IndentingNewLine]", 
     RowBox[{"refined", " ", "=", " ", 
      RowBox[{"Table", "[", 
       RowBox[{
        RowBox[{"If", "[", 
         RowBox[{
          RowBox[{
           RowBox[{"Norm", "[", 
            RowBox[{
             RowBox[{"midpts", "[", 
              RowBox[{"[", "i", "]"}], "]"}], "-", 
             RowBox[{"perimeterverts", "[", 
              RowBox[{"[", "i", "]"}], "]"}]}], "]"}], " ", "<", " ", 
           "midptcutoff"}], ",", " ", "Null", ",", " ", 
          RowBox[{"midpts", "[", 
           RowBox[{"[", "i", "]"}], "]"}]}], "]"}], ",", " ", 
        RowBox[{"{", 
         RowBox[{"i", ",", " ", "1", ",", " ", 
          RowBox[{"Length", "[", "perimeterverts", "]"}]}], "}"}]}], "]"}]}], 
     ";", "\[IndentingNewLine]", 
     RowBox[{"perimeterpos", " ", "=", " ", 
      RowBox[{"(", 
       RowBox[{"Select", "[", 
        RowBox[{
         RowBox[{"Riffle", "[", 
          RowBox[{"perimeterverts", ",", " ", "refined"}], "]"}], ",", " ", 
         "VectorQ"}], "]"}], ")"}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"perimeter", " ", "=", " ", 
      RowBox[{"Table", "[", 
       RowBox[{
        RowBox[{"perimeterpos", "[", 
         RowBox[{"[", "i", "]"}], "]"}], " ", ",", " ", 
        RowBox[{"{", 
         RowBox[{"i", ",", " ", "1", ",", " ", 
          RowBox[{"Length", "[", "perimeterpos", "]"}]}], "}"}]}], "]"}]}], 
     ";", "\[IndentingNewLine]", 
     RowBox[{"scale", " ", "=", " ", 
      RowBox[{"Mean", "[", 
       RowBox[{"Table", "[", 
        RowBox[{
         RowBox[{"Norm", "[", 
          RowBox[{"perimeter", "[", 
           RowBox[{"[", "i", "]"}], "]"}], "]"}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"i", ",", " ", 
           RowBox[{"Length", "[", "perimeter", "]"}]}], "}"}]}], "]"}], 
       "]"}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"neighbors", " ", "=", " ", 
      RowBox[{"neighborfxn", "[", 
       RowBox[{"Length", "[", "perimeter", "]"}], "]"}]}], ";", 
     "\[IndentingNewLine]", "\[IndentingNewLine]", 
     RowBox[{"gbnodesl2", " ", "=", " ", 
      RowBox[{"Table", "[", 
       RowBox[{
        RowBox[{"1.2", " ", "scale", " ", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"Mean", "[", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"perimeter", "[", 
               RowBox[{"[", 
                RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], ",", " ", 
              RowBox[{"perimeter", "[", 
               RowBox[{"[", 
                RowBox[{
                 RowBox[{"If", "[", 
                  RowBox[{
                   RowBox[{"i", " ", "\[Equal]", " ", 
                    RowBox[{"Length", "[", "perimeter", "]"}]}], ",", " ", 
                   "1", ",", " ", 
                   RowBox[{"i", "+", "1"}]}], "]"}], ",", " ", "1"}], "]"}], 
               "]"}]}], "}"}], "]"}], ",", " ", 
           RowBox[{"Mean", "[", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"perimeter", "[", 
               RowBox[{"[", 
                RowBox[{"i", ",", " ", "2"}], "]"}], "]"}], ",", " ", 
              RowBox[{"perimeter", "[", 
               RowBox[{"[", 
                RowBox[{
                 RowBox[{"If", "[", 
                  RowBox[{
                   RowBox[{"i", " ", "\[Equal]", " ", 
                    RowBox[{"Length", "[", "perimeter", "]"}]}], ",", " ", 
                   "1", ",", " ", 
                   RowBox[{"i", "+", "1"}]}], "]"}], ",", " ", "2"}], "]"}], 
               "]"}]}], "}"}], "]"}], ",", " ", 
           RowBox[{
            RowBox[{"(", 
             RowBox[{"0.5", " ", 
              RowBox[{"Mean", "[", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"perimeter", "[", 
                  RowBox[{"[", 
                   RowBox[{"i", ",", " ", "3"}], "]"}], "]"}], ",", " ", 
                 RowBox[{"perimeter", "[", 
                  RowBox[{"[", 
                   RowBox[{
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{"i", " ", "\[Equal]", " ", 
                    RowBox[{"Length", "[", "perimeter", "]"}]}], ",", " ", 
                    "1", ",", " ", 
                    RowBox[{"i", "+", "1"}]}], "]"}], ",", " ", "3"}], "]"}], 
                  "]"}]}], "}"}], "]"}]}], ")"}], "+", "offset"}]}], "}"}]}], 
        ",", " ", 
        RowBox[{"{", 
         RowBox[{"i", ",", " ", "1", ",", " ", 
          RowBox[{"Length", "[", "perimeter", "]"}]}], "}"}]}], "]"}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"gbnodesl3", " ", "=", " ", 
      RowBox[{"Table", "[", 
       RowBox[{
        RowBox[{"1.4", " ", "scale", "  ", 
         RowBox[{"Normalize", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"Mean", "[", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"gbnodesl2", "[", 
                RowBox[{"[", 
                 RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], ",", " ", 
               RowBox[{"gbnodesl2", "[", 
                RowBox[{"[", 
                 RowBox[{
                  RowBox[{"If", "[", 
                   RowBox[{
                    RowBox[{"i", " ", "\[Equal]", " ", "1"}], ",", " ", 
                    RowBox[{"Length", "[", "perimeter", "]"}], ",", " ", 
                    RowBox[{"i", "-", "1"}]}], "]"}], ",", " ", "1"}], "]"}], 
                "]"}]}], "}"}], "]"}], ",", " ", 
            RowBox[{"Mean", "[", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"gbnodesl2", "[", 
                RowBox[{"[", 
                 RowBox[{"i", ",", " ", "2"}], "]"}], "]"}], ",", " ", 
               RowBox[{"gbnodesl2", "[", 
                RowBox[{"[", 
                 RowBox[{
                  RowBox[{"If", "[", 
                   RowBox[{
                    RowBox[{"i", " ", "\[Equal]", " ", "1"}], ",", " ", 
                    RowBox[{"Length", "[", "perimeter", "]"}], ",", " ", 
                    RowBox[{"i", "-", "1"}]}], "]"}], ",", " ", "2"}], "]"}], 
                "]"}]}], "}"}], "]"}], ",", " ", 
            RowBox[{
             RowBox[{"(", 
              RowBox[{"0.5", " ", 
               RowBox[{"Mean", "[", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"gbnodesl2", "[", 
                   RowBox[{"[", 
                    RowBox[{"i", ",", " ", "3"}], "]"}], "]"}], ",", " ", 
                  RowBox[{"gbnodesl2", "[", 
                   RowBox[{"[", 
                    RowBox[{
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{"i", " ", "\[Equal]", " ", "1"}], ",", " ", 
                    RowBox[{"Length", "[", "perimeter", "]"}], ",", " ", 
                    RowBox[{"i", "-", "1"}]}], "]"}], ",", " ", "3"}], "]"}], 
                   "]"}]}], "}"}], "]"}]}], ")"}], "+", "offset"}]}], " ", 
           "}"}], "]"}]}], ",", " ", 
        RowBox[{"{", 
         RowBox[{"i", ",", " ", 
          RowBox[{"Length", "[", "perimeter", "]"}]}], "}"}]}], "]"}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"gbnodesl4", " ", "=", " ", 
      RowBox[{"Table", "[", 
       RowBox[{
        RowBox[{
         RowBox[{"(", 
          RowBox[{
           SuperscriptBox["3", "1.2"], "/", "2"}], ")"}], " ", "scale", " ", 
         RowBox[{"Normalize", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"gbnodesl2", "[", 
             RowBox[{"[", 
              RowBox[{"j", ",", " ", "1"}], "]"}], "]"}], ",", " ", 
            RowBox[{"gbnodesl2", "[", 
             RowBox[{"[", 
              RowBox[{"j", ",", " ", "2"}], "]"}], "]"}], ",", " ", 
            "offset"}], "}"}], "]"}]}], ",", " ", 
        RowBox[{"{", 
         RowBox[{"j", ",", " ", 
          RowBox[{"Length", "[", "perimeter", "]"}]}], "}"}]}], "]"}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"gbnodesl5", " ", "=", " ", 
      RowBox[{"Table", "[", 
       RowBox[{
        RowBox[{
         RowBox[{"(", 
          RowBox[{
           SuperscriptBox["4", "1.2"], "/", "2"}], ")"}], " ", "scale", " ", 
         RowBox[{"Normalize", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"gbnodesl3", "[", 
             RowBox[{"[", 
              RowBox[{"j", ",", " ", "1"}], "]"}], "]"}], ",", " ", 
            RowBox[{"gbnodesl3", "[", 
             RowBox[{"[", 
              RowBox[{"j", ",", " ", "2"}], "]"}], "]"}], ",", " ", 
            "offset"}], "}"}], "]"}]}], ",", " ", 
        RowBox[{"{", 
         RowBox[{"j", ",", " ", 
          RowBox[{"Length", "[", "perimeter", "]"}]}], "}"}]}], "]"}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"gbnodesl6", " ", "=", " ", 
      RowBox[{"Table", "[", 
       RowBox[{
        RowBox[{
         RowBox[{"(", 
          RowBox[{
           SuperscriptBox["5", "1.2"], "/", "2"}], ")"}], " ", "scale", " ", 
         RowBox[{"Normalize", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"gbnodesl4", "[", 
             RowBox[{"[", 
              RowBox[{"j", ",", " ", "1"}], "]"}], "]"}], ",", " ", 
            RowBox[{"gbnodesl4", "[", 
             RowBox[{"[", 
              RowBox[{"j", ",", " ", "2"}], "]"}], "]"}], ",", " ", 
            "offset"}], "}"}], "]"}]}], ",", " ", 
        RowBox[{"{", 
         RowBox[{"j", ",", " ", 
          RowBox[{"Length", "[", "perimeter", "]"}]}], "}"}]}], "]"}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"gbnodesl7", " ", "=", " ", 
      RowBox[{"Table", "[", 
       RowBox[{
        RowBox[{
         RowBox[{"(", 
          RowBox[{
           SuperscriptBox["6", "1.2"], "/", "2"}], ")"}], " ", "scale", " ", 
         RowBox[{"Normalize", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"gbnodesl5", "[", 
             RowBox[{"[", 
              RowBox[{"j", ",", " ", "1"}], "]"}], "]"}], ",", " ", 
            RowBox[{"gbnodesl5", "[", 
             RowBox[{"[", 
              RowBox[{"j", ",", " ", "2"}], "]"}], "]"}], ",", " ", 
            "offset"}], "}"}], "]"}]}], ",", " ", 
        RowBox[{"{", 
         RowBox[{"j", ",", " ", 
          RowBox[{"Length", "[", "perimeter", "]"}]}], "}"}]}], "]"}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"gbnodesl8", " ", "=", " ", 
      RowBox[{"Table", "[", 
       RowBox[{
        RowBox[{
         RowBox[{"(", 
          RowBox[{
           SuperscriptBox["7", "1.2"], "/", "2"}], ")"}], " ", "scale", " ", 
         RowBox[{"Normalize", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"gbnodesl6", "[", 
             RowBox[{"[", 
              RowBox[{"j", ",", " ", "1"}], "]"}], "]"}], ",", " ", 
            RowBox[{"gbnodesl6", "[", 
             RowBox[{"[", 
              RowBox[{"j", ",", " ", "2"}], "]"}], "]"}], ",", " ", 
            "offset"}], "}"}], "]"}]}], ",", " ", 
        RowBox[{"{", 
         RowBox[{"j", ",", " ", 
          RowBox[{"Length", "[", "perimeter", "]"}]}], "}"}]}], "]"}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"gbnodesl9", " ", "=", " ", 
      RowBox[{"Table", "[", 
       RowBox[{
        RowBox[{
         RowBox[{"(", 
          RowBox[{
           SuperscriptBox["8", "1.2"], "/", "2"}], ")"}], " ", "scale", " ", 
         RowBox[{"Normalize", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"gbnodesl7", "[", 
             RowBox[{"[", 
              RowBox[{"j", ",", " ", "1"}], "]"}], "]"}], ",", " ", 
            RowBox[{"gbnodesl7", "[", 
             RowBox[{"[", 
              RowBox[{"j", ",", " ", "2"}], "]"}], "]"}], ",", " ", 
            "offset"}], "}"}], "]"}]}], ",", " ", 
        RowBox[{"{", 
         RowBox[{"j", ",", " ", 
          RowBox[{"Length", "[", "perimeter", "]"}]}], "}"}]}], "]"}]}], ";", 
     "\[IndentingNewLine]", "\[IndentingNewLine]", 
     RowBox[{"gbnodes", " ", "=", " ", 
      RowBox[{"{", 
       RowBox[{
       "perimeter", ",", " ", "gbnodesl2", ",", " ", "gbnodesl3", ",", " ", 
        "gbnodesl4", ",", " ", "gbnodesl5", ",", " ", "gbnodesl6", ",", " ", 
        "gbnodesl7", ",", " ", "gbnodesl8", ",", " ", "gbnodesl9"}], "}"}]}], 
     ";", "\[IndentingNewLine]", "\[IndentingNewLine]", 
     RowBox[{"evoln", " ", "=", "  ", 
      RowBox[{"Join", "[", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"gbnodes", "[", 
          RowBox[{"[", "1", "]"}], "]"}], "}"}], ",", " ", 
        RowBox[{"Table", "[", 
         RowBox[{
          RowBox[{"Module", "[", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{
             "dirs", ",", " ", "netdir", ",", " ", "fnet", ",", " ", "displ", 
              ",", " ", "newpos"}], "}"}], ",", "\[IndentingNewLine]", 
            RowBox[{
             RowBox[{"dirs", " ", "=", " ", 
              RowBox[{"Table", "[", 
               RowBox[{
                RowBox[{
                 RowBox[{"gbnodes", "[", 
                  RowBox[{"[", 
                   RowBox[{
                    RowBox[{"neighbors", "[", 
                    RowBox[{"[", 
                    RowBox[{
                    "level", ",", " ", "node", ",", " ", "i", ",", " ", "1"}],
                     "]"}], "]"}], ",", " ", 
                    RowBox[{"neighbors", "[", 
                    RowBox[{"[", 
                    RowBox[{
                    "level", ",", " ", "node", ",", " ", "i", ",", " ", "2"}],
                     "]"}], "]"}]}], " ", "]"}], "]"}], " ", "-", "  ", 
                 RowBox[{"gbnodes", "[", 
                  RowBox[{"[", 
                   RowBox[{"level", ",", " ", "node"}], "]"}], "]"}]}], ",", 
                " ", 
                RowBox[{"{", 
                 RowBox[{"i", ",", " ", "1", ",", " ", 
                  RowBox[{"Length", "[", 
                   RowBox[{"neighbors", "[", 
                    RowBox[{"[", 
                    RowBox[{"level", ",", " ", "node"}], "]"}], "]"}], 
                   "]"}]}], "}"}]}], "]"}]}], ";", "\[IndentingNewLine]", 
             RowBox[{"netdir", " ", "=", " ", 
              RowBox[{"Sum", "[", 
               RowBox[{
                RowBox[{"dirs", "[", 
                 RowBox[{"[", "i", "]"}], "]"}], ",", " ", 
                RowBox[{"{", 
                 RowBox[{"i", ",", " ", "1", ",", " ", 
                  RowBox[{"Length", "[", "dirs", "]"}]}], "}"}]}], "]"}]}], 
             ";", "\[IndentingNewLine]", 
             RowBox[{"fnet", " ", "=", " ", 
              RowBox[{"ggb", " ", "netdir"}]}], ";", "\[IndentingNewLine]", 
             RowBox[{"displ", " ", "=", " ", 
              RowBox[{"stepsize", " ", "fnet"}]}], ";", "\[IndentingNewLine]",
              " ", 
             RowBox[{"newpos", " ", "=", " ", 
              RowBox[{"displ", " ", "+", " ", 
               RowBox[{"gbnodes", "[", 
                RowBox[{"[", 
                 RowBox[{"level", ",", " ", "node"}], "]"}], "]"}]}]}], ";", 
             "\[IndentingNewLine]", "newpos"}]}], "\[IndentingNewLine]", 
           "]"}], ",", " ", 
          RowBox[{"{", 
           RowBox[{"level", ",", " ", "2", ",", " ", "8"}], "}"}], ",", " ", 
          RowBox[{"{", 
           RowBox[{"node", ",", " ", "1", ",", " ", 
            RowBox[{"Length", "[", "perimeter", "]"}]}], "}"}]}], "]"}], ",", 
        
        RowBox[{"{", 
         RowBox[{"gbnodes", "[", 
          RowBox[{"[", "9", "]"}], "]"}], "}"}]}], "]"}]}], " ", ";", 
     "\[IndentingNewLine]", "\[IndentingNewLine]", 
     RowBox[{"evoln", " ", "=", " ", 
      RowBox[{"FixedPoint", "[", 
       RowBox[{
        RowBox[{
         RowBox[{"Join", "[", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"gbnodes", "[", 
             RowBox[{"[", "1", "]"}], "]"}], "}"}], ",", " ", 
           RowBox[{"Table", "[", 
            RowBox[{
             RowBox[{"Module", "[", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{
                "dirs", ",", " ", "netdir", ",", " ", "fnet", ",", " ", 
                 "displ", ",", " ", "newpos"}], "}"}], ",", 
               "\[IndentingNewLine]", 
               RowBox[{
                RowBox[{"dirs", " ", "=", " ", 
                 RowBox[{"Table", "[", 
                  RowBox[{
                   RowBox[{
                    RowBox[{"#", "[", 
                    RowBox[{"[", 
                    RowBox[{
                    RowBox[{"neighbors", "[", 
                    RowBox[{"[", 
                    RowBox[{
                    "level", ",", " ", "node", ",", " ", "i", ",", " ", "1"}],
                     "]"}], "]"}], ",", " ", 
                    RowBox[{"neighbors", "[", 
                    RowBox[{"[", 
                    RowBox[{
                    "level", ",", " ", "node", ",", " ", "i", ",", " ", "2"}],
                     "]"}], "]"}]}], " ", "]"}], "]"}], " ", "-", "  ", 
                    RowBox[{"#", "[", 
                    RowBox[{"[", 
                    RowBox[{"level", ",", " ", "node"}], "]"}], "]"}]}], ",", 
                   " ", 
                   RowBox[{"{", 
                    RowBox[{"i", ",", " ", "1", ",", " ", 
                    RowBox[{"Length", "[", 
                    RowBox[{"neighbors", "[", 
                    RowBox[{"[", 
                    RowBox[{"level", ",", " ", "node"}], "]"}], "]"}], 
                    "]"}]}], "}"}]}], "]"}]}], ";", "\[IndentingNewLine]", 
                RowBox[{"netdir", " ", "=", " ", 
                 RowBox[{"Sum", "[", 
                  RowBox[{
                   RowBox[{"dirs", "[", 
                    RowBox[{"[", "i", "]"}], "]"}], ",", " ", 
                   RowBox[{"{", 
                    RowBox[{"i", ",", " ", "1", ",", " ", 
                    RowBox[{"Length", "[", "dirs", "]"}]}], "}"}]}], "]"}]}], 
                ";", "\[IndentingNewLine]", 
                RowBox[{"fnet", " ", "=", " ", 
                 RowBox[{"ggb", " ", "netdir"}]}], ";", "\[IndentingNewLine]", 
                RowBox[{"displ", " ", "=", " ", 
                 RowBox[{"stepsize", " ", "fnet"}]}], ";", 
                "\[IndentingNewLine]", " ", 
                RowBox[{"newpos", " ", "=", " ", 
                 RowBox[{"displ", " ", "+", " ", 
                  RowBox[{"#", "[", 
                   RowBox[{"[", 
                    RowBox[{"level", ",", " ", "node"}], "]"}], "]"}]}]}], 
                ";", "\[IndentingNewLine]", "newpos"}]}], 
              "\[IndentingNewLine]", "]"}], ",", " ", 
             RowBox[{"{", 
              RowBox[{"level", ",", " ", "2", ",", " ", "8"}], "}"}], ",", 
             " ", 
             RowBox[{"{", 
              RowBox[{"node", ",", " ", "1", ",", " ", 
               RowBox[{"Length", "[", "perimeter", "]"}]}], "}"}]}], "]"}], 
           ",", 
           RowBox[{"{", 
            RowBox[{"gbnodes", "[", 
             RowBox[{"[", "9", "]"}], "]"}], "}"}]}], "]"}], " ", "&"}], ",", 
        " ", "evoln", ",", " ", 
        RowBox[{"If", "[", 
         RowBox[{
          RowBox[{"ggb", " ", "<", "0.2"}], ",", " ", "100", ",", " ", "30"}],
          "]"}], ",", " ", 
        RowBox[{"SameTest", " ", "\[Rule]", " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"SameQ", "[", 
            RowBox[{
             RowBox[{"Round", "[", 
              RowBox[{"#1", ",", " ", "0.01"}], "]"}], ",", " ", 
             RowBox[{"Round", "[", 
              RowBox[{"#2", ",", " ", "0.01"}], "]"}]}], "]"}], " ", "&"}], 
          ")"}]}]}], "]"}]}], ";", "\[IndentingNewLine]", 
     "\[IndentingNewLine]", 
     RowBox[{"gbtris", " ", "=", "  ", 
      RowBox[{"Join", "[", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"Table", "[", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{
             RowBox[{"evoln", "[", 
              RowBox[{"[", 
               RowBox[{"1", ",", " ", "i"}], "]"}], "]"}], ",", " ", 
             RowBox[{"evoln", "[", 
              RowBox[{"[", 
               RowBox[{"1", ",", " ", 
                RowBox[{"If", "[", 
                 RowBox[{
                  RowBox[{"i", " ", "\[Equal]", " ", 
                   RowBox[{"Length", "[", "perimeter", "]"}]}], ",", " ", "1",
                   ",", " ", 
                  RowBox[{"i", "+", "1"}]}], "]"}]}], "]"}], "]"}], ",", " ", 
             
             RowBox[{"evoln", "[", 
              RowBox[{"[", 
               RowBox[{"2", ",", "i"}], "]"}], "]"}]}], "}"}], ",", " ", 
           RowBox[{"{", 
            RowBox[{"i", ",", " ", "1", ",", " ", 
             RowBox[{"Length", "[", "perimeter", "]"}]}], "}"}]}], "]"}], 
         "}"}], ",", " ", 
        RowBox[{"Table", "[", 
         RowBox[{
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{"OddQ", "[", "level", "]"}], ",", " ", 
            RowBox[{"Join", "[", 
             RowBox[{
              RowBox[{"Table", "[", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"evoln", "[", 
                   RowBox[{"[", 
                    RowBox[{
                    RowBox[{"level", "-", "2"}], ",", " ", "node"}], "]"}], 
                   "]"}], ",", " ", 
                  RowBox[{"evoln", "[", 
                   RowBox[{"[", 
                    RowBox[{
                    RowBox[{"level", "-", "1"}], ",", " ", "node"}], "]"}], 
                   "]"}], ",", " ", 
                  RowBox[{"evoln", "[", 
                   RowBox[{"[", 
                    RowBox[{"level", ",", " ", "node"}], "]"}], "]"}]}], 
                 "}"}], ",", " ", 
                RowBox[{"{", 
                 RowBox[{"node", ",", " ", 
                  RowBox[{"Length", "[", "perimeter", "]"}]}], "}"}]}], "]"}],
               ",", 
              RowBox[{"Table", "[", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"evoln", "[", 
                   RowBox[{"[", 
                    RowBox[{
                    RowBox[{"level", "-", "2"}], ",", " ", "node"}], "]"}], 
                   "]"}], ",", " ", 
                  RowBox[{"evoln", "[", 
                   RowBox[{"[", 
                    RowBox[{
                    RowBox[{"level", "-", "1"}], ",", " ", 
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{"node", " ", "\[Equal]", " ", "1"}], ",", " ", 
                    RowBox[{"Length", "[", "perimeter", "]"}], ",", " ", 
                    RowBox[{"node", "-", "1"}]}], "]"}]}], "]"}], "]"}], ",", 
                  " ", 
                  RowBox[{"evoln", "[", 
                   RowBox[{"[", 
                    RowBox[{"level", ",", " ", "node"}], "]"}], "]"}]}], 
                 "}"}], ",", " ", 
                RowBox[{"{", 
                 RowBox[{"node", ",", " ", 
                  RowBox[{"Length", "[", "perimeter", "]"}]}], "}"}]}], 
               "]"}]}], "]"}], ",", "\[IndentingNewLine]", 
            RowBox[{"Join", "[", 
             RowBox[{
              RowBox[{"Table", "[", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"evoln", "[", 
                   RowBox[{"[", 
                    RowBox[{
                    RowBox[{"level", "-", "2"}], ",", " ", "node"}], "]"}], 
                   "]"}], ",", " ", 
                  RowBox[{"evoln", "[", 
                   RowBox[{"[", 
                    RowBox[{
                    RowBox[{"level", "-", "1"}], ",", " ", "node"}], "]"}], 
                   "]"}], ",", " ", 
                  RowBox[{"evoln", "[", 
                   RowBox[{"[", 
                    RowBox[{"level", ",", " ", "node"}], "]"}], "]"}]}], 
                 "}"}], ",", " ", 
                RowBox[{"{", 
                 RowBox[{"node", ",", " ", 
                  RowBox[{"Length", "[", "perimeter", "]"}]}], "}"}]}], "]"}],
               ",", " ", 
              RowBox[{"Table", "[", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"evoln", "[", 
                   RowBox[{"[", 
                    RowBox[{
                    RowBox[{"level", "-", "2"}], ",", " ", "node"}], "]"}], 
                   "]"}], ",", " ", 
                  RowBox[{"evoln", "[", 
                   RowBox[{"[", 
                    RowBox[{
                    RowBox[{"level", "-", "1"}], ",", " ", 
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{"node", " ", "\[Equal]", " ", 
                    RowBox[{"Length", "[", "perimeter", "]"}]}], ",", " ", 
                    "1", ",", " ", 
                    RowBox[{"node", "+", "1"}]}], "]"}]}], "]"}], "]"}], ",", 
                  " ", 
                  RowBox[{"evoln", "[", 
                   RowBox[{"[", 
                    RowBox[{"level", ",", " ", "node"}], "]"}], "]"}]}], 
                 "}"}], ",", " ", 
                RowBox[{"{", 
                 RowBox[{"node", ",", " ", 
                  RowBox[{"Length", "[", "perimeter", "]"}]}], "}"}]}], 
               "]"}]}], "]"}]}], "]"}], ",", " ", 
          RowBox[{"{", 
           RowBox[{"level", ",", " ", "3", ",", " ", "9"}], "}"}]}], "]"}]}], 
       "]"}]}], ";", "\[IndentingNewLine]", "\[IndentingNewLine]", 
     RowBox[{"wrinklearea", " ", "=", " ", 
      RowBox[{"Sum", "[", 
       RowBox[{
        RowBox[{"Re", "@", 
         RowBox[{"findarea", "[", 
          RowBox[{"gbtris", "[", 
           RowBox[{"[", 
            RowBox[{"level", ",", " ", "i"}], "]"}], "]"}], "]"}]}], ",", " ", 
        RowBox[{"{", 
         RowBox[{"level", ",", " ", "1", ",", " ", "8"}], "}"}], ",", " ", 
        RowBox[{"{", 
         RowBox[{"i", ",", " ", "1", ",", " ", 
          RowBox[{"Length", "[", 
           RowBox[{"gbtris", "[", 
            RowBox[{"[", "level", "]"}], "]"}], "]"}]}], "}"}]}], "]"}]}], 
     ";", "\[IndentingNewLine]", 
     RowBox[{"flatarea", " ", "=", " ", 
      RowBox[{"Sum", "[", 
       RowBox[{
        RowBox[{"Re", "@", 
         RowBox[{"findarea", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{
              RowBox[{"gbtris", "[", 
               RowBox[{"[", 
                RowBox[{
                "level", ",", " ", "i", ",", " ", "1", ",", " ", "1"}], "]"}],
                "]"}], ",", " ", 
              RowBox[{"gbtris", "[", 
               RowBox[{"[", 
                RowBox[{
                "level", ",", " ", "i", ",", " ", "1", ",", " ", "2"}], "]"}],
                "]"}], ",", " ", "0"}], "}"}], ",", " ", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"gbtris", "[", 
               RowBox[{"[", 
                RowBox[{
                "level", ",", " ", "i", ",", " ", "2", ",", " ", "1"}], "]"}],
                "]"}], ",", " ", 
              RowBox[{"gbtris", "[", 
               RowBox[{"[", 
                RowBox[{
                "level", ",", " ", "i", ",", " ", "2", ",", " ", "2"}], "]"}],
                "]"}], ",", " ", "0"}], "}"}], ",", " ", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"gbtris", "[", 
               RowBox[{"[", 
                RowBox[{
                "level", ",", " ", "i", ",", " ", "3", ",", " ", "1"}], "]"}],
                "]"}], ",", " ", 
              RowBox[{"gbtris", "[", 
               RowBox[{"[", 
                RowBox[{
                "level", ",", " ", "i", ",", " ", "3", ",", " ", "2"}], "]"}],
                "]"}], ",", " ", "0"}], "}"}]}], "}"}], "]"}]}], ",", " ", 
        RowBox[{"{", 
         RowBox[{"level", ",", " ", "1", ",", " ", "8"}], "}"}], ",", " ", 
        RowBox[{"{", 
         RowBox[{"i", ",", " ", "1", ",", " ", 
          RowBox[{"Length", "[", 
           RowBox[{"gbtris", "[", 
            RowBox[{"[", "level", "]"}], "]"}], "]"}]}], "}"}]}], "]"}]}], 
     ";", "\[IndentingNewLine]", 
     RowBox[{"newarea", " ", "=", " ", 
      RowBox[{"wrinklearea", " ", "-", " ", "flatarea"}]}], ";", " ", 
     "\[IndentingNewLine]", "\[IndentingNewLine]", "\[IndentingNewLine]", 
     "\[IndentingNewLine]", "\[IndentingNewLine]", 
     RowBox[{"(*", " ", 
      RowBox[{
       RowBox[{
        RowBox[{"analyzing", " ", "the", " ", 
         RowBox[{"shapes", ":", " ", 
          RowBox[{"scale", " ", 
           SubscriptBox["W", "A"], " ", "and", " ", 
           SubscriptBox["W", "B"], " ", "to", " ", "have", " ", 
           "volume"}]}]}], " ", "=", " ", "1"}], ",", " ", 
       RowBox[{
       "and", " ", "find", " ", "their", " ", "total", " ", "energies", " ", 
        "and", " ", 
        RowBox[{
         SubscriptBox["\[Gamma]", "PV"], "'"}], "s"}]}], " ", "*)"}], 
     "\[IndentingNewLine]", "\[IndentingNewLine]", 
     RowBox[{"newverts1", " ", "=", " ", 
      RowBox[{
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{"1", "/", "vol1"}], ")"}], 
        RowBox[{"1", "/", "3"}]], " ", "verts1"}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"polys1", " ", "=", " ", 
      RowBox[{"Table", "[", 
       RowBox[{
        RowBox[{"Polygon", "[", 
         RowBox[{"Map", "[", 
          RowBox[{
           RowBox[{
            RowBox[{
             RowBox[{"euler", "[", 
              RowBox[{
               RowBox[{"eu1", "[", 
                RowBox[{"[", "1", "]"}], "]"}], ",", " ", 
               RowBox[{"eu1", "[", 
                RowBox[{"[", "2", "]"}], "]"}], ",", " ", 
               RowBox[{"eu1", "[", 
                RowBox[{"[", "3", "]"}], "]"}], ",", " ", "conv"}], "]"}], 
             ".", "#"}], " ", "&"}], ",", " ", 
           RowBox[{"newverts1", "[", 
            RowBox[{"[", "i", "]"}], "]"}]}], " ", "]"}], " ", "]"}], ",", 
        " ", 
        RowBox[{"{", 
         RowBox[{"i", ",", " ", 
          RowBox[{"Length", "[", "newG1s", "]"}]}], "}"}]}], "]"}]}], ";", 
     "\[IndentingNewLine]", "\[IndentingNewLine]", 
     RowBox[{"wulffshape1", " ", "=", " ", 
      RowBox[{"Graphics3D", "[", 
       RowBox[{
        RowBox[{"Flatten", "@", 
         RowBox[{"Table", "[", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{
             RowBox[{"Opacity", "[", "1", "]"}], ",", " ", 
             RowBox[{"cols1", "[", 
              RowBox[{"[", "i", "]"}], "]"}], ",", " ", 
             RowBox[{"polys1", "[", 
              RowBox[{"[", "i", "]"}], "]"}]}], "}"}], ",", " ", 
           RowBox[{"{", 
            RowBox[{"i", ",", " ", 
             RowBox[{"Length", "[", "newG1s", "]"}]}], "}"}]}], "]"}]}], ",", 
        
        RowBox[{"Lighting", "\[Rule]", "\"\<Neutral\>\""}], ",", 
        RowBox[{"ImageSize", "\[Rule]", " ", "Large"}], ",", 
        RowBox[{"Boxed", "\[Rule]", " ", "False"}], ",", " ", 
        RowBox[{"ViewPoint", " ", "\[Rule]", " ", 
         RowBox[{"10", " ", "vp1"}]}], ",", " ", 
        RowBox[{"ViewVertical", " ", "\[Rule]", " ", "vv1"}]}], "]"}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"plot1", " ", "=", " ", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"!", "showaxes1"}], ",", "wulffshape1", ",", 
        "\[IndentingNewLine]", 
        RowBox[{"Show", "[", 
         RowBox[{"wulffshape1", ",", " ", 
          RowBox[{"Graphics3D", "[", 
           RowBox[{"{", 
            RowBox[{"Magenta", ",", 
             RowBox[{"Arrowheads", "[", "0.05", "]"}], ",", 
             RowBox[{"Arrow", "[", 
              RowBox[{"Tube", "[", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"{", 
                   RowBox[{"0", ",", " ", "0", ",", " ", "0"}], "}"}], ",", 
                  " ", 
                  RowBox[{"axes1", " ", 
                   RowBox[{
                    RowBox[{"euler", "[", 
                    RowBox[{
                    RowBox[{"eu1", "[", 
                    RowBox[{"[", "1", "]"}], "]"}], ",", " ", 
                    RowBox[{"eu1", "[", 
                    RowBox[{"[", "2", "]"}], "]"}], ",", " ", 
                    RowBox[{"eu1", "[", 
                    RowBox[{"[", "3", "]"}], "]"}], ",", " ", "conv"}], "]"}],
                     ".", "avect1"}]}]}], "}"}], ",", "0.025"}], "]"}], "]"}],
              ",", "Red", ",", 
             RowBox[{"Arrow", "[", 
              RowBox[{"Tube", "[", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"{", 
                   RowBox[{"0", ",", " ", "0", ",", " ", "0"}], "}"}], ",", 
                  " ", 
                  RowBox[{"axes1", " ", 
                   RowBox[{"{", 
                    RowBox[{"1", ",", " ", "0", ",", " ", "0"}], "}"}]}]}], 
                 "}"}], ",", "0.025"}], "]"}], "]"}]}], "}"}], "]"}], ",", 
          " ", 
          RowBox[{"Graphics3D", "[", 
           RowBox[{"{", 
            RowBox[{"Yellow", ",", 
             RowBox[{"Arrowheads", "[", "0.05", "]"}], ",", 
             RowBox[{"Arrow", "[", 
              RowBox[{"Tube", "[", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"{", 
                   RowBox[{"0", ",", " ", "0", ",", " ", "0"}], "}"}], ",", 
                  " ", 
                  RowBox[{"axes1", " ", 
                   RowBox[{
                    RowBox[{"euler", "[", 
                    RowBox[{
                    RowBox[{"eu1", "[", 
                    RowBox[{"[", "1", "]"}], "]"}], ",", " ", 
                    RowBox[{"eu1", "[", 
                    RowBox[{"[", "2", "]"}], "]"}], ",", " ", 
                    RowBox[{"eu1", "[", 
                    RowBox[{"[", "3", "]"}], "]"}], ",", " ", "conv"}], "]"}],
                     ".", "bvect1"}]}]}], "}"}], ",", "0.025"}], "]"}], "]"}],
              ",", " ", "Green", ",", " ", 
             RowBox[{"Arrow", "[", 
              RowBox[{"Tube", "[", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"{", 
                   RowBox[{"0", ",", " ", "0", ",", " ", "0"}], "}"}], ",", 
                  " ", 
                  RowBox[{"axes1", " ", 
                   RowBox[{"{", 
                    RowBox[{"0", ",", " ", "1", ",", " ", "0"}], "}"}]}]}], 
                 "}"}], ",", "0.025"}], "]"}], "]"}]}], "}"}], "]"}], ",", 
          " ", 
          RowBox[{"Graphics3D", "[", 
           RowBox[{"{", 
            RowBox[{"Cyan", ",", 
             RowBox[{"Arrowheads", "[", "0.05", "]"}], ",", 
             RowBox[{"Arrow", "[", 
              RowBox[{"Tube", "[", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"{", 
                   RowBox[{"0", ",", " ", "0", ",", " ", "0"}], "}"}], ",", 
                  " ", 
                  RowBox[{"axes1", " ", 
                   RowBox[{
                    RowBox[{"euler", "[", 
                    RowBox[{
                    RowBox[{"eu1", "[", 
                    RowBox[{"[", "1", "]"}], "]"}], ",", " ", 
                    RowBox[{"eu1", "[", 
                    RowBox[{"[", "2", "]"}], "]"}], ",", " ", 
                    RowBox[{"eu1", "[", 
                    RowBox[{"[", "3", "]"}], "]"}], ",", " ", "conv"}], "]"}],
                     ".", "cvect1"}]}]}], "}"}], ",", "0.025"}], "]"}], "]"}],
              ",", " ", "Blue", ",", " ", 
             RowBox[{"Arrow", "[", 
              RowBox[{"Tube", "[", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"{", 
                   RowBox[{"0", ",", " ", "0", ",", " ", "0"}], "}"}], ",", 
                  " ", 
                  RowBox[{"axes1", " ", 
                   RowBox[{"{", 
                    RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}]}]}], 
                 "}"}], ",", "0.025"}], "]"}], "]"}]}], "}"}], "]"}], ",", 
          "\[IndentingNewLine]", 
          RowBox[{"Boxed", "\[Rule]", " ", "False"}], ",", 
          RowBox[{"ImageSize", "\[Rule]", " ", "Large"}], ",", " ", 
          RowBox[{"SphericalRegion", "\[Rule]", "True"}]}], "]"}]}], 
       "\[IndentingNewLine]", "]"}]}], ";", "\[IndentingNewLine]", 
     "\[IndentingNewLine]", 
     RowBox[{"etop", " ", "=", " ", 
      RowBox[{"Module", "[", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"areas", ",", " ", "gammas", ",", " ", "etot"}], "}"}], ",", 
        "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{"areas", " ", "=", " ", 
          RowBox[{"Table", "[", 
           RowBox[{
            RowBox[{"Re", "[", 
             RowBox[{"findarea", "[", 
              RowBox[{"newverts1", "[", 
               RowBox[{"[", "i", "]"}], "]"}], "]"}], "]"}], ",", " ", 
            RowBox[{"{", 
             RowBox[{"i", ",", " ", "1", ",", " ", 
              RowBox[{"Length", "[", "newG1s", "]"}]}], "}"}]}], "]"}]}], ";",
          "\[IndentingNewLine]", 
         RowBox[{"gammas", " ", "=", " ", 
          RowBox[{"Table", "[", 
           RowBox[{
            RowBox[{"Norm", "[", 
             RowBox[{"newG1s", "[", 
              RowBox[{"[", 
               RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], "]"}], ",", " ", 
            RowBox[{"{", 
             RowBox[{"i", ",", " ", "1", ",", " ", 
              RowBox[{"Length", "[", "newG1s", "]"}]}], "}"}]}], "]"}]}], ";",
          "\[IndentingNewLine]", 
         RowBox[{"etot", " ", "=", " ", 
          RowBox[{"Sum", "[", 
           RowBox[{
            RowBox[{
             RowBox[{"areas", "[", 
              RowBox[{"[", "i", "]"}], "]"}], " ", 
             RowBox[{"gammas", "[", 
              RowBox[{"[", "i", "]"}], "]"}]}], ",", " ", 
            RowBox[{"{", 
             RowBox[{"i", ",", " ", "1", ",", " ", 
              RowBox[{"Length", "[", "newG1s", "]"}]}], "}"}]}], "]"}]}]}]}], 
       "\[IndentingNewLine]", "]"}]}], ";", "\[IndentingNewLine]", 
     "\[IndentingNewLine]", 
     RowBox[{"gpv1", " ", "=", " ", 
      RowBox[{"Module", "[", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"wnormz", ",", " ", "gammapv"}], "}"}], ",", 
        "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{"wnormz", " ", "=", " ", 
          RowBox[{"Table", "[", 
           RowBox[{
            RowBox[{"rot", ".", 
             RowBox[{"newG1s", "[", 
              RowBox[{"[", 
               RowBox[{"i", ",", " ", "1"}], "]"}], "]"}]}], ",", " ", 
            RowBox[{"{", 
             RowBox[{"i", ",", " ", 
              RowBox[{"Length", "[", "newG1s", "]"}]}], "}"}]}], "]"}]}], ";",
          "\[IndentingNewLine]", 
         RowBox[{"gammapv", " ", "=", " ", 
          RowBox[{
           RowBox[{"Sort", "[", 
            RowBox[{
             RowBox[{"Select", "[", 
              RowBox[{
               RowBox[{"Table", "[", 
                RowBox[{
                 RowBox[{"If", "[", 
                  RowBox[{
                   RowBox[{
                    RowBox[{"wnormz", "[", 
                    RowBox[{"[", 
                    RowBox[{"i", ",", " ", "3"}], "]"}], "]"}], " ", "<", " ",
                     "0"}], ",", " ", 
                   RowBox[{"{", 
                    RowBox[{"i", ",", " ", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    SuperscriptBox[
                    RowBox[{"wnormz", "[", 
                    RowBox[{"[", 
                    RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], "2"], " ", 
                    "+", " ", 
                    SuperscriptBox[
                    RowBox[{"wnormz", "[", 
                    RowBox[{"[", 
                    RowBox[{"i", ",", " ", "2"}], "]"}], "]"}], "2"], " ", 
                    "+", " ", 
                    SuperscriptBox[
                    RowBox[{"wnormz", "[", 
                    RowBox[{"[", 
                    RowBox[{"i", ",", " ", "3"}], "]"}], "]"}], "2"]}], ")"}],
                     "/", 
                    RowBox[{"(", 
                    RowBox[{"-", 
                    RowBox[{"wnormz", "[", 
                    RowBox[{"[", 
                    RowBox[{"i", ",", " ", "3"}], "]"}], "]"}]}], ")"}]}]}], 
                    "}"}], ",", " ", "Null"}], "]"}], ",", " ", 
                 RowBox[{"{", 
                  RowBox[{"i", ",", " ", 
                   RowBox[{"Length", "[", "wnormz", "]"}]}], "}"}]}], "]"}], 
               ",", " ", 
               RowBox[{
                RowBox[{"!", 
                 RowBox[{"SameQ", "[", 
                  RowBox[{"#", ",", " ", "Null"}], "]"}]}], " ", "&"}]}], 
              "]"}], ",", " ", 
             RowBox[{
              RowBox[{
               RowBox[{"#1", "[", 
                RowBox[{"[", "2", "]"}], "]"}], " ", "<", " ", 
               RowBox[{"#2", "[", 
                RowBox[{"[", "2", "]"}], "]"}]}], " ", "&"}]}], "]"}], "[", 
           RowBox[{"[", 
            RowBox[{"1", ",", " ", "2"}], "]"}], "]"}]}], ";", 
         "\[IndentingNewLine]", "gammapv"}]}], "\[IndentingNewLine]", "]"}]}],
      ";", "\[IndentingNewLine]", "\[IndentingNewLine]", 
     RowBox[{"newverts2", " ", "=", " ", 
      RowBox[{
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{"1", "/", "vol2"}], ")"}], 
        RowBox[{"1", "/", "3"}]], " ", "verts2"}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"polys2", " ", "=", " ", 
      RowBox[{"Table", "[", 
       RowBox[{
        RowBox[{"Polygon", "[", 
         RowBox[{"Map", "[", 
          RowBox[{
           RowBox[{
            RowBox[{
             RowBox[{"euler", "[", 
              RowBox[{
               RowBox[{"eu2", "[", 
                RowBox[{"[", "1", "]"}], "]"}], ",", " ", 
               RowBox[{"eu2", "[", 
                RowBox[{"[", "2", "]"}], "]"}], ",", " ", 
               RowBox[{"eu2", "[", 
                RowBox[{"[", "3", "]"}], "]"}], ",", " ", "conv"}], "]"}], 
             ".", "#"}], " ", "&"}], ",", " ", 
           RowBox[{"newverts2", "[", 
            RowBox[{"[", "i", "]"}], "]"}]}], " ", "]"}], "]"}], ",", " ", 
        RowBox[{"{", 
         RowBox[{"i", ",", " ", 
          RowBox[{"Length", "[", "newG2s", "]"}]}], "}"}]}], "]"}]}], ";", 
     "\[IndentingNewLine]", "\[IndentingNewLine]", 
     RowBox[{"wulffshape2", " ", "=", " ", 
      RowBox[{"Graphics3D", "[", 
       RowBox[{
        RowBox[{"Flatten", "@", 
         RowBox[{"Table", "[", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{
             RowBox[{"Opacity", "[", "1", "]"}], ",", " ", 
             RowBox[{"cols2", "[", 
              RowBox[{"[", "i", "]"}], "]"}], ",", " ", 
             RowBox[{"polys2", "[", 
              RowBox[{"[", "i", "]"}], "]"}]}], "}"}], ",", " ", 
           RowBox[{"{", 
            RowBox[{"i", ",", " ", 
             RowBox[{"Length", "[", "newG2s", "]"}]}], "}"}]}], "]"}]}], ",", 
        
        RowBox[{"Lighting", "\[Rule]", "\"\<Neutral\>\""}], ",", 
        RowBox[{"ImageSize", "\[Rule]", " ", "Large"}], ",", 
        RowBox[{"Boxed", "\[Rule]", " ", "False"}], ",", " ", 
        RowBox[{"ViewPoint", " ", "\[Rule]", " ", 
         RowBox[{"10", " ", "vp2"}]}], ",", " ", 
        RowBox[{"ViewVertical", " ", "\[Rule]", " ", "vv2"}]}], "]"}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"plot2", " ", "=", " ", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"!", "showaxes2"}], ",", "wulffshape2", ",", 
        "\[IndentingNewLine]", 
        RowBox[{"Show", "[", 
         RowBox[{"wulffshape2", ",", " ", 
          RowBox[{"Graphics3D", "[", 
           RowBox[{"{", 
            RowBox[{"Magenta", ",", 
             RowBox[{"Arrowheads", "[", "0.05", "]"}], ",", 
             RowBox[{"Arrow", "[", 
              RowBox[{"Tube", "[", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"{", 
                   RowBox[{"0", ",", " ", "0", ",", " ", "0"}], "}"}], ",", 
                  " ", 
                  RowBox[{"axes2", " ", 
                   RowBox[{
                    RowBox[{"euler", "[", 
                    RowBox[{
                    RowBox[{"eu2", "[", 
                    RowBox[{"[", "1", "]"}], "]"}], ",", " ", 
                    RowBox[{"eu2", "[", 
                    RowBox[{"[", "2", "]"}], "]"}], ",", " ", 
                    RowBox[{"eu2", "[", 
                    RowBox[{"[", "3", "]"}], "]"}], ",", " ", "conv"}], "]"}],
                     ".", "avect2"}]}]}], "}"}], ",", "0.025"}], "]"}], "]"}],
              ",", "Red", ",", 
             RowBox[{"Arrow", "[", 
              RowBox[{"Tube", "[", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"{", 
                   RowBox[{"0", ",", " ", "0", ",", " ", "0"}], "}"}], ",", 
                  " ", 
                  RowBox[{"axes2", " ", 
                   RowBox[{"{", 
                    RowBox[{"1", ",", " ", "0", ",", " ", "0"}], "}"}]}]}], 
                 "}"}], ",", "0.025"}], "]"}], "]"}]}], "}"}], "]"}], ",", 
          " ", 
          RowBox[{"Graphics3D", "[", 
           RowBox[{"{", 
            RowBox[{"Yellow", ",", 
             RowBox[{"Arrowheads", "[", "0.05", "]"}], ",", 
             RowBox[{"Arrow", "[", 
              RowBox[{"Tube", "[", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"{", 
                   RowBox[{"0", ",", " ", "0", ",", " ", "0"}], "}"}], ",", 
                  " ", 
                  RowBox[{"axes2", " ", 
                   RowBox[{
                    RowBox[{"euler", "[", 
                    RowBox[{
                    RowBox[{"eu2", "[", 
                    RowBox[{"[", "1", "]"}], "]"}], ",", " ", 
                    RowBox[{"eu2", "[", 
                    RowBox[{"[", "2", "]"}], "]"}], ",", " ", 
                    RowBox[{"eu2", "[", 
                    RowBox[{"[", "3", "]"}], "]"}], ",", " ", "conv"}], "]"}],
                     ".", "bvect2"}]}]}], "}"}], ",", "0.025"}], "]"}], "]"}],
              ",", " ", "Green", ",", " ", 
             RowBox[{"Arrow", "[", 
              RowBox[{"Tube", "[", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"{", 
                   RowBox[{"0", ",", " ", "0", ",", " ", "0"}], "}"}], ",", 
                  " ", 
                  RowBox[{"axes2", " ", 
                   RowBox[{"{", 
                    RowBox[{"0", ",", " ", "1", ",", " ", "0"}], "}"}]}]}], 
                 "}"}], ",", "0.025"}], "]"}], "]"}]}], "}"}], "]"}], ",", 
          " ", 
          RowBox[{"Graphics3D", "[", 
           RowBox[{"{", 
            RowBox[{"Cyan", ",", 
             RowBox[{"Arrowheads", "[", "0.05", "]"}], ",", 
             RowBox[{"Arrow", "[", 
              RowBox[{"Tube", "[", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"{", 
                   RowBox[{"0", ",", " ", "0", ",", " ", "0"}], "}"}], ",", 
                  " ", 
                  RowBox[{"axes2", " ", 
                   RowBox[{
                    RowBox[{"euler", "[", 
                    RowBox[{
                    RowBox[{"eu2", "[", 
                    RowBox[{"[", "1", "]"}], "]"}], ",", " ", 
                    RowBox[{"eu2", "[", 
                    RowBox[{"[", "2", "]"}], "]"}], ",", " ", 
                    RowBox[{"eu2", "[", 
                    RowBox[{"[", "3", "]"}], "]"}], ",", " ", "conv"}], "]"}],
                     ".", "cvect2"}]}]}], "}"}], ",", "0.025"}], "]"}], "]"}],
              ",", " ", "Blue", ",", " ", 
             RowBox[{"Arrow", "[", 
              RowBox[{"Tube", "[", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"{", 
                   RowBox[{"0", ",", " ", "0", ",", " ", "0"}], "}"}], ",", 
                  " ", 
                  RowBox[{"axes2", " ", 
                   RowBox[{"{", 
                    RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}]}]}], 
                 "}"}], ",", "0.025"}], "]"}], "]"}]}], "}"}], "]"}], ",", 
          "\[IndentingNewLine]", 
          RowBox[{"Boxed", "\[Rule]", " ", "False"}], ",", 
          RowBox[{"ImageSize", "\[Rule]", " ", "Large"}], ",", " ", 
          RowBox[{"SphericalRegion", "\[Rule]", "True"}]}], "]"}]}], 
       "\[IndentingNewLine]", "]"}]}], ";", "\[IndentingNewLine]", 
     "\[IndentingNewLine]", 
     RowBox[{"ebot", " ", "=", " ", 
      RowBox[{"Module", "[", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"areas", ",", " ", "gammas", ",", " ", "etot"}], "}"}], ",", 
        "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{"areas", " ", "=", " ", 
          RowBox[{"Table", "[", 
           RowBox[{
            RowBox[{"Re", "[", 
             RowBox[{"findarea", "[", 
              RowBox[{"newverts2", "[", 
               RowBox[{"[", "i", "]"}], "]"}], "]"}], "]"}], ",", " ", 
            RowBox[{"{", 
             RowBox[{"i", ",", " ", "1", ",", " ", 
              RowBox[{"Length", "[", "newG2s", "]"}]}], "}"}]}], "]"}]}], ";",
          "\[IndentingNewLine]", 
         RowBox[{"gammas", " ", "=", " ", 
          RowBox[{"Table", "[", 
           RowBox[{
            RowBox[{"Norm", "[", 
             RowBox[{"newG2s", "[", 
              RowBox[{"[", 
               RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], "]"}], ",", " ", 
            RowBox[{"{", 
             RowBox[{"i", ",", " ", "1", ",", " ", 
              RowBox[{"Length", "[", "newG2s", "]"}]}], "}"}]}], "]"}]}], ";",
          "\[IndentingNewLine]", 
         RowBox[{"etot", " ", "=", " ", 
          RowBox[{"Sum", "[", 
           RowBox[{
            RowBox[{
             RowBox[{"areas", "[", 
              RowBox[{"[", "i", "]"}], "]"}], " ", 
             RowBox[{"gammas", "[", 
              RowBox[{"[", "i", "]"}], "]"}]}], ",", " ", 
            RowBox[{"{", 
             RowBox[{"i", ",", " ", "1", ",", " ", 
              RowBox[{"Length", "[", "newG2s", "]"}]}], "}"}]}], "]"}]}]}]}], 
       "\[IndentingNewLine]", "]"}]}], ";", "\[IndentingNewLine]", 
     "\[IndentingNewLine]", 
     RowBox[{"gpv2", " ", "=", " ", 
      RowBox[{"Module", "[", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"wnormz", ",", " ", "gammapv"}], "}"}], ",", 
        "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{"wnormz", " ", "=", " ", 
          RowBox[{"Table", "[", 
           RowBox[{
            RowBox[{"rot", ".", 
             RowBox[{"newG2s", "[", 
              RowBox[{"[", 
               RowBox[{"i", ",", " ", "1"}], "]"}], "]"}]}], ",", " ", 
            RowBox[{"{", 
             RowBox[{"i", ",", " ", 
              RowBox[{"Length", "[", "newG2s", "]"}]}], "}"}]}], "]"}]}], ";",
          "\[IndentingNewLine]", 
         RowBox[{"gammapv", " ", "=", " ", 
          RowBox[{
           RowBox[{"Sort", "[", 
            RowBox[{
             RowBox[{"Select", "[", 
              RowBox[{
               RowBox[{"Table", "[", 
                RowBox[{
                 RowBox[{"If", "[", 
                  RowBox[{
                   RowBox[{
                    RowBox[{"wnormz", "[", 
                    RowBox[{"[", 
                    RowBox[{"i", ",", " ", "3"}], "]"}], "]"}], " ", "<", " ",
                     "0"}], ",", " ", 
                   RowBox[{"{", 
                    RowBox[{"i", ",", " ", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    SuperscriptBox[
                    RowBox[{"wnormz", "[", 
                    RowBox[{"[", 
                    RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], "2"], " ", 
                    "+", " ", 
                    SuperscriptBox[
                    RowBox[{"wnormz", "[", 
                    RowBox[{"[", 
                    RowBox[{"i", ",", " ", "2"}], "]"}], "]"}], "2"], " ", 
                    "+", " ", 
                    SuperscriptBox[
                    RowBox[{"wnormz", "[", 
                    RowBox[{"[", 
                    RowBox[{"i", ",", " ", "3"}], "]"}], "]"}], "2"]}], ")"}],
                     "/", 
                    RowBox[{"(", 
                    RowBox[{"-", 
                    RowBox[{"wnormz", "[", 
                    RowBox[{"[", 
                    RowBox[{"i", ",", " ", "3"}], "]"}], "]"}]}], ")"}]}]}], 
                    "}"}], ",", " ", "Null"}], "]"}], ",", " ", 
                 RowBox[{"{", 
                  RowBox[{"i", ",", " ", 
                   RowBox[{"Length", "[", "wnormz", "]"}]}], "}"}]}], "]"}], 
               ",", " ", 
               RowBox[{
                RowBox[{"!", 
                 RowBox[{"SameQ", "[", 
                  RowBox[{"#", ",", " ", "Null"}], "]"}]}], " ", "&"}]}], 
              "]"}], ",", " ", 
             RowBox[{
              RowBox[{
               RowBox[{"#1", "[", 
                RowBox[{"[", "2", "]"}], "]"}], " ", "<", " ", 
               RowBox[{"#2", "[", 
                RowBox[{"[", "2", "]"}], "]"}]}], " ", "&"}]}], "]"}], "[", 
           RowBox[{"[", 
            RowBox[{"1", ",", " ", "2"}], "]"}], "]"}]}], ";", 
         "\[IndentingNewLine]", "gammapv"}]}], "\[IndentingNewLine]", "]"}]}],
      ";", "\[IndentingNewLine]", "\[IndentingNewLine]", 
     "\[IndentingNewLine]", "\[IndentingNewLine]", 
     StyleBox[
      RowBox[{"(*", " ", 
       RowBox[{"energy", " ", "analysis", " ", "and", " ", "plotting"}], " ", 
       "*)"}],
      FontSize->18], "\[IndentingNewLine]", 
     StyleBox["\[IndentingNewLine]",
      FontSize->18], 
     RowBox[{"agb", " ", "=", " ", 
      RowBox[{"Re", "[", 
       RowBox[{"findarea", "[", 
        RowBox[{"Table", "[", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{
            RowBox[{"perimeter", "[", 
             RowBox[{"[", 
              RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], ",", " ", 
            RowBox[{"perimeter", "[", 
             RowBox[{"[", 
              RowBox[{"i", ",", " ", "2"}], "]"}], "]"}], ",", " ", "0"}], 
           "}"}], ",", " ", 
          RowBox[{"{", 
           RowBox[{"i", ",", " ", 
            RowBox[{"Length", "[", "perimeter", "]"}]}], "}"}]}], "]"}], 
        "]"}], "]"}]}], ";", "\[IndentingNewLine]", "\[IndentingNewLine]", 
     RowBox[{"energetics", " ", "=", " ", 
      RowBox[{"Module", "[", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{
         "tote", ",", " ", "totwet", ",", " ", "test", ",", " ", "theta1", 
          ",", " ", "theta2"}], "}"}], ",", "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{"tote", " ", "=", " ", 
          RowBox[{"Sum", "[", 
           RowBox[{
            RowBox[{
             RowBox[{"Re", "[", 
              RowBox[{"findarea", "[", 
               RowBox[{"verts", "[", 
                RowBox[{"[", "i", "]"}], "]"}], "]"}], "]"}], " ", 
             RowBox[{"Norm", "[", 
              RowBox[{"newGsa", "[", 
               RowBox[{"[", 
                RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], "]"}]}], " ", ",",
             " ", 
            RowBox[{"{", 
             RowBox[{"i", ",", " ", "1", ",", " ", 
              RowBox[{"Length", "[", "newGsa", "]"}]}], "}"}]}], "]"}]}], ";",
          "\[IndentingNewLine]", 
         RowBox[{"totwet", " ", "=", " ", 
          RowBox[{"Re", "[", 
           RowBox[{"tote", " ", "-", " ", 
            RowBox[{"(", 
             RowBox[{"ggb", " ", "agb"}], ")"}], " ", "+", " ", 
            RowBox[{"(", 
             RowBox[{"ggb", " ", "newarea"}], ")"}]}], "]"}]}], ";", 
         "\[IndentingNewLine]", 
         RowBox[{"test", " ", "=", " ", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"totwet", "/", "etop"}], ",", " ", 
            RowBox[{"totwet", "/", "ebot"}]}], "}"}]}], ";", 
         "\[IndentingNewLine]", 
         RowBox[{"theta1", " ", "=", " ", 
          RowBox[{"ArcCos", "[", 
           RowBox[{"ggb", "/", 
            RowBox[{"(", 
             RowBox[{"2", " ", "gpv1"}], ")"}]}], "]"}]}], ";", 
         "\[IndentingNewLine]", 
         RowBox[{"theta2", " ", "=", " ", 
          RowBox[{"ArcCos", "[", 
           RowBox[{"ggb", "/", 
            RowBox[{"(", 
             RowBox[{"2", " ", "gpv2"}], ")"}]}], "]"}]}], ";", 
         "\[IndentingNewLine]", 
         RowBox[{"{", 
          RowBox[{
          "test", ",", " ", "theta1", ",", " ", "theta2", ",", " ", "totwet", 
           ",", " ", 
           RowBox[{"{", 
            RowBox[{"tote", ",", " ", 
             RowBox[{"(", 
              RowBox[{"ggb", " ", "agb"}], ")"}], ",", " ", 
             RowBox[{"(", 
              RowBox[{"ggb", " ", "newarea"}], ")"}]}], "}"}]}], "}"}]}]}], 
       "\[IndentingNewLine]", "]"}]}], ";", "\[IndentingNewLine]", 
     "\[IndentingNewLine]", 
     RowBox[{"epi", " ", "=", " ", 
      RowBox[{"Style", "[", 
       RowBox[{
        RowBox[{"If", "[", 
         RowBox[{
          RowBox[{
           RowBox[{"ggb", " ", "\[GreaterEqual]", " ", 
            RowBox[{"2", " ", 
             RowBox[{"Max", "[", "ds1", "]"}]}]}], " ", "\[Or]", " ", 
           RowBox[{"ggb", " ", "\[GreaterEqual]", " ", 
            RowBox[{"2", " ", 
             RowBox[{"Max", "[", "ds2", "]"}]}]}]}], ",", " ", 
          "\"\<Complete wetting\>\"", ",", " ", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{
             RowBox[{"Max", "[", 
              RowBox[{"energetics", "[", 
               RowBox[{"[", "1", "]"}], "]"}], "]"}], " ", ">", " ", "1"}], 
            ",", " ", 
            RowBox[{"\"\<Unstable: Particle will go into bulk \>\"", "<>", 
             RowBox[{"If", "[", 
              RowBox[{
               RowBox[{"etop", " ", "<", " ", "ebot"}], ",", " ", "\"\<A\>\"",
                ",", " ", "\"\<B\>\""}], "]"}]}], ",", " ", 
            RowBox[{"If", "[", 
             RowBox[{
              RowBox[{
               RowBox[{"Min", "[", 
                RowBox[{"energetics", "[", 
                 RowBox[{"[", "1", "]"}], "]"}], "]"}], " ", ">", " ", "0"}], 
              ",", " ", "\"\<Partial wetting\>\"", ",", " ", 
              "\"\<Complete wetting\>\""}], "]"}]}], "]"}]}], "]"}], ",", " ",
         "20"}], "]"}]}], ";", "\[IndentingNewLine]", "\[IndentingNewLine]", 
     RowBox[{"plotr", " ", "=", " ", 
      RowBox[{"Show", "[", 
       RowBox[{
        RowBox[{"Graphics3D", "[", 
         RowBox[{
          RowBox[{"Flatten", "@", 
           RowBox[{"Table", "[", 
            RowBox[{
             RowBox[{"Polygon", "[", 
              RowBox[{"gbtris", "[", 
               RowBox[{"[", 
                RowBox[{"level", ",", " ", "i"}], "]"}], "]"}], "]"}], ",", 
             " ", 
             RowBox[{"{", 
              RowBox[{"level", ",", " ", "gbsizer"}], "}"}], ",", " ", 
             RowBox[{"{", 
              RowBox[{"i", ",", " ", "1", ",", " ", 
               RowBox[{"Length", "[", 
                RowBox[{"gbtris", "[", 
                 RowBox[{"[", "level", "]"}], "]"}], "]"}]}], "}"}]}], 
            "]"}]}], ",", " ", 
          RowBox[{"Lighting", " ", "\[Rule]", " ", "\"\<Neutral\>\""}], ",", 
          " ", 
          RowBox[{"ViewPoint", " ", "\[Rule]", " ", 
           RowBox[{"50", " ", "vpr"}]}], ",", " ", 
          RowBox[{"ViewVertical", " ", "\[Rule]", " ", "vvr"}]}], "]"}], ",", 
        " ", 
        RowBox[{"Graphics3D", "[", 
         RowBox[{"{", 
          RowBox[{"Red", ",", 
           RowBox[{"Arrowheads", "[", "0.05", "]"}], ",", 
           RowBox[{"Arrow", "[", 
            RowBox[{"Tube", "[", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{"0", ",", " ", "0", ",", " ", "0"}], "}"}], ",", " ", 
                RowBox[{"axes2", " ", 
                 RowBox[{"{", 
                  RowBox[{"1", ",", " ", "0", ",", " ", "0"}], "}"}]}]}], 
               "}"}], ",", "0.025"}], "]"}], "]"}], ",", " ", "Green", ",", 
           " ", 
           RowBox[{"Arrow", "[", 
            RowBox[{"Tube", "[", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{"0", ",", " ", "0", ",", " ", "0"}], "}"}], ",", " ", 
                RowBox[{"axes2", " ", 
                 RowBox[{"{", 
                  RowBox[{"0", ",", " ", "1", ",", " ", "0"}], "}"}]}]}], 
               "}"}], ",", "0.025"}], "]"}], "]"}], ",", "Blue", ",", " ", 
           RowBox[{"Arrow", "[", 
            RowBox[{"Tube", "[", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{"0", ",", " ", "0", ",", " ", "0"}], "}"}], ",", " ", 
                RowBox[{"axes2", " ", 
                 RowBox[{"{", 
                  RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}]}]}], 
               "}"}], ",", "0.025"}], "]"}], "]"}]}], "}"}], "]"}], ",", "  ", 
        RowBox[{"Sequence", "@", 
         RowBox[{"If", "[", 
          RowBox[{
           RowBox[{"!", "showperim"}], ",", " ", 
           RowBox[{"{", 
            RowBox[{"Graphics3D", "[", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"Opacity", "[", "opacityr", "]"}], ",", " ", 
               RowBox[{"Sequence", "@", 
                RowBox[{"Flatten", "[", 
                 RowBox[{
                  RowBox[{"Table", "[", 
                   RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"cols", "[", 
                    RowBox[{"[", "i", "]"}], "]"}], ",", " ", 
                    RowBox[{"Polygon", "[", 
                    RowBox[{"verts", "[", 
                    RowBox[{"[", "i", "]"}], "]"}], "]"}]}], "}"}], ",", " ", 
                    
                    RowBox[{"{", 
                    RowBox[{"i", ",", " ", 
                    RowBox[{"Length", "[", "verts", "]"}]}], "}"}]}], "]"}], 
                  ",", " ", "1"}], "]"}]}]}], "}"}], "]"}], "}"}], ",", " ", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"Graphics3D", "[", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"Opacity", "[", "opacityr", "]"}], ",", " ", 
                RowBox[{"Sequence", "@", 
                 RowBox[{"Flatten", "[", 
                  RowBox[{
                   RowBox[{"Table", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"cols", "[", 
                    RowBox[{"[", "i", "]"}], "]"}], ",", " ", 
                    RowBox[{"Polygon", "[", 
                    RowBox[{"verts", "[", 
                    RowBox[{"[", "i", "]"}], "]"}], "]"}]}], "}"}], ",", " ", 
                    
                    RowBox[{"{", 
                    RowBox[{"i", ",", " ", 
                    RowBox[{"Length", "[", "verts", "]"}]}], "}"}]}], "]"}], 
                   ",", " ", "1"}], "]"}]}]}], "}"}], "]"}], ",", " ", 
             RowBox[{"Graphics3D", "[", 
              RowBox[{"{", 
               RowBox[{"Black", ",", " ", 
                RowBox[{"Tube", "[", 
                 RowBox[{
                  RowBox[{"Join", "[", 
                   RowBox[{"perimeterverts", ",", " ", 
                    RowBox[{"{", 
                    RowBox[{"perimeterverts", "[", 
                    RowBox[{"[", "1", "]"}], "]"}], "}"}]}], " ", "]"}], ",", 
                  " ", "perimsize"}], "]"}]}], "}"}], "]"}]}], "}"}]}], 
          "]"}]}], ",", " ", 
        RowBox[{"Boxed", " ", "\[Rule]", " ", "False"}], ",", " ", 
        RowBox[{"(*", " ", 
         RowBox[{
          RowBox[{"PlotLabel", " ", "\[Rule]", " ", "epi"}], ","}], " ", 
         "*)"}], " ", 
        RowBox[{"ViewPoint", " ", "\[Rule]", " ", 
         RowBox[{"50", " ", "vpr"}]}], ",", " ", 
        RowBox[{"ViewVertical", " ", "\[Rule]", " ", "vvr"}], ",", " ", 
        RowBox[{"BoxRatios", " ", "\[Rule]", " ", "Automatic"}]}], "]"}]}], 
     ";", "\[IndentingNewLine]", "\[IndentingNewLine]", 
     RowBox[{"showwulff", " ", "=", " ", 
      RowBox[{"argument", "[", 
       RowBox[{"[", 
        RowBox[{"5", ",", " ", "2"}], "]"}], "]"}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"showstats", " ", "=", " ", 
      RowBox[{"argument", "[", 
       RowBox[{"[", 
        RowBox[{"5", ",", " ", "4"}], "]"}], "]"}]}], ";", 
     "\[IndentingNewLine]", "\[IndentingNewLine]", 
     RowBox[{"plotl", " ", "=", " ", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"!", "showwulff"}], ",", " ", "plotr", ",", " ", 
        RowBox[{"GraphicsColumn", "[", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"GraphicsRow", "[", 
            RowBox[{"{", 
             RowBox[{"plot1", ",", " ", "plot2"}], "}"}], "]"}], ",", " ", 
           "plotr"}], "}"}], "]"}]}], "]"}]}], ";", "\[IndentingNewLine]", 
     "\[IndentingNewLine]", 
     RowBox[{"If", "[", 
      RowBox[{
       RowBox[{"!", "showstats"}], ",", " ", "plotl", ",", " ", 
       RowBox[{"GraphicsColumn", "[", 
        RowBox[{"{", 
         RowBox[{"plotl", ",", " ", 
          RowBox[{"Column", "[", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"Style", "[", 
              RowBox[{
               RowBox[{
               "\"\<\!\(\*SubscriptBox[\(\[Theta]\), \(PA\)]\) = \>\"", "<>", 
                
                RowBox[{"ToString", "[", 
                 RowBox[{"Round", "[", 
                  RowBox[{
                   RowBox[{
                    RowBox[{"energetics", "[", 
                    RowBox[{"[", "2", "]"}], "]"}], " ", 
                    RowBox[{"180.", "/", "Pi"}]}], ",", " ", "0.1"}], "]"}], 
                 "]"}], "<>", "\"\<\[Degree]\>\""}], ",", " ", "20"}], "]"}], 
             ",", " ", 
             RowBox[{"Style", "[", 
              RowBox[{
               RowBox[{
               "\"\<\!\(\*SubscriptBox[\(\[Theta]\), \(PB\)]\) = \>\"", "<>", 
                
                RowBox[{"ToString", "[", 
                 RowBox[{"Round", "[", 
                  RowBox[{
                   RowBox[{
                    RowBox[{"energetics", "[", 
                    RowBox[{"[", "3", "]"}], "]"}], " ", 
                    RowBox[{"180.", "/", "Pi"}]}], ",", " ", "0.1"}], "]"}], 
                 "]"}], "<>", "\"\<\[Degree]\>\""}], ",", " ", "20"}], "]"}], 
             ",", " ", 
             RowBox[{"Style", "[", 
              RowBox[{
               RowBox[{
               "\"\<\!\(\*SubscriptBox[\(\[Gamma]\), \(PV, \\\ A\)]\) = \>\"",
                 "<>", 
                RowBox[{"ToString", "[", 
                 RowBox[{"Round", "[", 
                  RowBox[{"gpv1", ",", " ", "0.01"}], "]"}], "]"}]}], ",", 
               " ", "20"}], "]"}], ",", " ", 
             RowBox[{"Style", "[", 
              RowBox[{
               RowBox[{
               "\"\<\!\(\*SubscriptBox[\(\[Gamma]\), \(PV, \\\ B\)]\) = \>\"",
                 "<>", 
                RowBox[{"ToString", "[", 
                 RowBox[{"Round", "[", 
                  RowBox[{"gpv2", ",", " ", "0.01"}], "]"}], "]"}]}], ",", 
               " ", "20"}], "]"}], ",", " ", "epi", ",", " ", 
             RowBox[{"Style", "[", 
              RowBox[{
               RowBox[{
               "\"\<\!\(\*SubscriptBox[\(E\), \(in\\\ bulk\\\ A\)]\)= \>\"", "<>", 
                RowBox[{"ToString", "[", 
                 RowBox[{"Round", "[", 
                  RowBox[{"etop", ",", " ", "0.01"}], "]"}], "]"}]}], ",", 
               " ", "20"}], "]"}], ",", " ", 
             RowBox[{"Style", "[", 
              RowBox[{
               RowBox[{
               "\"\<\!\(\*SubscriptBox[\(E\), \(in\\\ bulk\\\ B\)]\)= \>\"", "<>", 
                RowBox[{"ToString", "[", 
                 RowBox[{"Round", "[", 
                  RowBox[{"ebot", ",", " ", "0.01"}], "]"}], "]"}]}], ",", 
               " ", "20"}], "]"}], ",", " ", 
             RowBox[{"Style", "[", 
              RowBox[{
               RowBox[{
               "\"\<\!\(\*SubscriptBox[\(E\), \(\(P\)\(,\)\(\\\ \)\(total\)\(\
\\\ \)\)]\)= \>\"", "<>", 
                RowBox[{"ToString", "[", 
                 RowBox[{"Round", "[", 
                  RowBox[{
                   RowBox[{"energetics", "[", 
                    RowBox[{"[", "4", "]"}], "]"}], ",", " ", "0.01"}], "]"}],
                  "]"}]}], ",", " ", "20"}], "]"}], ",", " ", 
             RowBox[{"Style", "[", 
              RowBox[{
               RowBox[{
               "\"\<     \!\(\*SubscriptBox[\(E\), \(P\\\ surface\\\ \
only\)]\)= \>\"", "<>", 
                RowBox[{"ToString", "[", 
                 RowBox[{"Round", "[", 
                  RowBox[{
                   RowBox[{"energetics", "[", 
                    RowBox[{"[", 
                    RowBox[{"5", ",", " ", "1"}], "]"}], "]"}], ",", " ", 
                   "0.01"}], "]"}], "]"}]}], ",", " ", "20"}], "]"}], ",", 
             " ", 
             RowBox[{"Style", "[", 
              RowBox[{
               RowBox[{
               "\"\<     \!\(\*SubscriptBox[\(E\), \(AB\\\ removed\)]\)= \
\>\"", "<>", 
                RowBox[{"ToString", "[", 
                 RowBox[{"Round", "[", 
                  RowBox[{
                   RowBox[{"-", 
                    RowBox[{"energetics", "[", 
                    RowBox[{"[", 
                    RowBox[{"5", ",", " ", "2"}], "]"}], "]"}]}], ",", " ", 
                   "0.01"}], "]"}], "]"}]}], ",", " ", "20"}], "]"}], ",", 
             " ", 
             RowBox[{"Style", "[", 
              RowBox[{
               RowBox[{
               "\"\<     \!\(\*SubscriptBox[\(E\), \(AB\\\ wrinkles\)]\)= \
\>\"", "<>", 
                RowBox[{"ToString", "[", 
                 RowBox[{"Round", "[", 
                  RowBox[{
                   RowBox[{"energetics", "[", 
                    RowBox[{"[", 
                    RowBox[{"5", ",", " ", "3"}], "]"}], "]"}], ",", " ", 
                   "0.01"}], "]"}], "]"}]}], ",", " ", "20"}], "]"}], ",", 
             " ", 
             RowBox[{"Style", "[", 
              RowBox[{
               RowBox[{
               "\"\<     \!\(\*SubscriptBox[\(A\), \(AB\\\ removed\)]\)= \
\>\"", "<>", 
                RowBox[{"ToString", "[", 
                 RowBox[{"Round", "[", 
                  RowBox[{"agb", ",", " ", "0.01"}], "]"}], "]"}]}], ",", " ",
                "20"}], "]"}], ",", " ", 
             RowBox[{"Style", "[", 
              RowBox[{
               RowBox[{
               "\"\<     \!\(\*SubscriptBox[\(A\), \(AB\\\ wrinkles\)]\)= \
\>\"", "<>", 
                RowBox[{"ToString", "[", 
                 RowBox[{"Round", "[", 
                  RowBox[{"newarea", ",", " ", "0.01"}], "]"}], "]"}]}], ",", 
               " ", "20"}], "]"}]}], "}"}], "]"}]}], "}"}], "]"}]}], 
      "\[IndentingNewLine]", "]"}]}]}], "]"}]}]}], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.520188089697495*^9, 3.5201881002422333`*^9}, 
   3.520188135393955*^9, {3.52034349565516*^9, 3.5203435148661823`*^9}, 
   3.520343773117079*^9, {3.5203454881442204`*^9, 3.520345572593382*^9}, {
   3.520345611747464*^9, 3.5203456122018347`*^9}, 3.520346128348261*^9, {
   3.520622329660803*^9, 3.520622355215486*^9}, {3.520622443884183*^9, 
   3.5206224787969847`*^9}, 3.520683361739147*^9, {3.52250943756057*^9, 
   3.522509471095428*^9}, {3.5232796452762833`*^9, 3.5232798568608932`*^9}, {
   3.523279897775807*^9, 3.523279901558029*^9}, {3.5232800859327507`*^9, 
   3.523280132803171*^9}, {3.5232801980519047`*^9, 3.5232802659137697`*^9}, {
   3.5232805060765743`*^9, 3.523280578703816*^9}, {3.523280642358151*^9, 
   3.523280700883997*^9}, {3.523280786810948*^9, 3.5232808023750362`*^9}, {
   3.523280836682324*^9, 3.5232808823783197`*^9}, {3.5232809353263083`*^9, 
   3.523280946908885*^9}, {3.523280987045141*^9, 3.523281162427217*^9}, {
   3.52328121070621*^9, 3.5232813456345263`*^9}, {3.523281378779049*^9, 
   3.523281554293303*^9}, {3.523281615858371*^9, 3.52328163325955*^9}, {
   3.52328168188083*^9, 3.523281698730887*^9}, {3.523281759817842*^9, 
   3.523281772267249*^9}, {3.523282688850266*^9, 3.523282689679337*^9}, {
   3.523282723242091*^9, 3.523282758292034*^9}, {3.523282795459635*^9, 
   3.523282799407701*^9}, {3.52328283945308*^9, 3.523282914768655*^9}, {
   3.523282958163844*^9, 3.5232829852957706`*^9}, {3.523283310588873*^9, 
   3.5232833518146687`*^9}, {3.523283388125249*^9, 3.523283390641478*^9}, {
   3.523283443764308*^9, 3.5232835672855873`*^9}, {3.52328360264808*^9, 
   3.523283615944586*^9}, {3.5232839749307823`*^9, 3.5232839835399942`*^9}, {
   3.523284160899445*^9, 3.523284217218443*^9}, 3.5232843873057756`*^9, {
   3.523284441563545*^9, 3.523284475163074*^9}, {3.523284510336495*^9, 
   3.5232845637755613`*^9}, {3.523284602118147*^9, 3.52328467585229*^9}, {
   3.523284706202928*^9, 3.523284708975671*^9}, {3.523284770513822*^9, 
   3.523284788765127*^9}, {3.523284881957623*^9, 3.523285075835628*^9}, 
   3.523285134460095*^9, {3.523285285663097*^9, 3.523285287732381*^9}, {
   3.523288803727168*^9, 3.5232889324722757`*^9}, {3.523294918575429*^9, 
   3.523294990551705*^9}, {3.523295026728807*^9, 3.5232950341286573`*^9}, {
   3.523295070125773*^9, 3.523295075296286*^9}, {3.523295150712953*^9, 
   3.523295157661975*^9}, {3.5232952331734457`*^9, 3.523295238309856*^9}, {
   3.523295310674646*^9, 3.5232953423352823`*^9}, {3.52329557675959*^9, 
   3.523295627949099*^9}, {3.523295864696786*^9, 3.5232958779454536`*^9}, {
   3.523296645329314*^9, 3.523296781053131*^9}, {3.5232996814381723`*^9, 
   3.523299706006349*^9}, {3.5233004341736298`*^9, 3.523300476020117*^9}, {
   3.523301215016603*^9, 3.523301234563118*^9}, {3.523301298948329*^9, 
   3.523301299658498*^9}, {3.523301559011204*^9, 3.523301575315963*^9}, {
   3.523377752661227*^9, 3.523377764072226*^9}, {3.52337780832848*^9, 
   3.5233780035485153`*^9}, {3.52337805571467*^9, 3.523378056409981*^9}, {
   3.523378831354169*^9, 3.523378832576096*^9}, {3.5233791491291113`*^9, 
   3.523379153263627*^9}, {3.52338087095116*^9, 3.523380882060151*^9}, {
   3.523380973946615*^9, 3.523381023377346*^9}, {3.523381123883853*^9, 
   3.523381162410316*^9}, {3.5233812177634*^9, 3.523381316756566*^9}, {
   3.523381361940199*^9, 3.523381405185835*^9}, {3.523381455488134*^9, 
   3.523381460843773*^9}, {3.523381497844996*^9, 3.523381519153927*^9}, {
   3.523381649532302*^9, 3.523381687982264*^9}, {3.52338192796764*^9, 
   3.5233819378153687`*^9}, {3.523382000839127*^9, 3.523382003943316*^9}, {
   3.52338209526058*^9, 3.52338210011012*^9}, {3.523382189916366*^9, 
   3.523382233516308*^9}, {3.523382267563897*^9, 3.523382316916491*^9}, {
   3.5233824576228523`*^9, 3.523382463396905*^9}, {3.523382582728786*^9, 
   3.523382582985524*^9}, {3.523384225826023*^9, 3.523384268564127*^9}, {
   3.523384306738832*^9, 3.52338431150454*^9}, {3.5233843557165213`*^9, 
   3.5233843621269073`*^9}, {3.523718428510553*^9, 3.523718463285005*^9}, {
   3.523718495795307*^9, 3.52371850456525*^9}, {3.5237185820030527`*^9, 
   3.523718656029902*^9}, {3.523718701259248*^9, 3.523718704762001*^9}, {
   3.523719335184196*^9, 3.523719383997198*^9}, {3.523719417097031*^9, 
   3.523719444700845*^9}, {3.523719543175117*^9, 3.5237195516162767`*^9}, {
   3.523720952106309*^9, 3.523720954359827*^9}, {3.523726443632563*^9, 
   3.5237265076411448`*^9}, {3.523726555259796*^9, 3.523726653440381*^9}, {
   3.52372684942949*^9, 3.523726876888143*^9}, {3.523726908096216*^9, 
   3.523726986119253*^9}, {3.523727107034224*^9, 3.523727109882073*^9}, {
   3.523892469749446*^9, 3.5238924717103157`*^9}, {3.523896611317124*^9, 
   3.523896765582047*^9}, {3.523896801631844*^9, 3.5238970507653637`*^9}, {
   3.523897195981529*^9, 3.5238971979507113`*^9}, {3.523897260422221*^9, 
   3.523897271304487*^9}, {3.523897318150498*^9, 3.523897348612915*^9}, {
   3.523897381907148*^9, 3.523897396838366*^9}, {3.523897433084867*^9, 
   3.523897433617653*^9}, {3.5238974698985167`*^9, 3.523897523305304*^9}, {
   3.523897586129459*^9, 3.5238975868418007`*^9}, {3.5238976859645367`*^9, 
   3.523897714907014*^9}, {3.523897845040859*^9, 3.5238979231294317`*^9}, {
   3.523897987406948*^9, 3.523898136826989*^9}, {3.5238981894969463`*^9, 
   3.523898289895907*^9}, {3.523898338965332*^9, 3.523898344281204*^9}, {
   3.5238983893353443`*^9, 3.523898437596829*^9}, {3.52389861781006*^9, 
   3.5238986453332443`*^9}, {3.5238986956160717`*^9, 
   3.5238987791779947`*^9}, {3.5238988103982153`*^9, 3.52389882787577*^9}, {
   3.523898872376749*^9, 3.523898889755937*^9}, {3.5238989233825893`*^9, 
   3.5238990285822906`*^9}, {3.523899062897752*^9, 3.523899063295416*^9}, {
   3.5238991211389723`*^9, 3.523899155976242*^9}, 3.52390068821209*^9, {
   3.5239039231484613`*^9, 3.5239040615897017`*^9}, {3.523904183551546*^9, 
   3.523904186219387*^9}, {3.523904396261883*^9, 3.523904401603689*^9}, {
   3.523964706429225*^9, 3.5239647248893213`*^9}, {3.5239647565208483`*^9, 
   3.5239647638368464`*^9}, {3.52396480086167*^9, 3.52396481535921*^9}, {
   3.523966965968874*^9, 3.523966968840597*^9}, {3.523967181163034*^9, 
   3.523967231803959*^9}, {3.523967270788177*^9, 3.523967277329233*^9}, {
   3.5239675278790894`*^9, 3.523967556245892*^9}, {3.523969245561302*^9, 
   3.523969252676017*^9}, {3.523969356004115*^9, 3.5239693764583693`*^9}, {
   3.5239694791134577`*^9, 3.523969480615563*^9}, {3.523969555648077*^9, 
   3.523969556328949*^9}, {3.5239705160491943`*^9, 3.5239705195470753`*^9}, {
   3.524224892780974*^9, 3.5242249311775846`*^9}, {3.524225022452894*^9, 
   3.524225028263908*^9}, {3.524225802253499*^9, 3.524225893046155*^9}, {
   3.524226026995283*^9, 3.524226028438949*^9}, {3.524226061783689*^9, 
   3.5242261517948523`*^9}, {3.524226187425345*^9, 3.5242262156004*^9}, {
   3.524226261186871*^9, 3.524226465481037*^9}, {3.5242272702636147`*^9, 
   3.524227280734262*^9}, {3.524235327638556*^9, 3.524235362158646*^9}, {
   3.524236302759121*^9, 3.5242366063094807`*^9}, {3.5242387489743757`*^9, 
   3.524238780726377*^9}, {3.524239811640593*^9, 3.5242398282003803`*^9}, {
   3.524239957174951*^9, 3.524240196795755*^9}, {3.5242402448069677`*^9, 
   3.524240317937192*^9}, {3.524240348754168*^9, 3.524240387339541*^9}, {
   3.524240555168235*^9, 3.524240631823221*^9}, 3.524240668881633*^9, {
   3.524240702741104*^9, 3.524240712856144*^9}, {3.524240773725666*^9, 
   3.524240842522311*^9}, {3.524241288882769*^9, 3.524241320761743*^9}, {
   3.524241445574629*^9, 3.524241470271241*^9}, 3.524241529281699*^9, {
   3.5242415940910587`*^9, 3.524241594715663*^9}, {3.5242416801583433`*^9, 
   3.524241721356832*^9}, {3.5242418486068296`*^9, 3.524241883499136*^9}, {
   3.524241935062475*^9, 3.5242419781545877`*^9}, {3.5242420944992733`*^9, 
   3.524242105223318*^9}, {3.5242421735059853`*^9, 3.5242422167480907`*^9}, {
   3.5242423056880817`*^9, 3.524242312213086*^9}, {3.524242423237165*^9, 
   3.52424242428867*^9}, {3.524247728123111*^9, 3.524247734702527*^9}, {
   3.524247771705621*^9, 3.524247798327729*^9}, {3.524247906462738*^9, 
   3.524247936023291*^9}, {3.524248019191023*^9, 3.5242481900481663`*^9}, {
   3.524248231132666*^9, 3.524248245655678*^9}, {3.524248329297669*^9, 
   3.524248332517095*^9}, {3.524248363499546*^9, 3.52424836731702*^9}, {
   3.524248434041938*^9, 3.5242484379617643`*^9}, {3.524248701610989*^9, 
   3.5242487050655823`*^9}, {3.524320970320303*^9, 3.524321331984213*^9}, {
   3.524322284645953*^9, 3.52432247710804*^9}, {3.524322514017364*^9, 
   3.524322555060794*^9}, {3.524322595125684*^9, 3.524322596892947*^9}, {
   3.524322710317596*^9, 3.524322712876232*^9}, {3.524322802686651*^9, 
   3.524322808680887*^9}, {3.524322843517948*^9, 3.5243228456162567`*^9}, {
   3.524322880010385*^9, 3.5243228876346893`*^9}, {3.52432294348252*^9, 
   3.524322945803121*^9}, {3.524322987706666*^9, 3.524323011551733*^9}, {
   3.5243230970784388`*^9, 3.5243231232481813`*^9}, {3.524323169816111*^9, 
   3.524323171224968*^9}, {3.5243232569193277`*^9, 3.5243232718975697`*^9}, {
   3.524323339147946*^9, 3.5243234016509933`*^9}, {3.524323495822192*^9, 
   3.524323523974613*^9}, {3.524323711543331*^9, 3.524323735482613*^9}, {
   3.524323822743039*^9, 3.5243238655154057`*^9}, {3.524324354026182*^9, 
   3.5243243597044687`*^9}, {3.524325156298194*^9, 3.524325253201024*^9}, {
   3.524325295414304*^9, 3.524325330019395*^9}, {3.524325489989402*^9, 
   3.524325496499599*^9}, {3.5243255297649*^9, 3.524325530793098*^9}, {
   3.524336701424488*^9, 3.524336744059766*^9}, {3.5243368114384823`*^9, 
   3.524336884673367*^9}, {3.524337843675508*^9, 3.524337871265305*^9}, {
   3.524337994607439*^9, 3.524338006910597*^9}, {3.5243380405937567`*^9, 
   3.52433810426694*^9}, {3.524568085555969*^9, 3.524568086784831*^9}, {
   3.5245683771882553`*^9, 3.524568449802763*^9}, {3.524568555727476*^9, 
   3.5245685559319277`*^9}, 3.524568589384941*^9, {3.524568675595744*^9, 
   3.524568798088965*^9}, {3.5245688798389053`*^9, 3.524569065808795*^9}, {
   3.524569121152884*^9, 3.524569131391037*^9}, {3.524569185527996*^9, 
   3.52456924405488*^9}, {3.524570930952435*^9, 3.5245709379515877`*^9}, {
   3.524570971245358*^9, 3.5245711248716516`*^9}, {3.5245711994742947`*^9, 
   3.52457121596517*^9}, {3.5245766267908173`*^9, 3.524576777311891*^9}, {
   3.5245768485833683`*^9, 3.524576909745722*^9}, {3.524576942650343*^9, 
   3.524576969756534*^9}, {3.5245770028519373`*^9, 3.524577108364476*^9}, {
   3.524577177332403*^9, 3.524577179321246*^9}, {3.524577215870783*^9, 
   3.5245773160267563`*^9}, {3.524577363187188*^9, 3.524577654511324*^9}, {
   3.524577723639443*^9, 3.524577738741147*^9}, {3.524577807531918*^9, 
   3.524577874295273*^9}, {3.524577950852249*^9, 3.524577982603969*^9}, {
   3.5245783385012217`*^9, 3.5245783398204603`*^9}, {3.524578655184967*^9, 
   3.524578669127419*^9}, {3.5245787515639343`*^9, 3.524578754271421*^9}, {
   3.524827075866691*^9, 3.524827116811116*^9}, {3.524827217618681*^9, 
   3.524827224117467*^9}, {3.524827303700733*^9, 3.524827438116613*^9}, {
   3.524827485239753*^9, 3.5248275009131308`*^9}, {3.524827701340558*^9, 
   3.5248277498003387`*^9}, {3.524827800903631*^9, 3.524827914607134*^9}, {
   3.524827999400751*^9, 3.524828001574811*^9}, 3.524828057617282*^9, 
   3.524828405332141*^9, {3.5248284785036573`*^9, 3.524828482446212*^9}, {
   3.524837636913352*^9, 3.524837638062587*^9}, {3.5248381978620234`*^9, 
   3.524838341043908*^9}, {3.524838491021305*^9, 3.5248385069013243`*^9}, {
   3.524839490245124*^9, 3.524839501763858*^9}, {3.524842339637959*^9, 
   3.52484236562387*^9}, {3.524842572476849*^9, 3.524842585993239*^9}, {
   3.524842617751506*^9, 3.52484262499266*^9}, {3.524843686982585*^9, 
   3.524843688673298*^9}, {3.5248442006306133`*^9, 3.524844209553247*^9}, {
   3.5248443367096043`*^9, 3.524844351532682*^9}, {3.524844529035811*^9, 
   3.524844594681472*^9}, {3.5248480565316143`*^9, 3.524848334231077*^9}, {
   3.524848371116929*^9, 3.524848456006097*^9}, {3.524848730566413*^9, 
   3.5248488707626343`*^9}, {3.524848946958829*^9, 3.524849000895879*^9}, {
   3.5248490711225348`*^9, 3.5248491500381403`*^9}, {3.524849352023697*^9, 
   3.5248494161912107`*^9}, {3.5248494494327307`*^9, 
   3.5248494745516577`*^9}, {3.524849511323374*^9, 3.524849554284412*^9}, {
   3.524849680912863*^9, 3.524849714340702*^9}, {3.524849784179061*^9, 
   3.524849805028434*^9}, {3.524849838391597*^9, 3.52484987364135*^9}, {
   3.524849929421*^9, 3.524849977920064*^9}, {3.524850031289682*^9, 
   3.524850055498273*^9}, {3.524850329237432*^9, 3.524850392393002*^9}, {
   3.524850423198945*^9, 3.524850457183937*^9}, {3.524851368928814*^9, 
   3.524851372329879*^9}, {3.524851662276216*^9, 3.524851663498464*^9}, {
   3.52485221815615*^9, 3.524852218696341*^9}, {3.524852254261964*^9, 
   3.524852257232924*^9}, {3.52485236282594*^9, 3.52485238365347*^9}, {
   3.5248524977256536`*^9, 3.524852498921111*^9}, {3.524852705041053*^9, 
   3.524852721177919*^9}, {3.524853086774972*^9, 3.524853131815152*^9}, {
   3.524853215163335*^9, 3.524853216060842*^9}, {3.524853693148375*^9, 
   3.5248537349049664`*^9}, 3.5248537728213663`*^9, {3.52485387549937*^9, 
   3.524853953321144*^9}, {3.524910951132526*^9, 3.524910979623098*^9}, {
   3.524911956087667*^9, 3.524911968529623*^9}, {3.524912125755158*^9, 
   3.524912137797017*^9}, {3.524912208423317*^9, 3.5249122843184843`*^9}, {
   3.52491234605479*^9, 3.524912350031052*^9}, 3.524912419843684*^9, {
   3.524912514122088*^9, 3.5249125241898403`*^9}, {3.524912575238274*^9, 
   3.524912580621015*^9}, {3.524912957530122*^9, 3.524912958338319*^9}, {
   3.524912993569076*^9, 3.5249130204174347`*^9}, {3.5249136819582577`*^9, 
   3.5249136845923157`*^9}, {3.524915007703772*^9, 3.524915015193429*^9}, {
   3.5249166380732594`*^9, 3.524916647537354*^9}, {3.524916694317268*^9, 
   3.524916760838985*^9}, {3.524916796706349*^9, 3.5249167987019377`*^9}, {
   3.524916843768873*^9, 3.524917010341535*^9}, {3.524917079162304*^9, 
   3.524917119828538*^9}, {3.524917271545216*^9, 3.524917288415166*^9}, {
   3.5249187829755507`*^9, 3.524918793132519*^9}, {3.524919316381084*^9, 
   3.5249194352190866`*^9}, {3.5249197375758877`*^9, 
   3.5249197566150503`*^9}, {3.5417670497130003`*^9, 3.541767092444026*^9}, {
   3.5417673012585*^9, 3.5417673169238853`*^9}, {3.5417673829872627`*^9, 
   3.541767397470737*^9}, {3.541767445878715*^9, 3.5417674583343077`*^9}, {
   3.541767489075213*^9, 3.541767495633381*^9}, {3.5417681083674793`*^9, 
   3.541768146576969*^9}, {3.5417684827510653`*^9, 3.5417685148791037`*^9}, {
   3.5418320660649014`*^9, 3.5418320698673058`*^9}, {3.541832337939445*^9, 
   3.541832338290505*^9}, {3.5418323982608852`*^9, 3.5418323984275837`*^9}, {
   3.541832455331202*^9, 3.541832462210546*^9}, {3.5420380159576817`*^9, 
   3.542038061514904*^9}, {3.542038179584035*^9, 3.542038211421749*^9}, {
   3.542038301115739*^9, 3.5420383275155363`*^9}, {3.542038375171463*^9, 
   3.542038394072178*^9}, {3.542038710923568*^9, 3.542038713713011*^9}, {
   3.5420417721650457`*^9, 3.542041775286162*^9}, {3.543502372514875*^9, 
   3.543502390730197*^9}, {3.54350243541364*^9, 3.543502460342245*^9}, {
   3.543502558733673*^9, 3.54350277783845*^9}, {3.5435030031163483`*^9, 
   3.543503186785101*^9}, {3.543503222079041*^9, 3.543503224609809*^9}, {
   3.543503265682291*^9, 3.5435032755779*^9}, {3.543503308801196*^9, 
   3.543503579997974*^9}, {3.543503616623521*^9, 3.543503748696885*^9}, {
   3.5435038327159433`*^9, 3.5435039406762047`*^9}, {3.543513038936187*^9, 
   3.543513063167321*^9}, {3.5435133783994703`*^9, 3.543513395395258*^9}, {
   3.543514263775584*^9, 3.5435142650912046`*^9}, {3.5436642549947767`*^9, 
   3.5436643510502777`*^9}, {3.54366673610944*^9, 3.543666767119833*^9}, 
   3.5436668370420322`*^9, {3.543666944981394*^9, 3.543667014741939*^9}, {
   3.543667195616701*^9, 3.543667198978701*^9}, {3.546626984380774*^9, 
   3.5466272200381393`*^9}, {3.546627282540535*^9, 3.546627308255291*^9}, {
   3.5466307122941303`*^9, 3.5466307485134068`*^9}, {3.546631178637315*^9, 
   3.546631350593419*^9}, {3.546631394722684*^9, 3.54663143723071*^9}, {
   3.5466314875432863`*^9, 3.546631597313478*^9}, {3.5466316368243217`*^9, 
   3.546631675435158*^9}, {3.546631805319252*^9, 3.546632106148691*^9}, {
   3.546632143808262*^9, 3.546632172587246*^9}, {3.5467978674179564`*^9, 
   3.546797875344276*^9}, 3.546797934482697*^9, {3.5467979800613213`*^9, 
   3.546798056450899*^9}, {3.546798107228354*^9, 3.5467981606806707`*^9}, {
   3.546798200410516*^9, 3.5467982466736393`*^9}, {3.546798288276792*^9, 
   3.5467983487339373`*^9}, {3.54679839376259*^9, 3.5467984473493977`*^9}, {
   3.546798487640892*^9, 3.5467985556354628`*^9}, {3.546798592088891*^9, 
   3.5467986517519827`*^9}, {3.546798739816874*^9, 3.546798891427347*^9}, {
   3.546799177627679*^9, 3.546799194752059*^9}, {3.546799231810907*^9, 
   3.546799263886091*^9}, {3.5467997763186207`*^9, 3.5467999189721127`*^9}, 
   3.5468000307169*^9, {3.546800098008111*^9, 3.5468001053054943`*^9}, {
   3.546800331329782*^9, 3.546800332604395*^9}, 3.5468005711308527`*^9, 
   3.546800684675084*^9, {3.546800786007373*^9, 3.546800875620648*^9}, {
   3.546800912042259*^9, 3.546801045058453*^9}, {3.5468010820873547`*^9, 
   3.546801128010235*^9}, {3.547220730048551*^9, 3.547220804029047*^9}, {
   3.547220901100263*^9, 3.547220959202859*^9}, {3.5472225408156033`*^9, 
   3.54722255969786*^9}, {3.5472239870960083`*^9, 3.547224035728343*^9}, {
   3.547224295951178*^9, 3.5472243141214943`*^9}, {3.547224839467868*^9, 
   3.547224861015039*^9}, {3.547224898416647*^9, 3.547224959503891*^9}, {
   3.547225040558229*^9, 3.547225091489204*^9}, {3.547297884134218*^9, 
   3.5472978846073313`*^9}, {3.5472979147685547`*^9, 
   3.5472979586260147`*^9}, {3.547297996877141*^9, 3.5472980431368313`*^9}, 
   3.547298587264968*^9, {3.5472986781964893`*^9, 3.547298770008827*^9}, {
   3.547301303783022*^9, 3.547301305775511*^9}, {3.5473013408101397`*^9, 
   3.5473013425453587`*^9}, {3.5474735216397943`*^9, 
   3.5474735253863897`*^9}, {3.54747699011209*^9, 3.547477022945579*^9}, {
   3.547477143316649*^9, 3.5474771458850594`*^9}, {3.5474773791637697`*^9, 
   3.547477443349444*^9}, {3.547477613623681*^9, 3.547477613964259*^9}, {
   3.547488187094863*^9, 3.547488189970001*^9}, {3.547488366967819*^9, 
   3.5474883759304113`*^9}, {3.5475557347338343`*^9, 
   3.5475558095881567`*^9}, {3.547824728085383*^9, 3.54782480151519*^9}, {
   3.547824887967108*^9, 3.547824912105927*^9}, {3.547824987052025*^9, 
   3.547824997976132*^9}, {3.547825227795734*^9, 3.5478252557579947`*^9}, {
   3.5481355942359877`*^9, 3.548135608598104*^9}, {3.548437314516253*^9, 
   3.548437323454636*^9}, {3.548437355939478*^9, 3.548437455659927*^9}, {
   3.5484915282844973`*^9, 3.548491601717243*^9}, {3.5484917382791977`*^9, 
   3.548491889754575*^9}, {3.548491992271468*^9, 3.5484920039039516`*^9}, {
   3.549640522511112*^9, 3.5496407716596537`*^9}, {3.5511114724155807`*^9, 
   3.551111495879781*^9}, {3.6106861523984737`*^9, 3.610686169956555*^9}, {
   3.610686214041173*^9, 3.6106862432030897`*^9}, {3.610686346756722*^9, 
   3.61068634896918*^9}, {3.61069223588533*^9, 3.610692276641964*^9}, {
   3.6106926870120153`*^9, 3.61069277599706*^9}, {3.6106928461187963`*^9, 
   3.6106929221126823`*^9}, {3.610693317990282*^9, 3.610693441195629*^9}, {
   3.6106936050763903`*^9, 3.6106937517912827`*^9}, {3.6106938389793863`*^9, 
   3.6106939020774593`*^9}, {3.6106943552909927`*^9, 3.610694430719235*^9}, {
   3.610697549369307*^9, 3.6106975736481943`*^9}}]
}, Closed]],

Cell[CellGroupData[{

Cell["User Interface", "Section",
 CellChangeTimes->{{3.539355693217067*^9, 3.53935569430306*^9}, {
  3.54183159960536*^9, 3.541831600276761*^9}}],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`convention$49679$$ = 
    0, $CellContext`currentSymmetry1$$ = 
    "m\!\(\*OverscriptBox[\(3\), \(_\)]\)m", $CellContext`currentSymmetry2$$ =
     "m\!\(\*OverscriptBox[\(3\), \(_\)]\)m", $CellContext`dega1$49679$$ = 
    0, $CellContext`dega2$49679$$ = 0, $CellContext`dega3$49679$$ = 
    0, $CellContext`degb1$49679$$ = 45, $CellContext`degb2$49679$$ = 
    0, $CellContext`degb3$49679$$ = 0, $CellContext`n1$$ = 
    3, $CellContext`n2$$ = 2, $CellContext`symmetry1$$ = 
    "Cubic", $CellContext`symmetry2$$ = "Cubic", Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`symmetry1$$], "Cubic", 
       Text[
        Style["Symmetry of \!\(\*SubscriptBox[\(W\), \(A\)]\)", 16]]}, {
      "Cubic", "Hexagonal", "Tetragonal", "Orthorhombic", "Monoclinic", 
       "Triclinic"}}, {{
       Hold[$CellContext`currentSymmetry1$$], 
       "m\!\(\*OverscriptBox[\(3\), \(_\)]\)m", 
       Text[
        Style["\!\(\*SubscriptBox[\(W\), \(A\)]\) point group", 16]]}, 
      Dynamic[
       $CellContext`groupSet[$CellContext`symmetry1$$]]}, {{
       Hold[$CellContext`n1$$], 3, 
       Text[
        Style["\!\(\*SubscriptBox[\(W\), \(A\)]\) facet families", 16]]}, {1, 
      2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20}}, {{
      
       Hold[$CellContext`symmetry2$$], "Cubic", 
       Text[
        Style["\!\(\*SubscriptBox[\(W\), \(B\)]\) symmetry", 16]]}, {
      "Cubic", "Hexagonal", "Tetragonal", "Orthorhombic", "Monoclinic", 
       "Triclinic"}}, {{
       Hold[$CellContext`currentSymmetry2$$], 
       "m\!\(\*OverscriptBox[\(3\), \(_\)]\)m", 
       Text[
        Style["\!\(\*SubscriptBox[\(W\), \(B\)]\) point group", 16]]}, 
      Dynamic[
       $CellContext`groupSet[$CellContext`symmetry2$$]]}, {{
       Hold[$CellContext`n2$$], 2, 
       Text[
        Style["\!\(\*SubscriptBox[\(W\), \(B\)]\) facet families", 16]]}, {1, 
      2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20}}, {{
      
       Hold[$CellContext`convention$49679$$], 0, 
       Text[
        Style[
        "Euler angle convention (\[Degree]\!\(\*SuperscriptBox[\()\), \
\(*\)]\)", 16]]}}, {{
       Hold[$CellContext`dega1$49679$$], 0, 
       Text[
        Style[
        "\!\(\*SubscriptBox[\(W\), \(A\)]\) Euler angle \!\(\*SubscriptBox[\(\
\[Phi]\), \(1\)]\) (\[Degree])", 16]]}}, {{
       Hold[$CellContext`dega2$49679$$], 0, 
       Text[
        Style[
        "\!\(\*SubscriptBox[\(W\), \(A\)]\) Euler angle \[CapitalPhi] (\
\[Degree])", 16]]}}, {{
       Hold[$CellContext`dega3$49679$$], 0, 
       Text[
        Style[
        "\!\(\*SubscriptBox[\(W\), \(A\)]\) Euler angle \!\(\*SubscriptBox[\(\
\[Phi]\), \(2\)]\) (\[Degree])", 16]]}}, {{
       Hold[$CellContext`degb1$49679$$], 45, 
       Text[
        Style[
        "\!\(\*SubscriptBox[\(W\), \(B\)]\) Euler angle \!\(\*SubscriptBox[\(\
\[Phi]\), \(1\)]\) (\[Degree])", 16]]}}, {{
       Hold[$CellContext`degb2$49679$$], 0, 
       Text[
        Style[
        "\!\(\*SubscriptBox[\(W\), \(B\)]\) Euler angle \[CapitalPhi] (\
\[Degree])", 16]]}}, {{
       Hold[$CellContext`degb3$49679$$], 0, 
       Text[
        Style[
        "\!\(\*SubscriptBox[\(W\), \(B\)]\) Euler angle \!\(\*SubscriptBox[\(\
\[Phi]\), \(2\)]\) (\[Degree])", 16]]}}}, Typeset`size$$ = {
    1001., {534., 545.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = False, $CellContext`symmetry1$49681$$ = 
    0, $CellContext`n1$49682$$ = 0, $CellContext`symmetry2$49683$$ = 
    0, $CellContext`n2$49684$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`convention$49679$$ = 
        0, $CellContext`currentSymmetry1$$ = 
        "m\!\(\*OverscriptBox[\(3\), \(_\)]\)m", \
$CellContext`currentSymmetry2$$ = 
        "m\!\(\*OverscriptBox[\(3\), \(_\)]\)m", $CellContext`dega1$49679$$ = 
        0, $CellContext`dega2$49679$$ = 0, $CellContext`dega3$49679$$ = 
        0, $CellContext`degb1$49679$$ = 45, $CellContext`degb2$49679$$ = 
        0, $CellContext`degb3$49679$$ = 0, $CellContext`n1$$ = 
        3, $CellContext`n2$$ = 2, $CellContext`symmetry1$$ = 
        "Cubic", $CellContext`symmetry2$$ = "Cubic"}, "ControllerVariables" :> {
        Hold[$CellContext`symmetry1$$, $CellContext`symmetry1$49681$$, 0], 
        Hold[$CellContext`n1$$, $CellContext`n1$49682$$, 0], 
        Hold[$CellContext`symmetry2$$, $CellContext`symmetry2$49683$$, 0], 
        Hold[$CellContext`n2$$, $CellContext`n2$49684$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> With[{$CellContext`topshape$ = {
           Table[
            $CellContext`normal1$49679[$CellContext`i, $CellContext`j], \
{$CellContext`i, 1, $CellContext`n1$$}, {$CellContext`j, 1, 3}], 
           Table[
            $CellContext`magnitudes1$49679[$CellContext`i], {$CellContext`i, 
             1, $CellContext`n1$$}], 
           Table[
            $CellContext`colors1$49679[$CellContext`i], {$CellContext`i, 
             1, $CellContext`n1$$}], $CellContext`currentSymmetry1$$, 
           $CellContext`geomgen[$CellContext`symmetry1$$, 1], {
           False, $CellContext`axessizer$49679}, {$CellContext`vpr$49679, \
$CellContext`vvr$49679}, 
           Table[
            $CellContext`aorb1$49679[$CellContext`i], {$CellContext`i, 
             1, $CellContext`n1$$}]}, $CellContext`bottomshape$ = {
           Table[
            $CellContext`normal2$49679[$CellContext`i, $CellContext`j], \
{$CellContext`i, 1, $CellContext`n2$$}, {$CellContext`j, 1, 3}], 
           Table[
            $CellContext`magnitudes2$49679[$CellContext`i], {$CellContext`i, 
             1, $CellContext`n2$$}], 
           Table[
            $CellContext`colors2$49679[$CellContext`i], {$CellContext`i, 
             1, $CellContext`n2$$}], $CellContext`currentSymmetry2$$, 
           $CellContext`geomgen[$CellContext`symmetry2$$, 2], {
           False, $CellContext`axessizer$49679}, {$CellContext`vpr$49679, \
$CellContext`vvr$49679}, 
           Table[
            $CellContext`aorb2$49679[$CellContext`i], {$CellContext`i, 
             1, $CellContext`n2$$}]}, $CellContext`gc1$ = \
$CellContext`whichcontrols[$CellContext`symmetry1$$, 
           1], $CellContext`gc2$ = \
$CellContext`whichcontrols[$CellContext`symmetry2$$, 
           2], $CellContext`controls1$ = Apply[Sequence, 
           Riffle[
            Flatten[
             Table[
              Which[$CellContext`j <= 3, {{
                 $CellContext`normal1$49679[$CellContext`i, $CellContext`j], 
                 $CellContext`pickIndex[$CellContext`i, $CellContext`j, 1], 
                 $CellContext`hkl[$CellContext`j]}, ControlPlacement -> 
                Left}, $CellContext`j == 4, {{
                 $CellContext`colors1$49679[$CellContext`i], 
                 $CellContext`pickColor[$CellContext`i, 1], ""}, 
                Hue[0.1], ControlPlacement -> Left}, $CellContext`j == 5, {{
                 $CellContext`magnitudes1$49679[$CellContext`i], 
                 $CellContext`pickGamma[$CellContext`i, 1], 
                 Text[
                  Style["\[Gamma]", 16]]}, 0.4, 2, Appearance -> "Labeled", 
                ControlPlacement -> Left}], {$CellContext`i, 
               1, $CellContext`n1$$}, {$CellContext`j, 1, 5}], 1], Delimiter, 
            6]], $CellContext`controls2$ = Apply[Sequence, 
           Riffle[
            Flatten[
             Table[
              Which[$CellContext`j <= 3, {{
                 $CellContext`normal2$49679[$CellContext`i, $CellContext`j], 
                 $CellContext`pickIndex[$CellContext`i, $CellContext`j, 2], 
                 $CellContext`hkl[$CellContext`j]}, ControlPlacement -> 
                Right}, $CellContext`j == 4, {{
                 $CellContext`colors2$49679[$CellContext`i], 
                 $CellContext`pickColor[$CellContext`i, 2], ""}, 
                Hue[0.1], ControlPlacement -> Right}, $CellContext`j == 5, {{
                 $CellContext`magnitudes2$49679[$CellContext`i], 
                 $CellContext`pickGamma[$CellContext`i, 2], 
                 Text[
                  Style["\[Gamma]", 16]]}, 0.4, 2, Appearance -> "Labeled", 
                ControlPlacement -> Right}], {$CellContext`i, 
               1, $CellContext`n2$$}, {$CellContext`j, 1, 5}], 1], Delimiter, 
            6]], $CellContext`ors$ = {{$CellContext`dega1$49679$$, \
$CellContext`dega2$49679$$, $CellContext`dega3$49679$$}, \
{$CellContext`degb1$49679$$, $CellContext`degb2$49679$$, \
$CellContext`degb3$49679$$}, $CellContext`convention$49679$$}, \
$CellContext`plotting$ = {$CellContext`opacityr$49679, {
           True, $CellContext`perimsize$49679}, {
           True, $CellContext`gbsizer$49679}, $CellContext`axessizer$49679, \
{$CellContext`vpr$49679, $CellContext`vvr$49679}}}, 
        Manipulate[
         Manipulate[
          $CellContext`doubleWinter[{$CellContext`topshape$, \
$CellContext`bottomshape$, $CellContext`ors$, $CellContext`plotting$, \
{$CellContext`ggb, $CellContext`showwulff, {$CellContext`gbplane1, \
$CellContext`gbplane2, $CellContext`gbplane3}, $CellContext`showstats}, \
$CellContext`sensitivity}], $CellContext`controls1$, 
          Delimiter, $CellContext`controls2$, {{$CellContext`showwulff, \
$CellContext`defShowwulff, 
            Text[
             Style[
             "Show \!\(\*SubscriptBox[\(W\), \(A\)]\) and \!\(\*SubscriptBox[\
\(W\), \(B\)]\)", 16]]}, {True, False}, ControlPlacement -> 
           Bottom}, {{$CellContext`showstats, $CellContext`defShowstats, 
            Text[
             Style["Show data", 16]]}, {True, False}, ControlPlacement -> 
           Bottom}, 
          Delimiter, {{$CellContext`sensitivity, $CellContext`defSens, 
            Text[
             Style["\!\(\*SuperscriptBox[\(Sensitivity\), \(**\)]\)", 16]]}, 
           10, 100, 1, ControlPlacement -> Bottom}, 
          Delimiter, {{$CellContext`ggb, $CellContext`defGgb, 
            Text[
             Style["\!\(\*SubscriptBox[\(\[Gamma]\), \(AB\)]\)", 16]]}, 0, 3, 
           ControlPlacement -> 
           Bottom}, {{$CellContext`gbplane1, $CellContext`defGh, 
            Text[
             Style["AB interface normal h", 16]]}, -5, 5, 0.1, 
           ControlPlacement -> 
           Bottom}, {{$CellContext`gbplane2, $CellContext`defGk, 
            Text[
             Style["AB interface normal k", 16]]}, -5, 5, 0.1, 
           ControlPlacement -> 
           Bottom}, {{$CellContext`gbplane3, $CellContext`defGl, 
            Text[
             Style["AB interface normal l", 16]]}, -5, 5, 0.1, 
           ControlPlacement -> Bottom}, 
          Delimiter, {{$CellContext`vpr$49679, $CellContext`defView, 
            Text[
             Style["Viewing axis (screen normal)", 16]]}, ControlType -> 
           InputField, ControlPlacement -> 
           Bottom}, {{$CellContext`vvr$49679, $CellContext`defVert, 
            Text[
             Style["Vertical direction (up on screen)", 16]]}, ControlType -> 
           InputField, ControlPlacement -> Bottom}, 
          Delimiter, {{$CellContext`opacityr$49679, $CellContext`defOpacity, 
            Text[
             Style["Opacity", 16]]}, 0, 1, ControlPlacement -> 
           Bottom}, {{$CellContext`perimsize$49679, $CellContext`defPerim, 
            Text[
             Style["Triple line size", 16]]}, 0.001, 0.2, ControlPlacement -> 
           Bottom}, {{$CellContext`gbsizer$49679, $CellContext`defGBsize, 
            Text[
             Style["AB interface size", 16]]}, 0, 8, 1, ControlPlacement -> 
           Bottom}, {{$CellContext`axessizer$49679, $CellContext`defAxes, 
            Text[
             Style["Axes length", 16]]}, 0.01, 10, ControlPlacement -> 
           Bottom}, SynchronousUpdating -> False], $CellContext`gc1$, 
         Delimiter, $CellContext`gc2$, SynchronousUpdating -> False]], 
      "Specifications" :> {{{$CellContext`symmetry1$$, "Cubic", 
          Text[
           Style["Symmetry of \!\(\*SubscriptBox[\(W\), \(A\)]\)", 16]]}, {
         "Cubic", "Hexagonal", "Tetragonal", "Orthorhombic", "Monoclinic", 
          "Triclinic"}}, {{$CellContext`currentSymmetry1$$, 
          "m\!\(\*OverscriptBox[\(3\), \(_\)]\)m", 
          Text[
           Style["\!\(\*SubscriptBox[\(W\), \(A\)]\) point group", 16]]}, 
         Dynamic[
          $CellContext`groupSet[$CellContext`symmetry1$$]], ControlType -> 
         PopupMenu}, {{$CellContext`n1$$, 3, 
          Text[
           Style["\!\(\*SubscriptBox[\(W\), \(A\)]\) facet families", 16]]}, {
         1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 
         20}}, Delimiter, {{$CellContext`symmetry2$$, "Cubic", 
          Text[
           Style["\!\(\*SubscriptBox[\(W\), \(B\)]\) symmetry", 16]]}, {
         "Cubic", "Hexagonal", "Tetragonal", "Orthorhombic", "Monoclinic", 
          "Triclinic"}}, {{$CellContext`currentSymmetry2$$, 
          "m\!\(\*OverscriptBox[\(3\), \(_\)]\)m", 
          Text[
           Style["\!\(\*SubscriptBox[\(W\), \(B\)]\) point group", 16]]}, 
         Dynamic[
          $CellContext`groupSet[$CellContext`symmetry2$$]], ControlType -> 
         PopupMenu}, {{$CellContext`n2$$, 2, 
          Text[
           Style["\!\(\*SubscriptBox[\(W\), \(B\)]\) facet families", 16]]}, {
         1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 
         20}}, Delimiter, {{$CellContext`convention$49679$$, 0, 
          Text[
           Style[
           "Euler angle convention (\[Degree]\!\(\*SuperscriptBox[\()\), \
\(*\)]\)", 16]]}, ControlType -> InputField, ControlPlacement -> Top}, 
        Delimiter, {{$CellContext`dega1$49679$$, 0, 
          Text[
           Style[
           "\!\(\*SubscriptBox[\(W\), \(A\)]\) Euler angle \
\!\(\*SubscriptBox[\(\[Phi]\), \(1\)]\) (\[Degree])", 16]]}, ControlType -> 
         InputField, ControlPlacement -> 
         Top}, {{$CellContext`dega2$49679$$, 0, 
          Text[
           Style[
           "\!\(\*SubscriptBox[\(W\), \(A\)]\) Euler angle \[CapitalPhi] (\
\[Degree])", 16]]}, ControlType -> InputField, ControlPlacement -> 
         Top}, {{$CellContext`dega3$49679$$, 0, 
          Text[
           Style[
           "\!\(\*SubscriptBox[\(W\), \(A\)]\) Euler angle \
\!\(\*SubscriptBox[\(\[Phi]\), \(2\)]\) (\[Degree])", 16]]}, ControlType -> 
         InputField, ControlPlacement -> Top}, 
        Delimiter, {{$CellContext`degb1$49679$$, 45, 
          Text[
           Style[
           "\!\(\*SubscriptBox[\(W\), \(B\)]\) Euler angle \
\!\(\*SubscriptBox[\(\[Phi]\), \(1\)]\) (\[Degree])", 16]]}, ControlType -> 
         InputField, ControlPlacement -> 
         Top}, {{$CellContext`degb2$49679$$, 0, 
          Text[
           Style[
           "\!\(\*SubscriptBox[\(W\), \(B\)]\) Euler angle \[CapitalPhi] (\
\[Degree])", 16]]}, ControlType -> InputField, ControlPlacement -> 
         Top}, {{$CellContext`degb3$49679$$, 0, 
          Text[
           Style[
           "\!\(\*SubscriptBox[\(W\), \(B\)]\) Euler angle \
\!\(\*SubscriptBox[\(\[Phi]\), \(2\)]\) (\[Degree])", 16]]}, ControlType -> 
         InputField, ControlPlacement -> Top}}, 
      "Options" :> {BaseStyle -> Large, SynchronousUpdating -> False}, 
      "DefaultOptions" :> {}],
     ImageSizeCache->{1052., {772., 783.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({
      Attributes[$CellContext`topshape$] = {Temporary}, 
       Attributes[$CellContext`normal1$49679] = {Temporary}, 
       Attributes[$CellContext`magnitudes1$49679] = {Temporary}, 
       Attributes[$CellContext`colors1$49679] = {
        Temporary}, $CellContext`geomgen[
         Pattern[$CellContext`sym, 
          Blank[]], 
         Pattern[$CellContext`i, 
          Blank[]]] := If[
         StringMatchQ["Hexagonal", $CellContext`sym], 
         $CellContext`hexagonalconstants[$CellContext`sym, $CellContext`i], 
         If[
          StringMatchQ["Cubic", $CellContext`sym], 
          $CellContext`cubicconstants[$CellContext`sym, $CellContext`i], 
          If[
           StringMatchQ["Tetragonal", $CellContext`sym], 
           $CellContext`tetragonalconstants[$CellContext`sym, $CellContext`i], 
           If[
            StringMatchQ["Orthorhombic", $CellContext`sym], 
            $CellContext`orthorhombicconstants[$CellContext`sym, \
$CellContext`i], 
            If[
             StringMatchQ["Monoclinic", $CellContext`sym], 
             $CellContext`monoclinicconstants[$CellContext`sym, \
$CellContext`i], 
             $CellContext`triclinicconstants[$CellContext`sym, \
$CellContext`i]]]]]], $CellContext`hexagonalconstants[
         Pattern[$CellContext`symmetry, 
          Blank[]], 
         Pattern[$CellContext`i, 
          Blank[]]] := {
         $CellContext`a[$CellContext`i], 
         $CellContext`a[$CellContext`i], 
         $CellContext`c[$CellContext`i], 90, 90, 
         120}, $CellContext`cubicconstants[
         Pattern[$CellContext`symmetry, 
          Blank[]], 
         Pattern[$CellContext`i, 
          Blank[]]] := {
         $CellContext`a[$CellContext`i], 
         $CellContext`a[$CellContext`i], 
         $CellContext`a[$CellContext`i], 90, 90, 
         90}, $CellContext`tetragonalconstants[
         Pattern[$CellContext`symmetry, 
          Blank[]], 
         Pattern[$CellContext`i, 
          Blank[]]] := {
         $CellContext`a[$CellContext`i], 
         $CellContext`a[$CellContext`i], 
         $CellContext`c[$CellContext`i], 90, 90, 
         90}, $CellContext`orthorhombicconstants[
         Pattern[$CellContext`symmetry, 
          Blank[]], 
         Pattern[$CellContext`i, 
          Blank[]]] := {
         $CellContext`a[$CellContext`i], 
         $CellContext`b[$CellContext`i], 
         $CellContext`c[$CellContext`i], 90, 90, 
         90}, $CellContext`monoclinicconstants[
         Pattern[$CellContext`symmetry, 
          Blank[]], 
         Pattern[$CellContext`i, 
          Blank[]]] := {
         $CellContext`a[$CellContext`i], 
         $CellContext`b[$CellContext`i], 
         $CellContext`c[$CellContext`i], 90, 
         $CellContext`\[Beta][$CellContext`i], 
         90}, $CellContext`triclinicconstants[
         Pattern[$CellContext`symmetry, 
          Blank[]], 
         Pattern[$CellContext`i, 
          Blank[]]] := {
         $CellContext`a[$CellContext`i], 
         $CellContext`b[$CellContext`i], 
         $CellContext`c[$CellContext`i], 
         $CellContext`\[Alpha][$CellContext`i], 
         $CellContext`\[Beta][$CellContext`i], 
         $CellContext`\[Gamma][$CellContext`i]}, 
       Attributes[$CellContext`axessizer$49679] = {Temporary}, 
       Attributes[$CellContext`vpr$49679] = {Temporary}, 
       Attributes[$CellContext`vvr$49679] = {Temporary}, 
       Attributes[$CellContext`aorb1$49679] = {Temporary}, 
       Attributes[$CellContext`bottomshape$] = {Temporary}, 
       Attributes[$CellContext`normal2$49679] = {Temporary}, 
       Attributes[$CellContext`magnitudes2$49679] = {Temporary}, 
       Attributes[$CellContext`colors2$49679] = {Temporary}, 
       Attributes[$CellContext`aorb2$49679] = {Temporary}, 
       Attributes[$CellContext`gc1$] = {Temporary}, $CellContext`whichcontrols[
         Pattern[$CellContext`sym, 
          Blank[]], 
         Pattern[$CellContext`i, 
          Blank[]]] := If[
         StringMatchQ["Hexagonal", $CellContext`sym], 
         $CellContext`hexagonalcontrols[$CellContext`sym, $CellContext`i], 
         If[
          StringMatchQ["Cubic", $CellContext`sym], 
          $CellContext`cubiccontrols[$CellContext`sym, $CellContext`i], 
          If[
           StringMatchQ["Tetragonal", $CellContext`sym], 
           $CellContext`tetragonalcontrols[$CellContext`sym, $CellContext`i], 
           
           If[
            StringMatchQ["Orthorhombic", $CellContext`sym], 
            $CellContext`orthorhombiccontrols[$CellContext`sym, \
$CellContext`i], 
            If[
             StringMatchQ["Monoclinic", $CellContext`sym], 
             $CellContext`monocliniccontrols[$CellContext`sym, \
$CellContext`i], 
             $CellContext`tricliniccontrols[$CellContext`sym, \
$CellContext`i]]]]]], $CellContext`hexagonalcontrols[
         Pattern[$CellContext`symmetry, 
          Blank[]], 
         Pattern[$CellContext`i, 
          Blank[]]] := Sequence[{{
           $CellContext`a[$CellContext`i], 1, 
           $CellContext`atext[$CellContext`i]}, ControlPlacement -> Top}, {{
           $CellContext`c[$CellContext`i], 1, 
           $CellContext`ctext[$CellContext`i]}, ControlPlacement -> 
          Top}], $CellContext`atext[
         Pattern[$CellContext`i, 
          Blank[]]] := Text[
         Style[
          Subscript["a", $CellContext`i], 16]], 
       Attributes[Subscript] = {NHoldRest}, $CellContext`ctext[
         Pattern[$CellContext`i, 
          Blank[]]] := Text[
         Style[
          Subscript["c", $CellContext`i], 16]], $CellContext`cubiccontrols[
         Pattern[$CellContext`symmetry, 
          Blank[]], 
         Pattern[$CellContext`i, 
          Blank[]]] := Sequence[{{
           $CellContext`a[$CellContext`i], 1, 
           $CellContext`atext[$CellContext`i]}, ControlPlacement -> 
          Top}], $CellContext`tetragonalcontrols[
         Pattern[$CellContext`symmetry, 
          Blank[]], 
         Pattern[$CellContext`i, 
          Blank[]]] := Sequence[{{
           $CellContext`a[$CellContext`i], 1, 
           $CellContext`atext[$CellContext`i]}, ControlPlacement -> Top}, {{
           $CellContext`c[$CellContext`i], 1, 
           $CellContext`ctext[$CellContext`i]}, ControlPlacement -> 
          Top}], $CellContext`orthorhombiccontrols[
         Pattern[$CellContext`symmetry, 
          Blank[]], 
         Pattern[$CellContext`i, 
          Blank[]]] := Sequence[{{
           $CellContext`a[$CellContext`i], 1, 
           $CellContext`atext[$CellContext`i]}, ControlPlacement -> Top}, {{
           $CellContext`b[$CellContext`i], 1, 
           $CellContext`btext[$CellContext`i]}, ControlPlacement -> Top}, {{
           $CellContext`c[$CellContext`i], 1, 
           $CellContext`ctext[$CellContext`i]}, ControlPlacement -> 
          Top}], $CellContext`btext[
         Pattern[$CellContext`i, 
          Blank[]]] := Text[
         Style[
          Subscript["b", $CellContext`i], 
          16]], $CellContext`monocliniccontrols[
         Pattern[$CellContext`symmetry, 
          Blank[]], 
         Pattern[$CellContext`i, 
          Blank[]]] := Sequence[{{
           $CellContext`a[$CellContext`i], 1, 
           $CellContext`atext[$CellContext`i]}, ControlPlacement -> Top}, {{
           $CellContext`b[$CellContext`i], 1, 
           $CellContext`btext[$CellContext`i]}, ControlPlacement -> Top}, {{
           $CellContext`c[$CellContext`i], 1, 
           $CellContext`ctext[$CellContext`i]}, ControlPlacement -> Top}, {{
           $CellContext`\[Beta][$CellContext`i], 90, 
           $CellContext`\[Beta]text[$CellContext`i]}, ControlPlacement -> 
          Top}], $CellContext`\[Beta]text[
         Pattern[$CellContext`i, 
          Blank[]]] := Text[
         Style[
          Subscript["\[Beta]", $CellContext`i], 
          16]], $CellContext`tricliniccontrols[
         Pattern[$CellContext`symmetry, 
          Blank[]], 
         Pattern[$CellContext`i, 
          Blank[]]] := Sequence[{{
           $CellContext`a[$CellContext`i], 1, 
           $CellContext`atext[$CellContext`i]}, ControlPlacement -> Top}, {{
           $CellContext`b[$CellContext`i], 1, 
           $CellContext`btext[$CellContext`i]}, ControlPlacement -> Top}, {{
           $CellContext`c[$CellContext`i], 1, 
           $CellContext`ctext[$CellContext`i]}, ControlPlacement -> Top}, {{
           $CellContext`\[Alpha][$CellContext`i], 90, 
           $CellContext`\[Alpha]text[$CellContext`i]}, ControlPlacement -> 
          Top}, {{
           $CellContext`\[Beta][$CellContext`i], 90, 
           $CellContext`\[Beta]text[$CellContext`i]}, ControlPlacement -> 
          Top}, {{
           $CellContext`\[Gamma][$CellContext`i], 90, 
           $CellContext`\[Gamma]text[$CellContext`i]}, ControlPlacement -> 
          Top}], $CellContext`\[Alpha]text[
         Pattern[$CellContext`i, 
          Blank[]]] := Text[
         Style[
          Subscript["\[Alpha]", $CellContext`i], 
          16]], $CellContext`\[Gamma]text[
         Pattern[$CellContext`i, 
          Blank[]]] := Text[
         Style[
          Subscript["\[Gamma]", $CellContext`i], 16]], 
       Attributes[$CellContext`gc2$] = {Temporary}, 
       Attributes[$CellContext`controls1$] = {
        Temporary}, $CellContext`pickIndex[
         Pattern[$CellContext`i, 
          Blank[]], 
         Pattern[$CellContext`j, 
          Blank[]], 
         Pattern[$CellContext`id, 
          Blank[]]] := If[$CellContext`id == 1, 
         Which[$CellContext`i == 1, 
          
          Which[$CellContext`j == 1, 0, $CellContext`j == 2, 
           0, $CellContext`j == 3, 1, True, 1], $CellContext`i == 2, 
          
          Which[$CellContext`j == 1, 1, $CellContext`j == 2, 
           1, $CellContext`j == 3, 1, True, 1], $CellContext`i == 3, 
          
          Which[$CellContext`j == 1, 1, $CellContext`j == 2, 
           1, $CellContext`j == 3, 0, True, 1], True, 
          RandomInteger[{-8, 8}]], 
         Which[$CellContext`i == 1, 
          
          Which[$CellContext`j == 1, 0, $CellContext`j == 2, 
           0, $CellContext`j == 3, 1, True, 1], $CellContext`i == 2, 
          
          Which[$CellContext`j == 1, 1, $CellContext`j == 2, 
           1, $CellContext`j == 3, 1, True, 1], $CellContext`i == 3, 
          Which[$CellContext`j == 1, 1, $CellContext`j == 2, 
           1, $CellContext`j == 3, 0, True, 1], $CellContext`i == 4, 
          
          Which[$CellContext`j == 1, 1, $CellContext`j == 2, 
           2, $CellContext`j == 3, 3, True, 1], $CellContext`i == 5, 
          
          Which[$CellContext`j == 1, 1, $CellContext`j == 2, 
           0, $CellContext`j == 3, 2, True, 1], True, 
          RandomInteger[{-8, 8}]]], $CellContext`hkl[1] = Text[
         Style["h", Italic, 16]], $CellContext`hkl[2] = Text[
         Style["k", Italic, 16]], $CellContext`hkl[3] = Text[
         Style["l", Italic, 16]], $CellContext`pickColor[
         Pattern[$CellContext`i, 
          Blank[]], 
         Pattern[$CellContext`id, 
          Blank[]]] := If[$CellContext`id == 1, 
         Which[$CellContext`i == 1, 
          Darker[Magenta], $CellContext`i == 2, 
          Darker[Yellow], $CellContext`i == 3, Orange, True, Red], 
         Which[$CellContext`i == 1, 
          Darker[Cyan], $CellContext`i == 2, Green, $CellContext`i == 3, Blue,
           True, 
          Darker[Green]]], $CellContext`pickGamma[
         Pattern[$CellContext`i, 
          Blank[]], 
         Pattern[$CellContext`id, 
          Blank[]]] := If[$CellContext`id == 1, 
         Which[$CellContext`i == 1, 1, $CellContext`i == 2, 1, $CellContext`i == 
          3, 1, True, 1], 
         Which[$CellContext`i == 1, 1, $CellContext`i == 2, 1, $CellContext`i == 
          3, 1, True, 1]], Attributes[$CellContext`controls2$] = {Temporary}, 
       Attributes[$CellContext`ors$] = {Temporary}, 
       Attributes[$CellContext`dega1$49679$$] = {Temporary}, 
       Attributes[$CellContext`dega2$49679$$] = {Temporary}, 
       Attributes[$CellContext`dega3$49679$$] = {Temporary}, 
       Attributes[$CellContext`degb1$49679$$] = {Temporary}, 
       Attributes[$CellContext`degb2$49679$$] = {Temporary}, 
       Attributes[$CellContext`degb3$49679$$] = {Temporary}, 
       Attributes[$CellContext`convention$49679$$] = {Temporary}, 
       Attributes[$CellContext`plotting$] = {Temporary}, 
       Attributes[$CellContext`opacityr$49679] = {Temporary}, 
       Attributes[$CellContext`perimsize$49679] = {Temporary}, 
       Attributes[$CellContext`gbsizer$49679] = {
        Temporary}, $CellContext`doubleWinter[
         Pattern[$CellContext`argument, 
          Blank[]]] := 
       Module[{$CellContext`gbplane, $CellContext`degall, \
$CellContext`axisall, $CellContext`rot, $CellContext`norms1, \
$CellContext`ds1, $CellContext`colors1, $CellContext`symstring1, \
$CellContext`geometry1, $CellContext`showaxes1, $CellContext`axes1, \
$CellContext`vp1, $CellContext`vv1, $CellContext`sym1, $CellContext`aa1, \
$CellContext`bb1, $CellContext`cc1, $CellContext`\[Alpha]\[Alpha]1, \
$CellContext`\[Beta]\[Beta]1, $CellContext`\[Gamma]\[Gamma]1, \
$CellContext`avect1, $CellContext`bvect1, $CellContext`cvect1, \
$CellContext`cartesian1, $CellContext`points1, $CellContext`normsxyz1, \
$CellContext`symop1, $CellContext`dmult1, $CellContext`gams1, \
$CellContext`eliminated1, $CellContext`surviving1, $CellContext`cols1, \
$CellContext`newGsPre1, $CellContext`newG1s, $CellContext`verts1, \
$CellContext`vandps1, $CellContext`vol1, $CellContext`norms2, \
$CellContext`ds2, $CellContext`colors2, $CellContext`symstring2, \
$CellContext`geometry2, $CellContext`showaxes2, $CellContext`axes2, \
$CellContext`vp2, $CellContext`vv2, $CellContext`sym2, $CellContext`aa2, \
$CellContext`bb2, $CellContext`cc2, $CellContext`\[Alpha]\[Alpha]2, \
$CellContext`\[Beta]\[Beta]2, $CellContext`\[Gamma]\[Gamma]2, \
$CellContext`avect2, $CellContext`bvect2, $CellContext`cvect2, \
$CellContext`cartesian2, $CellContext`points2, $CellContext`normsxyz2, \
$CellContext`symop2, $CellContext`dmult2, $CellContext`gams2, \
$CellContext`eliminated2, $CellContext`surviving2, $CellContext`cols2, \
$CellContext`newGsPre2, $CellContext`newG2s, $CellContext`verts2, \
$CellContext`vandps2, $CellContext`vol2, $CellContext`eu1, $CellContext`eu2, \
$CellContext`conv, $CellContext`sensitiv, $CellContext`opacityr, \
$CellContext`showperim, $CellContext`perimsize, $CellContext`showgbr, \
$CellContext`gbsizer, $CellContext`axessizer, $CellContext`vpr, \
$CellContext`vvr, $CellContext`ggb, $CellContext`finalwnorms1, \
$CellContext`finalwnorms2, $CellContext`rotate1, $CellContext`rotate2, \
$CellContext`shift1, $CellContext`shift2, $CellContext`rotwulff1, \
$CellContext`rotwulff2, $CellContext`shiftwulff1, $CellContext`shiftwulff2, \
$CellContext`full1, $CellContext`full2, $CellContext`half1, \
$CellContext`half2, $CellContext`halfn1, $CellContext`halfn2, \
$CellContext`color1, $CellContext`color2, $CellContext`clean1, \
$CellContext`clean2, $CellContext`wnormsa, $CellContext`colorsa, \
$CellContext`eliminateda, $CellContext`survivinga, $CellContext`cols, \
$CellContext`newGsa, $CellContext`vertsa, $CellContext`vertsAndParents, \
$CellContext`vol, $CellContext`gams, $CellContext`verts, $CellContext`vandps, \
$CellContext`switch, $CellContext`borders, $CellContext`possibleEdges, \
$CellContext`edges, $CellContext`per, $CellContext`temp, $CellContext`next, \
$CellContext`ord, $CellContext`fin, $CellContext`bord, \
$CellContext`perimeterverts, $CellContext`offset, $CellContext`stepsize, \
$CellContext`max, $CellContext`midptcutoff, $CellContext`midpts, \
$CellContext`refined, $CellContext`perimeterpos, $CellContext`perimeter, \
$CellContext`scale, $CellContext`neighbors, $CellContext`gbnodesl2, \
$CellContext`gbnodesl3, $CellContext`gbnodesl4, $CellContext`gbnodesl5, \
$CellContext`gbnodesl6, $CellContext`gbnodesl7, $CellContext`gbnodesl8, \
$CellContext`gbnodesl9, $CellContext`gbnodes, $CellContext`evoln, \
$CellContext`gbtris, $CellContext`wrinklearea, $CellContext`flatarea, \
$CellContext`newarea, $CellContext`newverts1, $CellContext`polys1, \
$CellContext`wulffshape1, $CellContext`plot1, $CellContext`etop, \
$CellContext`gpv1, $CellContext`newverts2, $CellContext`polys2, \
$CellContext`wulffshape2, $CellContext`plot2, $CellContext`ebot, \
$CellContext`gpv2, $CellContext`agb, $CellContext`energetics, \
$CellContext`epi, $CellContext`plotr, $CellContext`showwulff, \
$CellContext`showstats, $CellContext`plotl}, $CellContext`gbplane = 
          Part[$CellContext`argument, 5, 3]; $CellContext`degall = 
          VectorAngle[$CellContext`gbplane, {0, 0, 1}]; $CellContext`axisall = 
          Cross[{0, 0, 1}, $CellContext`gbplane]; $CellContext`rot = 
          If[$CellContext`gbplane == {0, 0, 1}, 
            IdentityMatrix[3], 
            
            RotationMatrix[$CellContext`degall, $CellContext`axisall]]; \
$CellContext`norms1 = Part[$CellContext`argument, 1, 1]; $CellContext`ds1 = 
          Part[$CellContext`argument, 1, 2]; $CellContext`colors1 = 
          Part[$CellContext`argument, 1, 3]; $CellContext`symstring1 = 
          Part[$CellContext`argument, 1, 4]; $CellContext`geometry1 = 
          Part[$CellContext`argument, 1, 5]; $CellContext`showaxes1 = 
          True; $CellContext`axes1 = 
          Part[$CellContext`argument, 1, 6, 2]; $CellContext`vp1 = 
          Part[$CellContext`argument, 1, 7, 1]; $CellContext`vv1 = 
          Part[$CellContext`argument, 1, 7, 
            2]; $CellContext`sym1 = \
$CellContext`symmetryMatrices[$CellContext`symstring1]; $CellContext`aa1 = 
          Part[$CellContext`geometry1, 1]; $CellContext`bb1 = 
          Part[$CellContext`geometry1, 2]; $CellContext`cc1 = 
          Part[$CellContext`geometry1, 3]; $CellContext`\[Alpha]\[Alpha]1 = 
          Part[$CellContext`geometry1, 4] (Pi/
            180); $CellContext`\[Beta]\[Beta]1 = 
          Part[$CellContext`geometry1, 5] (Pi/
            180); $CellContext`\[Gamma]\[Gamma]1 = 
          Part[$CellContext`geometry1, 6] (Pi/
            180); $CellContext`avect1 = {$CellContext`aa1 
            Sin[$CellContext`\[Beta]\[Beta]1], 0, $CellContext`aa1 
            Cos[$CellContext`\[Beta]\[Beta]1]}; $CellContext`bvect1 = \
{$CellContext`bb1 Sin[$CellContext`\[Alpha]\[Alpha]1] 
            Cos[$CellContext`\[Gamma]\[Gamma]1], $CellContext`bb1 
            Sin[$CellContext`\[Alpha]\[Alpha]1] 
            Sin[$CellContext`\[Gamma]\[Gamma]1], $CellContext`bb1 
            Cos[$CellContext`\[Alpha]\[Alpha]1]}; $CellContext`cvect1 = {
           0, 0, $CellContext`cc1}; $CellContext`cartesian1 = Table[{
             If[
             Part[$CellContext`norms1, $CellContext`i, 1] == 0, 
              "Inf", $CellContext`avect1/
              Part[$CellContext`norms1, $CellContext`i, 1]], 
             If[
             Part[$CellContext`norms1, $CellContext`i, 2] == 0, 
              "Inf", $CellContext`bvect1/
              Part[$CellContext`norms1, $CellContext`i, 2]], 
             If[
             Part[$CellContext`norms1, $CellContext`i, 3] == 0, 
              "Inf", $CellContext`cvect1/
              Part[$CellContext`norms1, $CellContext`i, 3]]}, {$CellContext`i,
              1, 
             Length[$CellContext`norms1]}]; $CellContext`points1 = Table[
            Which[
             And[
              Not[
               VectorQ[
                Part[$CellContext`cartesian1, $CellContext`i, 1]]], 
              Not[
               VectorQ[
                Part[$CellContext`cartesian1, $CellContext`i, 2]]]], {
             Part[$CellContext`cartesian1, $CellContext`i, 
                3] + $CellContext`avect1, 
              Part[$CellContext`cartesian1, $CellContext`i, 
                3] + $CellContext`bvect1, 
              Part[$CellContext`cartesian1, $CellContext`i, 3]}, 
             And[
              Not[
               VectorQ[
                Part[$CellContext`cartesian1, $CellContext`i, 1]]], 
              Not[
               VectorQ[
                Part[$CellContext`cartesian1, $CellContext`i, 3]]]], {
             Part[$CellContext`cartesian1, $CellContext`i, 
                2] + $CellContext`avect1, 
              Part[$CellContext`cartesian1, $CellContext`i, 2], 
              Part[$CellContext`cartesian1, $CellContext`i, 
                2] + $CellContext`cvect1}, 
             And[
              Not[
               VectorQ[
                Part[$CellContext`cartesian1, $CellContext`i, 2]]], 
              Not[
               VectorQ[
                Part[$CellContext`cartesian1, $CellContext`i, 3]]]], {
              Part[$CellContext`cartesian1, $CellContext`i, 1], 
              Part[$CellContext`cartesian1, $CellContext`i, 
                1] + $CellContext`bvect1, 
              Part[$CellContext`cartesian1, $CellContext`i, 
                1] + $CellContext`cvect1}, 
             Not[
              VectorQ[
               Part[$CellContext`cartesian1, $CellContext`i, 1]]], {
             Part[$CellContext`cartesian1, $CellContext`i, 
                3] + $CellContext`avect1, 
              Part[$CellContext`cartesian1, $CellContext`i, 2], 
              Part[$CellContext`cartesian1, $CellContext`i, 3]}, 
             Not[
              VectorQ[
               Part[$CellContext`cartesian1, $CellContext`i, 2]]], {
              Part[$CellContext`cartesian1, $CellContext`i, 1], 
              Part[$CellContext`cartesian1, $CellContext`i, 
                1] + $CellContext`bvect1, 
              Part[$CellContext`cartesian1, $CellContext`i, 3]}, 
             Not[
              VectorQ[
               Part[$CellContext`cartesian1, $CellContext`i, 3]]], {
              Part[$CellContext`cartesian1, $CellContext`i, 1], 
              Part[$CellContext`cartesian1, $CellContext`i, 2], 
              Part[$CellContext`cartesian1, $CellContext`i, 
                2] + $CellContext`cvect1}, True, 
             Part[$CellContext`cartesian1, $CellContext`i]], {$CellContext`i, 
             
             Length[$CellContext`norms1]}]; $CellContext`normsxyz1 = Table[
            Cross[
            Part[$CellContext`points1, $CellContext`i, 1] - 
             Part[$CellContext`points1, $CellContext`i, 2], 
             Part[$CellContext`points1, $CellContext`i, 2] - 
             Part[$CellContext`points1, $CellContext`i, 3]], {$CellContext`i, 
             
             Length[$CellContext`norms1]}]; $CellContext`symop1 = Map[Union, 
            Table[
             FixedPoint[Simplify[
               Union[
                Partition[
                 Flatten[
                  Table[
                   Round[
                    Dot[$CellContext`sym1, 
                    Part[#, $CellContext`i]], 10^(-10.)], {$CellContext`i, 1, 
                    
                    Length[#]}]], 3]]]& , 
              Dot[$CellContext`sym1, 
               
               Part[$CellContext`normsxyz1, $CellContext`j]]], \
{$CellContext`j, 1, 
              Length[$CellContext`normsxyz1]}]]; $CellContext`dmult1 = Table[
            Part[$CellContext`ds1, $CellContext`i], {$CellContext`i, 1, 
             Length[$CellContext`ds1]}, {$CellContext`j, 1, 
             Length[
              
              Part[$CellContext`symop1, $CellContext`i]]}]; \
$CellContext`gams1 = Table[
            N[
            Part[$CellContext`dmult1, $CellContext`i, $CellContext`j] 
             Normalize[
               
               Part[$CellContext`symop1, $CellContext`i, $CellContext`j]]], \
{$CellContext`i, 1, 
             Length[$CellContext`normsxyz1]}, {$CellContext`j, 1, 
             Length[
              
              Part[$CellContext`symop1, $CellContext`i]]}]; \
$CellContext`eliminated1 = Table[
            $CellContext`outsideWulffCompiled[
             Part[$CellContext`gams1, $CellContext`i, $CellContext`j], 
             Part[$CellContext`gams1, $CellContext`k, 1]], {$CellContext`k, 
             Length[$CellContext`gams1]}, {$CellContext`i, 
             If[$CellContext`k == 1, 
              Table[$CellContext`a, {$CellContext`a, 2, 
                Length[$CellContext`gams1]}], 
              If[$CellContext`k == Length[$CellContext`gams1], 
               Table[$CellContext`a, {$CellContext`a, 1, $CellContext`k - 1}], 
               Join[
                Table[$CellContext`a, {$CellContext`a, $CellContext`k - 1}], 
                Table[$CellContext`a, {$CellContext`a, $CellContext`k + 1, 
                  Length[$CellContext`gams1]}]]]]}, {$CellContext`j, 
             Length[
              
              Part[$CellContext`gams1, $CellContext`i]]}]; \
$CellContext`surviving1 = Select[
            Table[
             If[
              MemberQ[
               Flatten[
                Part[$CellContext`eliminated1, $CellContext`i]], True], 
              Null, $CellContext`i], {$CellContext`i, 
              Length[$CellContext`gams1]}], NumericQ]; $CellContext`cols1 = 
          Flatten[
            Table[
             
             Part[$CellContext`colors1, $CellContext`i], {$CellContext`i, \
$CellContext`surviving1}, {$CellContext`j, 
              Length[
               
               Part[$CellContext`gams1, $CellContext`i]]}]]; \
$CellContext`newGsPre1 = Flatten[
            Table[{
              
              Part[$CellContext`gams1, $CellContext`i, $CellContext`j], \
$CellContext`i}, {$CellContext`i, $CellContext`surviving1}, {$CellContext`j, 
              Length[
               Part[$CellContext`gams1, $CellContext`i]]}], 
            1]; $CellContext`newG1s = Table[
            Join[
             
             Part[$CellContext`newGsPre1, $CellContext`i], {$CellContext`i}], \
{$CellContext`i, 
             
             Length[$CellContext`newGsPre1]}]; {$CellContext`verts1, \
$CellContext`vandps1} = $CellContext`makeAWulff[$CellContext`newG1s, \
$CellContext`cols1]; $CellContext`vol1 = (1/3) Sum[Re[
               $CellContext`findarea[
                Part[$CellContext`verts1, $CellContext`i]]] Norm[
               Part[$CellContext`newG1s, $CellContext`i, 1]], {$CellContext`i,
               1, 
              Length[$CellContext`newG1s]}]; $CellContext`norms2 = Table[
            Normalize[
             
             Part[$CellContext`argument, 2, 
              1, $CellContext`i]], {$CellContext`i, 
             Length[
              Part[$CellContext`argument, 2, 1]]}]; $CellContext`ds2 = 
          Part[$CellContext`argument, 2, 2]; $CellContext`colors2 = 
          Part[$CellContext`argument, 2, 3]; $CellContext`symstring2 = 
          Part[$CellContext`argument, 2, 4]; $CellContext`geometry2 = 
          Part[$CellContext`argument, 2, 5]; $CellContext`showaxes2 = 
          True; $CellContext`axes2 = 
          Part[$CellContext`argument, 2, 6, 2]; $CellContext`vp2 = 
          Part[$CellContext`argument, 2, 7, 1]; $CellContext`vv2 = 
          Part[$CellContext`argument, 2, 7, 
            2]; $CellContext`sym2 = \
$CellContext`symmetryMatrices[$CellContext`symstring2]; $CellContext`aa2 = 
          Part[$CellContext`geometry2, 1]; $CellContext`bb2 = 
          Part[$CellContext`geometry2, 2]; $CellContext`cc2 = 
          Part[$CellContext`geometry2, 3]; $CellContext`\[Alpha]\[Alpha]2 = 
          Part[$CellContext`geometry2, 4] (Pi/
            180); $CellContext`\[Beta]\[Beta]2 = 
          Part[$CellContext`geometry2, 5] (Pi/
            180); $CellContext`\[Gamma]\[Gamma]2 = 
          Part[$CellContext`geometry2, 6] (Pi/
            180); $CellContext`avect2 = {$CellContext`aa2 
            Sin[$CellContext`\[Beta]\[Beta]2], 0, $CellContext`aa2 
            Cos[$CellContext`\[Beta]\[Beta]2]}; $CellContext`bvect2 = \
{$CellContext`bb2 Sin[$CellContext`\[Alpha]\[Alpha]2] 
            Cos[$CellContext`\[Gamma]\[Gamma]2], $CellContext`bb2 
            Sin[$CellContext`\[Alpha]\[Alpha]2] 
            Sin[$CellContext`\[Gamma]\[Gamma]2], $CellContext`bb2 
            Cos[$CellContext`\[Alpha]\[Alpha]2]}; $CellContext`cvect2 = {
           0, 0, $CellContext`cc2}; $CellContext`cartesian2 = Table[{
             If[
             Part[$CellContext`norms2, $CellContext`i, 1] == 0, 
              "Inf", $CellContext`avect2/
              Part[$CellContext`norms2, $CellContext`i, 1]], 
             If[
             Part[$CellContext`norms2, $CellContext`i, 2] == 0, 
              "Inf", $CellContext`bvect2/
              Part[$CellContext`norms2, $CellContext`i, 2]], 
             If[
             Part[$CellContext`norms2, $CellContext`i, 3] == 0, 
              "Inf", $CellContext`cvect2/
              Part[$CellContext`norms2, $CellContext`i, 3]]}, {$CellContext`i,
              1, 
             Length[$CellContext`norms2]}]; $CellContext`points2 = Table[
            Which[
             And[
              Not[
               VectorQ[
                Part[$CellContext`cartesian2, $CellContext`i, 1]]], 
              Not[
               VectorQ[
                Part[$CellContext`cartesian2, $CellContext`i, 2]]]], {
             Part[$CellContext`cartesian2, $CellContext`i, 
                3] + $CellContext`avect2, 
              Part[$CellContext`cartesian2, $CellContext`i, 
                3] + $CellContext`bvect2, 
              Part[$CellContext`cartesian2, $CellContext`i, 3]}, 
             And[
              Not[
               VectorQ[
                Part[$CellContext`cartesian2, $CellContext`i, 1]]], 
              Not[
               VectorQ[
                Part[$CellContext`cartesian2, $CellContext`i, 3]]]], {
             Part[$CellContext`cartesian2, $CellContext`i, 
                2] + $CellContext`avect1, 
              Part[$CellContext`cartesian2, $CellContext`i, 2], 
              Part[$CellContext`cartesian2, $CellContext`i, 
                2] + $CellContext`cvect2}, 
             And[
              Not[
               VectorQ[
                Part[$CellContext`cartesian2, $CellContext`i, 2]]], 
              Not[
               VectorQ[
                Part[$CellContext`cartesian2, $CellContext`i, 3]]]], {
              Part[$CellContext`cartesian2, $CellContext`i, 1], 
              Part[$CellContext`cartesian2, $CellContext`i, 
                1] + $CellContext`bvect2, 
              Part[$CellContext`cartesian2, $CellContext`i, 
                1] + $CellContext`cvect2}, 
             Not[
              VectorQ[
               Part[$CellContext`cartesian2, $CellContext`i, 1]]], {
             Part[$CellContext`cartesian2, $CellContext`i, 
                3] + $CellContext`avect2, 
              Part[$CellContext`cartesian2, $CellContext`i, 2], 
              Part[$CellContext`cartesian2, $CellContext`i, 3]}, 
             Not[
              VectorQ[
               Part[$CellContext`cartesian2, $CellContext`i, 2]]], {
              Part[$CellContext`cartesian2, $CellContext`i, 1], 
              Part[$CellContext`cartesian2, $CellContext`i, 
                1] + $CellContext`bvect2, 
              Part[$CellContext`cartesian2, $CellContext`i, 3]}, 
             Not[
              VectorQ[
               Part[$CellContext`cartesian2, $CellContext`i, 3]]], {
              Part[$CellContext`cartesian2, $CellContext`i, 1], 
              Part[$CellContext`cartesian2, $CellContext`i, 2], 
              Part[$CellContext`cartesian2, $CellContext`i, 
                2] + $CellContext`cvect2}, True, 
             Part[$CellContext`cartesian2, $CellContext`i]], {$CellContext`i, 
             
             Length[$CellContext`norms2]}]; $CellContext`normsxyz2 = Table[
            Cross[
            Part[$CellContext`points2, $CellContext`i, 1] - 
             Part[$CellContext`points2, $CellContext`i, 2], 
             Part[$CellContext`points2, $CellContext`i, 2] - 
             Part[$CellContext`points2, $CellContext`i, 3]], {$CellContext`i, 
             
             Length[$CellContext`norms2]}]; $CellContext`symop2 = Map[Union, 
            Table[
             FixedPoint[Simplify[
               Union[
                Partition[
                 Flatten[
                  Table[
                   Round[
                    Dot[$CellContext`sym2, 
                    Part[#, $CellContext`i]], 10^(-10.)], {$CellContext`i, 1, 
                    
                    Length[#]}]], 3]]]& , 
              Dot[$CellContext`sym2, 
               
               Part[$CellContext`normsxyz2, $CellContext`j]]], \
{$CellContext`j, 1, 
              Length[$CellContext`normsxyz2]}]]; $CellContext`dmult2 = Table[
            Part[$CellContext`ds2, $CellContext`i], {$CellContext`i, 1, 
             Length[$CellContext`ds2]}, {$CellContext`j, 1, 
             Length[
              
              Part[$CellContext`symop2, $CellContext`i]]}]; \
$CellContext`gams2 = Table[
            N[
            Part[$CellContext`dmult2, $CellContext`i, $CellContext`j] 
             Normalize[
               
               Part[$CellContext`symop2, $CellContext`i, $CellContext`j]]], \
{$CellContext`i, 1, 
             Length[$CellContext`normsxyz2]}, {$CellContext`j, 1, 
             Length[
              
              Part[$CellContext`symop2, $CellContext`i]]}]; \
$CellContext`eliminated2 = Table[
            $CellContext`outsideWulffCompiled[
             Part[$CellContext`gams2, $CellContext`i, $CellContext`j], 
             Part[$CellContext`gams2, $CellContext`k, 1]], {$CellContext`k, 
             Length[$CellContext`gams2]}, {$CellContext`i, 
             If[$CellContext`k == 1, 
              Table[$CellContext`a, {$CellContext`a, 2, 
                Length[$CellContext`gams2]}], 
              If[$CellContext`k == Length[$CellContext`gams2], 
               Table[$CellContext`a, {$CellContext`a, 1, $CellContext`k - 1}], 
               Join[
                Table[$CellContext`a, {$CellContext`a, $CellContext`k - 1}], 
                Table[$CellContext`a, {$CellContext`a, $CellContext`k + 1, 
                  Length[$CellContext`gams2]}]]]]}, {$CellContext`j, 
             Length[
              
              Part[$CellContext`gams2, $CellContext`i]]}]; \
$CellContext`surviving2 = Select[
            Table[
             If[
              MemberQ[
               Flatten[
                Part[$CellContext`eliminated2, $CellContext`i]], True], 
              Null, $CellContext`i], {$CellContext`i, 
              Length[$CellContext`gams2]}], NumericQ]; $CellContext`cols2 = 
          Flatten[
            Table[
             
             Part[$CellContext`colors2, $CellContext`i], {$CellContext`i, \
$CellContext`surviving2}, {$CellContext`j, 
              Length[
               
               Part[$CellContext`gams2, $CellContext`i]]}]]; \
$CellContext`newGsPre2 = Flatten[
            Table[{
              
              Part[$CellContext`gams2, $CellContext`i, $CellContext`j], \
$CellContext`i}, {$CellContext`i, $CellContext`surviving2}, {$CellContext`j, 
              Length[
               Part[$CellContext`gams2, $CellContext`i]]}], 
            1]; $CellContext`newG2s = Table[
            Join[
             
             Part[$CellContext`newGsPre2, $CellContext`i], {$CellContext`i}], \
{$CellContext`i, 
             
             Length[$CellContext`newGsPre2]}]; {$CellContext`verts2, \
$CellContext`vandps2} = $CellContext`makeAWulff[$CellContext`newG2s, \
$CellContext`cols2]; $CellContext`vol2 = (1/3) Sum[Re[
               $CellContext`findarea[
                Part[$CellContext`verts2, $CellContext`i]]] Norm[
               Part[$CellContext`newG2s, $CellContext`i, 1]], {$CellContext`i,
               1, 
              Length[$CellContext`newG2s]}]; $CellContext`eu1 = 
          Part[$CellContext`argument, 3, 1]; $CellContext`eu2 = 
          Part[$CellContext`argument, 3, 2]; $CellContext`conv = 
          Part[$CellContext`argument, 3, 3]; $CellContext`opacityr = 
          Part[$CellContext`argument, 4, 1]; $CellContext`showperim = 
          Part[$CellContext`argument, 4, 2, 1]; $CellContext`perimsize = 
          Part[$CellContext`argument, 4, 2, 2]; $CellContext`showgbr = 
          Part[$CellContext`argument, 4, 3, 1]; $CellContext`gbsizer = 
          Part[$CellContext`argument, 4, 3, 2]; $CellContext`axessizer = 
          Part[$CellContext`argument, 4, 4]; $CellContext`vpr = 
          Dot[$CellContext`rot, 
            Part[$CellContext`argument, 4, 5, 1]]; $CellContext`vvr = 
          Dot[$CellContext`rot, 
            Part[$CellContext`argument, 4, 5, 2]]; $CellContext`ggb = 
          Part[$CellContext`argument, 5, 1]; $CellContext`sensitiv = 
          Part[$CellContext`argument, 6]; $CellContext`finalwnorms1 = Table[
            
            Part[$CellContext`newG1s, $CellContext`i, 1], {$CellContext`i, 1, 
             
             Length[$CellContext`newG1s]}]; $CellContext`finalwnorms2 = 
          Table[
            
            Part[$CellContext`newG2s, $CellContext`i, 1], {$CellContext`i, 1, 
             
             Length[$CellContext`newG2s]}]; $CellContext`rotate1 = Table[
            Dot[
             $CellContext`euler[
              Part[$CellContext`eu1, 1], 
              Part[$CellContext`eu1, 2], 
              Part[$CellContext`eu1, 3], $CellContext`conv], 
             Dot[$CellContext`rot, 
              
              Part[$CellContext`finalwnorms1, $CellContext`i]]], \
{$CellContext`i, 1, 
             Length[$CellContext`finalwnorms1]}]; $CellContext`rotate2 = Table[
            Dot[
             $CellContext`euler[
              Part[$CellContext`eu2, 1], 
              Part[$CellContext`eu2, 2], 
              Part[$CellContext`eu2, 3], $CellContext`conv], 
             Dot[$CellContext`rot, 
              
              Part[$CellContext`finalwnorms2, $CellContext`i]]], \
{$CellContext`i, 1, 
             Length[$CellContext`finalwnorms2]}]; $CellContext`shift1 = 
          Table[(Norm[
               
               Part[$CellContext`rotate1, $CellContext`i]] - \
($CellContext`ggb/2) Dot[
               Normalize[
                Part[$CellContext`rotate1, $CellContext`i]], {0, 0, 1}]) 
            Normalize[
              Part[$CellContext`rotate1, $CellContext`i]], {$CellContext`i, 1, 
             Length[$CellContext`finalwnorms1]}]; $CellContext`shift2 = 
          Table[(Norm[
               
               Part[$CellContext`rotate2, $CellContext`i]] + \
($CellContext`ggb/2) Dot[
                Normalize[
                 Part[$CellContext`rotate2, $CellContext`i]], {0, 0, 1}]) 
            Normalize[
              Part[$CellContext`rotate2, $CellContext`i]], {$CellContext`i, 1, 
             Length[$CellContext`finalwnorms2]}]; $CellContext`full1 = 
          Table[{
             Part[$CellContext`shift1, $CellContext`i], 
             Part[$CellContext`cols1, $CellContext`i]}, {$CellContext`i, 1, 
             Length[$CellContext`shift1]}]; $CellContext`full2 = Table[{
             Part[$CellContext`shift2, $CellContext`i], 
             Part[$CellContext`cols2, $CellContext`i]}, {$CellContext`i, 1, 
             Length[$CellContext`shift2]}]; $CellContext`half1 = 
          Select[$CellContext`full1, Chop[
              Part[#, 1, 3]] > (-0.5) (
              Max[$CellContext`ds1] + $CellContext`ggb/
               2)& ]; $CellContext`half2 = Select[$CellContext`full2, Chop[
              Part[#, 1, 3]] < 
            0.5 (Max[$CellContext`ds2] + $CellContext`ggb/
               2)& ]; $CellContext`halfn1 = Table[
            Part[$CellContext`half1, $CellContext`i, 1], {$CellContext`i, 1, 
             Length[$CellContext`half1]}]; $CellContext`halfn2 = Table[
            Part[$CellContext`half2, $CellContext`i, 1], {$CellContext`i, 1, 
             Length[$CellContext`half2]}]; $CellContext`color1 = Table[
            Part[$CellContext`half1, $CellContext`i, 2], {$CellContext`i, 1, 
             Length[$CellContext`half1]}]; $CellContext`color2 = Table[
            Part[$CellContext`half2, $CellContext`i, 2], {$CellContext`i, 1, 
             Length[$CellContext`half2]}]; $CellContext`clean1 = Chop[
            N[$CellContext`halfn1]]; $CellContext`clean2 = Chop[
            N[$CellContext`halfn2]]; $CellContext`wnormsa = 
          Join[$CellContext`clean1, $CellContext`clean2]; \
$CellContext`colorsa = 
          Join[$CellContext`color1, $CellContext`color2]; \
$CellContext`eliminateda = Table[
            $CellContext`outsideWulffCompiled[
             Part[$CellContext`wnormsa, $CellContext`j], 
             Part[$CellContext`wnormsa, $CellContext`i]], {$CellContext`i, 
             Length[$CellContext`wnormsa]}, {$CellContext`j, 
             
             If[$CellContext`i <= Length[$CellContext`clean1], 
              Length[$CellContext`clean1] + 1, 1], 
             If[$CellContext`i <= Length[$CellContext`clean1], 
              Length[$CellContext`wnormsa], 
              Length[$CellContext`clean1]]}]; $CellContext`survivinga = Select[
            Table[
             If[
              MemberQ[
               Flatten[
                Part[$CellContext`eliminateda, $CellContext`i]], True], 
              Null, $CellContext`i], {$CellContext`i, 
              Length[$CellContext`wnormsa]}], NumericQ]; $CellContext`cols = 
          Flatten[
            Table[
             Part[$CellContext`colorsa, 
              Part[$CellContext`survivinga, $CellContext`i]], {$CellContext`i, 
              Length[$CellContext`survivinga]}]]; $CellContext`newGsa = Table[{
             Part[$CellContext`wnormsa, 
              Part[$CellContext`survivinga, $CellContext`i]], 
             If[
             Part[$CellContext`survivinga, $CellContext`i] <= 
              Length[$CellContext`clean1], 1, 
              2], $CellContext`i}, {$CellContext`i, 
             Length[$CellContext`survivinga]}]; $CellContext`switch = 1; 
         While[Part[$CellContext`newGsa, $CellContext`switch, 2] == 1, 
           
           Increment[$CellContext`switch]]; $CellContext`switch = \
$CellContext`switch - 
           1; {$CellContext`vertsa, $CellContext`vertsAndParents} = \
$CellContext`makeAWulffdouble[$CellContext`newGsa, $CellContext`cols, \
$CellContext`switch, $CellContext`sensitiv]; $CellContext`vol = (1/3) Sum[Re[
               $CellContext`findarea[
                Part[$CellContext`vertsa, $CellContext`i]]] Norm[
               Part[$CellContext`newGsa, $CellContext`i, 1]], {$CellContext`i,
               1, 
              Length[$CellContext`newGsa]}]; $CellContext`gams = 
          Table[(1/$CellContext`vol)^(1/3) 
            Part[$CellContext`newGsa, $CellContext`i, 1], {$CellContext`i, 
             Length[$CellContext`newGsa]}]; $CellContext`verts = 
          Table[(1/$CellContext`vol)^(1/3) 
            Part[$CellContext`vertsa, $CellContext`i, $CellContext`j], \
{$CellContext`i, 
             Length[$CellContext`newGsa]}, {$CellContext`j, 
             Length[
              
              Part[$CellContext`vertsa, $CellContext`i]]}]; \
$CellContext`vandps = 
          Table[{(1/$CellContext`vol)^(1/3) 
             Part[$CellContext`vertsAndParents, $CellContext`i, \
$CellContext`j, 1], 
             
             Part[$CellContext`vertsAndParents, $CellContext`i, \
$CellContext`j, 2]}, {$CellContext`i, 
             Length[$CellContext`newGsa]}, {$CellContext`j, 
             Length[
              
              Part[$CellContext`vertsAndParents, $CellContext`i]]}]; \
$CellContext`borders = Union[
            Flatten[
             Table[
              Select[
               Part[$CellContext`vandps, $CellContext`i], And[
               Part[#, 2, 1] <= $CellContext`switch, 
                Part[#, 2, 3] > $CellContext`switch]& ], {$CellContext`i, 
               Length[$CellContext`vertsAndParents]}], 1], 
            SameTest -> (Part[#, 2] == 
             Part[#2, 2]& )]; $CellContext`possibleEdges = Select[
            Flatten[
             Table[
              If[Length[
                 Intersection[
                  Part[$CellContext`borders, $CellContext`i, 2], 
                  Part[$CellContext`borders, $CellContext`j, 2]]] == 
               2, {{$CellContext`i, $CellContext`j}, 
                Intersection[
                 Part[$CellContext`borders, $CellContext`i, 2], 
                 Part[$CellContext`borders, $CellContext`j, 2]]}, 
               Null], {$CellContext`i, Length[$CellContext`borders] - 
               1}, {$CellContext`j, $CellContext`i + 1, 
               Length[$CellContext`borders]}], 1], Not[
            Null === #]& ]; $CellContext`edges = Select[
            Table[
             If[
              And[
              Part[$CellContext`possibleEdges, $CellContext`i, 2, 
                 1] <= $CellContext`switch, 
               Part[$CellContext`possibleEdges, $CellContext`i, 2, 
                 2] > $CellContext`switch], 
              Part[$CellContext`possibleEdges, $CellContext`i, 1], 
              Null], {$CellContext`i, 
              Length[$CellContext`possibleEdges]}], Not[
            Null === #]& ]; $CellContext`per = 
          Part[$CellContext`edges, 1]; $CellContext`temp = 
          Delete[$CellContext`edges, 1]; $CellContext`next = Flatten[
            Position[$CellContext`temp, 
             Last[$CellContext`per]]]; $CellContext`ord = Part[
            Reap[
             While[
             Length[$CellContext`next] > 0, 
              Sow[$CellContext`per]; $CellContext`per = $CellContext`cycle[
                 Part[$CellContext`temp, 
                  Part[$CellContext`next, 1]], Length[
                   Part[$CellContext`temp, 
                    Part[$CellContext`next, 1]]] + 1 - 
                 Part[$CellContext`next, 2]]; $CellContext`temp = 
               Delete[$CellContext`temp, 
                 Part[$CellContext`next, 1]]; $CellContext`next = Flatten[
                 Position[$CellContext`temp, 
                  Last[$CellContext`per]]]]], 2, 1]; $CellContext`fin = 
          Join[$CellContext`ord, {$CellContext`per}]; $CellContext`bord = 
          Table[
            Part[$CellContext`fin, $CellContext`i, 1], {$CellContext`i, 1, 
             Length[$CellContext`fin]}]; $CellContext`perimeterverts = Table[
            Part[$CellContext`borders, 
             Part[$CellContext`bord, $CellContext`i], 1], {$CellContext`i, 
             Length[$CellContext`bord]}]; $CellContext`offset = Mean[
            Table[
             
             Part[$CellContext`perimeterverts, $CellContext`i, 
              3], {$CellContext`i, 1, 
              Length[$CellContext`perimeterverts]}]]; $CellContext`stepsize = 
          If[$CellContext`ggb < 0.1, 1, 0.1]; $CellContext`max = 
          8; $CellContext`midptcutoff = 0.1; $CellContext`midpts = 
          Table[Part[$CellContext`perimeterverts, $CellContext`i] + (
              Part[$CellContext`perimeterverts, 
                
                If[$CellContext`i == Length[$CellContext`perimeterverts], 
                 1, $CellContext`i + 1]] - 
              Part[$CellContext`perimeterverts, $CellContext`i])/
             2, {$CellContext`i, 1, 
             Length[$CellContext`perimeterverts]}]; $CellContext`refined = 
          Table[
            If[
            Norm[Part[$CellContext`midpts, $CellContext`i] - 
               Part[$CellContext`perimeterverts, $CellContext`i]] < \
$CellContext`midptcutoff, Null, 
             Part[$CellContext`midpts, $CellContext`i]], {$CellContext`i, 1, 
             Length[$CellContext`perimeterverts]}]; $CellContext`perimeterpos = 
          Select[
            Riffle[$CellContext`perimeterverts, $CellContext`refined], 
            VectorQ]; $CellContext`perimeter = Table[
            
            Part[$CellContext`perimeterpos, $CellContext`i], {$CellContext`i, 
             1, 
             Length[$CellContext`perimeterpos]}]; $CellContext`scale = Mean[
            Table[
             Norm[
              Part[$CellContext`perimeter, $CellContext`i]], {$CellContext`i, 
              
              
              Length[$CellContext`perimeter]}]]; $CellContext`neighbors = \
$CellContext`neighborfxn[
            Length[$CellContext`perimeter]]; $CellContext`gbnodesl2 = 
          Table[1.2 $CellContext`scale {
              Mean[{
                Part[$CellContext`perimeter, $CellContext`i, 1], 
                Part[$CellContext`perimeter, 
                 
                 If[$CellContext`i == Length[$CellContext`perimeter], 
                  1, $CellContext`i + 1], 1]}], 
              Mean[{
                Part[$CellContext`perimeter, $CellContext`i, 2], 
                Part[$CellContext`perimeter, 
                 
                 If[$CellContext`i == Length[$CellContext`perimeter], 
                  1, $CellContext`i + 1], 2]}], 0.5 Mean[{
                  Part[$CellContext`perimeter, $CellContext`i, 3], 
                  Part[$CellContext`perimeter, 
                   
                   If[$CellContext`i == Length[$CellContext`perimeter], 
                    1, $CellContext`i + 1], 
                   3]}] + $CellContext`offset}, {$CellContext`i, 1, 
             Length[$CellContext`perimeter]}]; $CellContext`gbnodesl3 = 
          Table[1.4 $CellContext`scale Normalize[{
               Mean[{
                 Part[$CellContext`gbnodesl2, $CellContext`i, 1], 
                 Part[$CellContext`gbnodesl2, 
                  If[$CellContext`i == 1, 
                   Length[$CellContext`perimeter], $CellContext`i - 1], 1]}], 
               
               Mean[{
                 Part[$CellContext`gbnodesl2, $CellContext`i, 2], 
                 Part[$CellContext`gbnodesl2, 
                  If[$CellContext`i == 1, 
                   Length[$CellContext`perimeter], $CellContext`i - 1], 2]}], 
               0.5 Mean[{
                   Part[$CellContext`gbnodesl2, $CellContext`i, 3], 
                   Part[$CellContext`gbnodesl2, 
                    If[$CellContext`i == 1, 
                    Length[$CellContext`perimeter], $CellContext`i - 1], 
                    3]}] + $CellContext`offset}], {$CellContext`i, 
             Length[$CellContext`perimeter]}]; $CellContext`gbnodesl4 = 
          Table[(3^1.2/2) $CellContext`scale Normalize[{
               Part[$CellContext`gbnodesl2, $CellContext`j, 1], 
               Part[$CellContext`gbnodesl2, $CellContext`j, 
                2], $CellContext`offset}], {$CellContext`j, 
             Length[$CellContext`perimeter]}]; $CellContext`gbnodesl5 = 
          Table[(4^1.2/2) $CellContext`scale Normalize[{
               Part[$CellContext`gbnodesl3, $CellContext`j, 1], 
               
               Part[$CellContext`gbnodesl3, $CellContext`j, 
                2], $CellContext`offset}], {$CellContext`j, 
             Length[$CellContext`perimeter]}]; $CellContext`gbnodesl6 = 
          Table[(5^1.2/2) $CellContext`scale Normalize[{
               Part[$CellContext`gbnodesl4, $CellContext`j, 1], 
               
               Part[$CellContext`gbnodesl4, $CellContext`j, 
                2], $CellContext`offset}], {$CellContext`j, 
             Length[$CellContext`perimeter]}]; $CellContext`gbnodesl7 = 
          Table[(6^1.2/2) $CellContext`scale Normalize[{
               Part[$CellContext`gbnodesl5, $CellContext`j, 1], 
               
               Part[$CellContext`gbnodesl5, $CellContext`j, 
                2], $CellContext`offset}], {$CellContext`j, 
             Length[$CellContext`perimeter]}]; $CellContext`gbnodesl8 = 
          Table[(7^1.2/2) $CellContext`scale Normalize[{
               Part[$CellContext`gbnodesl6, $CellContext`j, 1], 
               
               Part[$CellContext`gbnodesl6, $CellContext`j, 
                2], $CellContext`offset}], {$CellContext`j, 
             Length[$CellContext`perimeter]}]; $CellContext`gbnodesl9 = 
          Table[(8^1.2/2) $CellContext`scale Normalize[{
               Part[$CellContext`gbnodesl7, $CellContext`j, 1], 
               
               Part[$CellContext`gbnodesl7, $CellContext`j, 
                2], $CellContext`offset}], {$CellContext`j, 
             
             Length[$CellContext`perimeter]}]; $CellContext`gbnodes = \
{$CellContext`perimeter, $CellContext`gbnodesl2, $CellContext`gbnodesl3, \
$CellContext`gbnodesl4, $CellContext`gbnodesl5, $CellContext`gbnodesl6, \
$CellContext`gbnodesl7, $CellContext`gbnodesl8, $CellContext`gbnodesl9}; \
$CellContext`evoln = Join[{
             Part[$CellContext`gbnodes, 1]}, 
            Table[
             
             Module[{$CellContext`dirs, $CellContext`netdir, \
$CellContext`fnet, $CellContext`displ, $CellContext`newpos}, \
$CellContext`dirs = Table[Part[$CellContext`gbnodes, 
                   
                   Part[$CellContext`neighbors, $CellContext`level, \
$CellContext`node, $CellContext`i, 1], 
                   
                   Part[$CellContext`neighbors, $CellContext`level, \
$CellContext`node, $CellContext`i, 2]] - 
                 Part[$CellContext`gbnodes, $CellContext`level, \
$CellContext`node], {$CellContext`i, 1, 
                  Length[
                   
                   Part[$CellContext`neighbors, $CellContext`level, \
$CellContext`node]]}]; $CellContext`netdir = Sum[
                 
                 Part[$CellContext`dirs, $CellContext`i], {$CellContext`i, 1, 
                  
                  
                  Length[$CellContext`dirs]}]; $CellContext`fnet = \
$CellContext`ggb $CellContext`netdir; $CellContext`displ = \
$CellContext`stepsize $CellContext`fnet; $CellContext`newpos = \
$CellContext`displ + 
                Part[$CellContext`gbnodes, $CellContext`level, \
$CellContext`node]; $CellContext`newpos], {$CellContext`level, 2, 
              8}, {$CellContext`node, 1, 
              Length[$CellContext`perimeter]}], {
             Part[$CellContext`gbnodes, 9]}]; $CellContext`evoln = 
          FixedPoint[Join[{
              Part[$CellContext`gbnodes, 1]}, 
             Table[
              
              Module[{$CellContext`dirs, $CellContext`netdir, \
$CellContext`fnet, $CellContext`displ, $CellContext`newpos}, \
$CellContext`dirs = Table[Part[#, 
                    
                    Part[$CellContext`neighbors, $CellContext`level, \
$CellContext`node, $CellContext`i, 1], 
                    
                    Part[$CellContext`neighbors, $CellContext`level, \
$CellContext`node, $CellContext`i, 2]] - 
                  Part[#, $CellContext`level, $CellContext`node], \
{$CellContext`i, 1, 
                   Length[
                    
                    Part[$CellContext`neighbors, $CellContext`level, \
$CellContext`node]]}]; $CellContext`netdir = Sum[
                  Part[$CellContext`dirs, $CellContext`i], {$CellContext`i, 1, 
                   
                   Length[$CellContext`dirs]}]; $CellContext`fnet = \
$CellContext`ggb $CellContext`netdir; $CellContext`displ = \
$CellContext`stepsize $CellContext`fnet; $CellContext`newpos = \
$CellContext`displ + 
                 Part[#, $CellContext`level, $CellContext`node]; \
$CellContext`newpos], {$CellContext`level, 2, 8}, {$CellContext`node, 1, 
               Length[$CellContext`perimeter]}], {
              Part[$CellContext`gbnodes, 9]}]& , $CellContext`evoln, 
            If[$CellContext`ggb < 0.2, 100, 30], 
            SameTest -> (Round[#, 0.01] === 
             Round[#2, 0.01]& )]; $CellContext`gbtris = Join[{
             Table[{
               Part[$CellContext`evoln, 1, $CellContext`i], 
               Part[$CellContext`evoln, 1, 
                
                If[$CellContext`i == Length[$CellContext`perimeter], 
                 1, $CellContext`i + 1]], 
               Part[$CellContext`evoln, 2, $CellContext`i]}, {$CellContext`i, 
               1, 
               Length[$CellContext`perimeter]}]}, 
            Table[
             If[
              OddQ[$CellContext`level], 
              Join[
               Table[{
                 
                 Part[$CellContext`evoln, $CellContext`level - 
                  2, $CellContext`node], 
                 
                 Part[$CellContext`evoln, $CellContext`level - 
                  1, $CellContext`node], 
                 
                 Part[$CellContext`evoln, $CellContext`level, \
$CellContext`node]}, {$CellContext`node, 
                 Length[$CellContext`perimeter]}], 
               Table[{
                 
                 Part[$CellContext`evoln, $CellContext`level - 
                  2, $CellContext`node], 
                 Part[$CellContext`evoln, $CellContext`level - 1, 
                  If[$CellContext`node == 1, 
                   Length[$CellContext`perimeter], $CellContext`node - 1]], 
                 
                 Part[$CellContext`evoln, $CellContext`level, \
$CellContext`node]}, {$CellContext`node, 
                 Length[$CellContext`perimeter]}]], 
              Join[
               Table[{
                 
                 Part[$CellContext`evoln, $CellContext`level - 
                  2, $CellContext`node], 
                 
                 Part[$CellContext`evoln, $CellContext`level - 
                  1, $CellContext`node], 
                 
                 Part[$CellContext`evoln, $CellContext`level, \
$CellContext`node]}, {$CellContext`node, 
                 Length[$CellContext`perimeter]}], 
               Table[{
                 
                 Part[$CellContext`evoln, $CellContext`level - 
                  2, $CellContext`node], 
                 Part[$CellContext`evoln, $CellContext`level - 1, 
                  
                  If[$CellContext`node == Length[$CellContext`perimeter], 
                   1, $CellContext`node + 1]], 
                 
                 Part[$CellContext`evoln, $CellContext`level, \
$CellContext`node]}, {$CellContext`node, 
                 Length[$CellContext`perimeter]}]]], {$CellContext`level, 3, 
              9}]]; $CellContext`wrinklearea = Sum[
            Re[
             $CellContext`findarea[
              
              Part[$CellContext`gbtris, $CellContext`level, \
$CellContext`i]]], {$CellContext`level, 1, 8}, {$CellContext`i, 1, 
             Length[
              
              Part[$CellContext`gbtris, $CellContext`level]]}]; \
$CellContext`flatarea = Sum[
            Re[
             $CellContext`findarea[{{
                
                Part[$CellContext`gbtris, $CellContext`level, $CellContext`i, 
                 1, 1], 
                
                Part[$CellContext`gbtris, $CellContext`level, $CellContext`i, 
                 1, 2], 0}, {
                
                Part[$CellContext`gbtris, $CellContext`level, $CellContext`i, 
                 2, 1], 
                
                Part[$CellContext`gbtris, $CellContext`level, $CellContext`i, 
                 2, 2], 0}, {
                
                Part[$CellContext`gbtris, $CellContext`level, $CellContext`i, 
                 3, 1], 
                
                Part[$CellContext`gbtris, $CellContext`level, $CellContext`i, 
                 3, 2], 0}}]], {$CellContext`level, 1, 8}, {$CellContext`i, 1, 
             Length[
              
              Part[$CellContext`gbtris, $CellContext`level]]}]; \
$CellContext`newarea = $CellContext`wrinklearea - $CellContext`flatarea; \
$CellContext`newverts1 = (1/$CellContext`vol1)^(1/
             3) $CellContext`verts1; $CellContext`polys1 = Table[
            Polygon[
             Map[Dot[
               $CellContext`euler[
                Part[$CellContext`eu1, 1], 
                Part[$CellContext`eu1, 2], 
                Part[$CellContext`eu1, 3], $CellContext`conv], #]& , 
              Part[$CellContext`newverts1, $CellContext`i]]], {$CellContext`i, 
             Length[$CellContext`newG1s]}]; $CellContext`wulffshape1 = 
          Graphics3D[
            Flatten[
             Table[{
               Opacity[1], 
               Part[$CellContext`cols1, $CellContext`i], 
               Part[$CellContext`polys1, $CellContext`i]}, {$CellContext`i, 
               Length[$CellContext`newG1s]}]], Lighting -> "Neutral", 
            ImageSize -> Large, Boxed -> False, ViewPoint -> 
            10 $CellContext`vp1, 
            ViewVertical -> $CellContext`vv1]; $CellContext`plot1 = If[
            Not[$CellContext`showaxes1], $CellContext`wulffshape1, 
            Show[$CellContext`wulffshape1, 
             Graphics3D[{Magenta, 
               Arrowheads[0.05], 
               Arrow[
                Tube[{{0, 0, 0}, $CellContext`axes1 Dot[
                    $CellContext`euler[
                    Part[$CellContext`eu1, 1], 
                    Part[$CellContext`eu1, 2], 
                    
                    Part[$CellContext`eu1, 
                    3], $CellContext`conv], $CellContext`avect1]}, 0.025]], 
               Red, 
               Arrow[
                Tube[{{0, 0, 0}, $CellContext`axes1 {1, 0, 0}}, 0.025]]}], 
             Graphics3D[{Yellow, 
               Arrowheads[0.05], 
               Arrow[
                Tube[{{0, 0, 0}, $CellContext`axes1 Dot[
                    $CellContext`euler[
                    Part[$CellContext`eu1, 1], 
                    Part[$CellContext`eu1, 2], 
                    
                    Part[$CellContext`eu1, 
                    3], $CellContext`conv], $CellContext`bvect1]}, 0.025]], 
               Green, 
               Arrow[
                Tube[{{0, 0, 0}, $CellContext`axes1 {0, 1, 0}}, 0.025]]}], 
             Graphics3D[{Cyan, 
               Arrowheads[0.05], 
               Arrow[
                Tube[{{0, 0, 0}, $CellContext`axes1 Dot[
                    $CellContext`euler[
                    Part[$CellContext`eu1, 1], 
                    Part[$CellContext`eu1, 2], 
                    
                    Part[$CellContext`eu1, 
                    3], $CellContext`conv], $CellContext`cvect1]}, 0.025]], 
               Blue, 
               Arrow[
                Tube[{{0, 0, 0}, $CellContext`axes1 {0, 0, 1}}, 0.025]]}], 
             Boxed -> False, ImageSize -> Large, SphericalRegion -> 
             True]]; $CellContext`etop = 
          Module[{$CellContext`areas, $CellContext`gammas, \
$CellContext`etot}, $CellContext`areas = Table[
               Re[
                $CellContext`findarea[
                 
                 Part[$CellContext`newverts1, $CellContext`i]]], \
{$CellContext`i, 1, 
                Length[$CellContext`newG1s]}]; $CellContext`gammas = Table[
               Norm[
                
                Part[$CellContext`newG1s, $CellContext`i, 
                 1]], {$CellContext`i, 1, 
                Length[$CellContext`newG1s]}]; $CellContext`etot = 
             Sum[Part[$CellContext`areas, $CellContext`i] 
               Part[$CellContext`gammas, $CellContext`i], {$CellContext`i, 1, 
                
                Length[$CellContext`newG1s]}]]; $CellContext`gpv1 = 
          Module[{$CellContext`wnormz, $CellContext`gammapv}, \
$CellContext`wnormz = Table[
               Dot[$CellContext`rot, 
                
                Part[$CellContext`newG1s, $CellContext`i, 
                 1]], {$CellContext`i, 
                Length[$CellContext`newG1s]}]; $CellContext`gammapv = Part[
               Sort[
                Select[
                 Table[
                  If[
                  Part[$CellContext`wnormz, $CellContext`i, 3] < 
                   0, {$CellContext`i, (
                    Part[$CellContext`wnormz, $CellContext`i, 1]^2 + 
                    Part[$CellContext`wnormz, $CellContext`i, 2]^2 + 
                    Part[$CellContext`wnormz, $CellContext`i, 3]^2)/(-
                    Part[$CellContext`wnormz, $CellContext`i, 3])}, 
                   Null], {$CellContext`i, 
                   Length[$CellContext`wnormz]}], Not[# === Null]& ], 
                Part[#, 2] < Part[#2, 2]& ], 1, 
               2]; $CellContext`gammapv]; $CellContext`newverts2 = (
             1/$CellContext`vol2)^(1/
             3) $CellContext`verts2; $CellContext`polys2 = Table[
            Polygon[
             Map[Dot[
               $CellContext`euler[
                Part[$CellContext`eu2, 1], 
                Part[$CellContext`eu2, 2], 
                Part[$CellContext`eu2, 3], $CellContext`conv], #]& , 
              Part[$CellContext`newverts2, $CellContext`i]]], {$CellContext`i, 
             Length[$CellContext`newG2s]}]; $CellContext`wulffshape2 = 
          Graphics3D[
            Flatten[
             Table[{
               Opacity[1], 
               Part[$CellContext`cols2, $CellContext`i], 
               Part[$CellContext`polys2, $CellContext`i]}, {$CellContext`i, 
               Length[$CellContext`newG2s]}]], Lighting -> "Neutral", 
            ImageSize -> Large, Boxed -> False, ViewPoint -> 
            10 $CellContext`vp2, 
            ViewVertical -> $CellContext`vv2]; $CellContext`plot2 = If[
            Not[$CellContext`showaxes2], $CellContext`wulffshape2, 
            Show[$CellContext`wulffshape2, 
             Graphics3D[{Magenta, 
               Arrowheads[0.05], 
               Arrow[
                Tube[{{0, 0, 0}, $CellContext`axes2 Dot[
                    $CellContext`euler[
                    Part[$CellContext`eu2, 1], 
                    Part[$CellContext`eu2, 2], 
                    
                    Part[$CellContext`eu2, 
                    3], $CellContext`conv], $CellContext`avect2]}, 0.025]], 
               Red, 
               Arrow[
                Tube[{{0, 0, 0}, $CellContext`axes2 {1, 0, 0}}, 0.025]]}], 
             Graphics3D[{Yellow, 
               Arrowheads[0.05], 
               Arrow[
                Tube[{{0, 0, 0}, $CellContext`axes2 Dot[
                    $CellContext`euler[
                    Part[$CellContext`eu2, 1], 
                    Part[$CellContext`eu2, 2], 
                    
                    Part[$CellContext`eu2, 
                    3], $CellContext`conv], $CellContext`bvect2]}, 0.025]], 
               Green, 
               Arrow[
                Tube[{{0, 0, 0}, $CellContext`axes2 {0, 1, 0}}, 0.025]]}], 
             Graphics3D[{Cyan, 
               Arrowheads[0.05], 
               Arrow[
                Tube[{{0, 0, 0}, $CellContext`axes2 Dot[
                    $CellContext`euler[
                    Part[$CellContext`eu2, 1], 
                    Part[$CellContext`eu2, 2], 
                    
                    Part[$CellContext`eu2, 
                    3], $CellContext`conv], $CellContext`cvect2]}, 0.025]], 
               Blue, 
               Arrow[
                Tube[{{0, 0, 0}, $CellContext`axes2 {0, 0, 1}}, 0.025]]}], 
             Boxed -> False, ImageSize -> Large, SphericalRegion -> 
             True]]; $CellContext`ebot = 
          Module[{$CellContext`areas, $CellContext`gammas, \
$CellContext`etot}, $CellContext`areas = Table[
               Re[
                $CellContext`findarea[
                 
                 Part[$CellContext`newverts2, $CellContext`i]]], \
{$CellContext`i, 1, 
                Length[$CellContext`newG2s]}]; $CellContext`gammas = Table[
               Norm[
                
                Part[$CellContext`newG2s, $CellContext`i, 
                 1]], {$CellContext`i, 1, 
                Length[$CellContext`newG2s]}]; $CellContext`etot = 
             Sum[Part[$CellContext`areas, $CellContext`i] 
               Part[$CellContext`gammas, $CellContext`i], {$CellContext`i, 1, 
                
                Length[$CellContext`newG2s]}]]; $CellContext`gpv2 = 
          Module[{$CellContext`wnormz, $CellContext`gammapv}, \
$CellContext`wnormz = Table[
               Dot[$CellContext`rot, 
                
                Part[$CellContext`newG2s, $CellContext`i, 
                 1]], {$CellContext`i, 
                Length[$CellContext`newG2s]}]; $CellContext`gammapv = Part[
               Sort[
                Select[
                 Table[
                  If[
                  Part[$CellContext`wnormz, $CellContext`i, 3] < 
                   0, {$CellContext`i, (
                    Part[$CellContext`wnormz, $CellContext`i, 1]^2 + 
                    Part[$CellContext`wnormz, $CellContext`i, 2]^2 + 
                    Part[$CellContext`wnormz, $CellContext`i, 3]^2)/(-
                    Part[$CellContext`wnormz, $CellContext`i, 3])}, 
                   Null], {$CellContext`i, 
                   Length[$CellContext`wnormz]}], Not[# === Null]& ], 
                Part[#, 2] < Part[#2, 2]& ], 1, 
               2]; $CellContext`gammapv]; $CellContext`agb = Re[
            $CellContext`findarea[
             Table[{
               Part[$CellContext`perimeter, $CellContext`i, 1], 
               Part[$CellContext`perimeter, $CellContext`i, 2], 
               0}, {$CellContext`i, 
               Length[$CellContext`perimeter]}]]]; $CellContext`energetics = 
          Module[{$CellContext`tote, $CellContext`totwet, $CellContext`test, \
$CellContext`theta1, $CellContext`theta2}, $CellContext`tote = Sum[Re[
                 $CellContext`findarea[
                  Part[$CellContext`verts, $CellContext`i]]] Norm[
                 
                 Part[$CellContext`newGsa, $CellContext`i, 
                  1]], {$CellContext`i, 1, 
                Length[$CellContext`newGsa]}]; $CellContext`totwet = 
             Re[$CellContext`tote - $CellContext`ggb $CellContext`agb + \
$CellContext`ggb $CellContext`newarea]; $CellContext`test = \
{$CellContext`totwet/$CellContext`etop, \
$CellContext`totwet/$CellContext`ebot}; $CellContext`theta1 = 
             ArcCos[$CellContext`ggb/(
               2 $CellContext`gpv1)]; $CellContext`theta2 = 
             ArcCos[$CellContext`ggb/(
               2 $CellContext`gpv2)]; {$CellContext`test, \
$CellContext`theta1, $CellContext`theta2, $CellContext`totwet, \
{$CellContext`tote, $CellContext`ggb $CellContext`agb, $CellContext`ggb \
$CellContext`newarea}}]; $CellContext`epi = Style[
            If[
             
             Or[$CellContext`ggb >= 2 Max[$CellContext`ds1], $CellContext`ggb >= 
              2 Max[$CellContext`ds2]], "Complete wetting", 
             If[Max[
                Part[$CellContext`energetics, 1]] > 1, 
              StringJoin["Unstable: Particle will go into bulk ", 
               If[$CellContext`etop < $CellContext`ebot, "A", "B"]], 
              If[Min[
                 Part[$CellContext`energetics, 1]] > 0, "Partial wetting", 
               "Complete wetting"]]], 20]; $CellContext`plotr = Show[
            Graphics3D[
             Flatten[
              Table[
               Polygon[
                
                Part[$CellContext`gbtris, $CellContext`level, \
$CellContext`i]], {$CellContext`level, $CellContext`gbsizer}, {$CellContext`i,
                 1, 
                Length[
                 Part[$CellContext`gbtris, $CellContext`level]]}]], Lighting -> 
             "Neutral", ViewPoint -> 50 $CellContext`vpr, 
             ViewVertical -> $CellContext`vvr], 
            Graphics3D[{Red, 
              Arrowheads[0.05], 
              Arrow[
               Tube[{{0, 0, 0}, $CellContext`axes2 {1, 0, 0}}, 0.025]], Green, 
              Arrow[
               Tube[{{0, 0, 0}, $CellContext`axes2 {0, 1, 0}}, 0.025]], Blue, 
              
              Arrow[
               Tube[{{0, 0, 0}, $CellContext`axes2 {0, 0, 1}}, 0.025]]}], 
            Sequence[
             If[
              Not[$CellContext`showperim], {
               Graphics3D[{
                 Opacity[$CellContext`opacityr], 
                 Sequence[
                  Flatten[
                   Table[{
                    Part[$CellContext`cols, $CellContext`i], 
                    Polygon[
                    
                    Part[$CellContext`verts, $CellContext`i]]}, \
{$CellContext`i, 
                    Length[$CellContext`verts]}], 1]]}]}, {
               Graphics3D[{
                 Opacity[$CellContext`opacityr], 
                 Sequence[
                  Flatten[
                   Table[{
                    Part[$CellContext`cols, $CellContext`i], 
                    Polygon[
                    
                    Part[$CellContext`verts, $CellContext`i]]}, \
{$CellContext`i, 
                    Length[$CellContext`verts]}], 1]]}], 
               Graphics3D[{Black, 
                 Tube[
                  Join[$CellContext`perimeterverts, {
                    
                    Part[$CellContext`perimeterverts, 
                    1]}], $CellContext`perimsize]}]}]], Boxed -> False, 
            ViewPoint -> 50 $CellContext`vpr, 
            ViewVertical -> $CellContext`vvr, BoxRatios -> 
            Automatic]; $CellContext`showwulff = 
          Part[$CellContext`argument, 5, 2]; $CellContext`showstats = 
          Part[$CellContext`argument, 5, 4]; $CellContext`plotl = If[
            Not[$CellContext`showwulff], $CellContext`plotr, 
            GraphicsColumn[{
              
              GraphicsRow[{$CellContext`plot1, $CellContext`plot2}], \
$CellContext`plotr}]]; If[
           Not[$CellContext`showstats], $CellContext`plotl, 
           GraphicsColumn[{$CellContext`plotl, 
             Column[{
               Style[
                StringJoin["\!\(\*SubscriptBox[\(\[Theta]\), \(PA\)]\) = ", 
                 ToString[
                  Round[Part[$CellContext`energetics, 2] (180./Pi), 0.1]], 
                 "\[Degree]"], 20], 
               Style[
                StringJoin["\!\(\*SubscriptBox[\(\[Theta]\), \(PB\)]\) = ", 
                 ToString[
                  Round[Part[$CellContext`energetics, 3] (180./Pi), 0.1]], 
                 "\[Degree]"], 20], 
               Style[
                StringJoin[
                "\!\(\*SubscriptBox[\(\[Gamma]\), \(PV, \\ A\)]\) = ", 
                 ToString[
                  Round[$CellContext`gpv1, 0.01]]], 20], 
               Style[
                StringJoin[
                "\!\(\*SubscriptBox[\(\[Gamma]\), \(PV, \\ B\)]\) = ", 
                 ToString[
                  Round[$CellContext`gpv2, 0.01]]], 20], $CellContext`epi, 
               Style[
                StringJoin["\!\(\*SubscriptBox[\(E\), \(in\\ bulk\\ A\)]\)= ", 
                 ToString[
                  Round[$CellContext`etop, 0.01]]], 20], 
               Style[
                StringJoin["\!\(\*SubscriptBox[\(E\), \(in\\ bulk\\ B\)]\)= ", 
                 ToString[
                  Round[$CellContext`ebot, 0.01]]], 20], 
               Style[
                StringJoin[
                "\!\(\*SubscriptBox[\(E\), \(\(P\)\(,\)\(\\ \)\(total\)\(\\ \
\)\)]\)= ", 
                 ToString[
                  Round[
                   Part[$CellContext`energetics, 4], 0.01]]], 20], 
               Style[
                StringJoin[
                "     \!\(\*SubscriptBox[\(E\), \(P\\ surface\\ only\)]\)= ", 
                 
                 ToString[
                  Round[
                   Part[$CellContext`energetics, 5, 1], 0.01]]], 20], 
               Style[
                StringJoin[
                "     \!\(\*SubscriptBox[\(E\), \(AB\\ removed\)]\)= ", 
                 ToString[
                  Round[-Part[$CellContext`energetics, 5, 2], 0.01]]], 20], 
               Style[
                StringJoin[
                "     \!\(\*SubscriptBox[\(E\), \(AB\\ wrinkles\)]\)= ", 
                 ToString[
                  Round[
                   Part[$CellContext`energetics, 5, 3], 0.01]]], 20], 
               Style[
                StringJoin[
                "     \!\(\*SubscriptBox[\(A\), \(AB\\ removed\)]\)= ", 
                 ToString[
                  Round[$CellContext`agb, 0.01]]], 20], 
               Style[
                StringJoin[
                "     \!\(\*SubscriptBox[\(A\), \(AB\\ wrinkles\)]\)= ", 
                 ToString[
                  Round[$CellContext`newarea, 0.01]]], 
                20]}]}]]], $CellContext`symmetryMatrices["1"] = {{{1, 0, 0}, {
        0, 1, 0}, {0, 0, 1}}}, $CellContext`symmetryMatrices["2"] = {{{1, 0, 
        0}, {0, 1, 0}, {0, 0, 1}}, {{-1, 0, 0}, {0, 1, 0}, {0, 
        0, -1}}}, $CellContext`symmetryMatrices["222"] = {{{1, 0, 0}, {0, 1, 
        0}, {0, 0, 1}}, {{1, 0, 0}, {0, -1, 0}, {0, 0, -1}}, {{-1, 0, 0}, {0, 
        1, 0}, {0, 0, -1}}}, $CellContext`symmetryMatrices["23"] = {{{1, 0, 
        0}, {0, 1, 0}, {0, 0, 1}}, {{1, 0, 0}, {0, -1, 0}, {0, 0, -1}}, {{0, 
        0, 1}, {1, 0, 0}, {0, 1, 0}}}, $CellContext`symmetryMatrices[
        "2/m"] = {{{1, 0, 0}, {0, 1, 0}, {0, 0, 1}}, {{-1, 0, 0}, {0, 1, 0}, {
        0, 0, -1}}, {{1, 0, 0}, {0, -1, 0}, {0, 0, 
        1}}}, $CellContext`symmetryMatrices[
        "3"] = {{{1, 0, 0}, {0, 1, 0}, {0, 0, 
         1}}, {{(-1)/2, -Sqrt[3]/2, 0}, {Sqrt[3]/2, (-1)/2, 0}, {0, 0, 
          1}}}, $CellContext`symmetryMatrices[
        "32"] = {{{1, 0, 0}, {0, 1, 0}, {0, 0, 
         1}}, {{(-1)/2, -Sqrt[3]/2, 0}, {Sqrt[3]/2, (-1)/2, 0}, {0, 0, 1}}, {{
         1, 0, 0}, {0, -1, 0}, {0, 0, -1}}}, $CellContext`symmetryMatrices[
        "3m"] = {{{1, 0, 0}, {0, 1, 0}, {0, 0, 
         1}}, {{(-1)/2, -Sqrt[3]/2, 0}, {Sqrt[3]/2, (-1)/2, 0}, {0, 0, 
          1}}, {{-1, 0, 0}, {0, 1, 0}, {0, 0, 
         1}}}, $CellContext`symmetryMatrices["4"] = {{{1, 0, 0}, {0, 1, 0}, {
        0, 0, 1}}, {{0, -1, 0}, {1, 0, 0}, {0, 0, 
        1}}}, $CellContext`symmetryMatrices["422"] = {{{1, 0, 0}, {0, 1, 0}, {
        0, 0, 1}}, {{0, -1, 0}, {1, 0, 0}, {0, 0, 1}}, {{1, 0, 0}, {0, -1, 
        0}, {0, 0, -1}}}, $CellContext`symmetryMatrices["432"] = {{{1, 0, 
        0}, {0, 1, 0}, {0, 0, 1}}, {{0, -1, 0}, {1, 0, 0}, {0, 0, 1}}, {{0, 0,
         1}, {1, 0, 0}, {0, 1, 0}}}, $CellContext`symmetryMatrices[
        "4/m"] = {{{1, 0, 0}, {0, 1, 0}, {0, 0, 1}}, {{0, -1, 0}, {1, 0, 0}, {
        0, 0, 1}}, {{1, 0, 0}, {0, 1, 0}, {0, 
        0, -1}}}, $CellContext`symmetryMatrices["4mm"] = {{{1, 0, 0}, {0, 1, 
        0}, {0, 0, 1}}, {{0, -1, 0}, {1, 0, 0}, {0, 0, 1}}, {{-1, 0, 0}, {0, 
        1, 0}, {0, 0, 1}}}, $CellContext`symmetryMatrices["4/mmm"] = {{{1, 0, 
        0}, {0, 1, 0}, {0, 0, 1}}, {{0, -1, 0}, {1, 0, 0}, {0, 0, 1}}, {{1, 0,
         0}, {0, 1, 0}, {0, 0, -1}}, {{-1, 0, 0}, {0, 1, 0}, {0, 0, 
        1}}}, $CellContext`symmetryMatrices[
        "6"] = {{{1, 0, 0}, {0, 1, 0}, {0, 0, 
         1}}, {{1/2, -Sqrt[3]/2, 0}, {Sqrt[3]/2, 1/2, 0}, {0, 0, 
          1}}}, $CellContext`symmetryMatrices[
        "622"] = {{{1, 0, 0}, {0, 1, 0}, {0, 0, 
         1}}, {{1/2, -Sqrt[3]/2, 0}, {Sqrt[3]/2, 1/2, 0}, {0, 0, 1}}, {{1, 0, 
         0}, {0, -1, 0}, {0, 0, -1}}}, $CellContext`symmetryMatrices[
        "6/m"] = {{{1, 0, 0}, {0, 1, 0}, {0, 0, 
         1}}, {{1/2, -Sqrt[3]/2, 0}, {Sqrt[3]/2, 1/2, 0}, {0, 0, 1}}, {{1, 0, 
         0}, {0, 1, 0}, {0, 0, -1}}}, $CellContext`symmetryMatrices[
        "6mm"] = {{{1, 0, 0}, {0, 1, 0}, {0, 0, 
         1}}, {{1/2, -Sqrt[3]/2, 0}, {Sqrt[3]/2, 1/2, 0}, {0, 0, 1}}, {{-1, 0,
          0}, {0, 1, 0}, {0, 0, 1}}}, $CellContext`symmetryMatrices[
        "6/mmm"] = {{{1, 0, 0}, {0, 1, 0}, {0, 0, 
         1}}, {{1/2, -Sqrt[3]/2, 0}, {Sqrt[3]/2, 1/2, 0}, {0, 0, 1}}, {{1, 0, 
         0}, {0, 1, 0}, {0, 0, -1}}, {{-1, 0, 0}, {0, 1, 0}, {0, 0, 
         1}}}, $CellContext`symmetryMatrices["Cubic"] = {{{1, 0, 0}, {0, 1, 
        0}, {0, 0, 1}}, {{1, 0, 0}, {0, -1, 0}, {0, 0, -1}}, {{0, 0, 1}, {1, 
        0, 0}, {0, 1, 0}}}, $CellContext`symmetryMatrices["m"] = {{{1, 0, 
        0}, {0, 1, 0}, {0, 0, 1}}, {{1, 0, 0}, {0, -1, 0}, {0, 0, 
        1}}}, $CellContext`symmetryMatrices["mm2"] = {{{1, 0, 0}, {0, 1, 0}, {
        0, 0, 1}}, {{1, 0, 0}, {0, -1, 0}, {0, 0, 1}}, {{-1, 0, 0}, {0, 1, 
        0}, {0, 0, 1}}}, $CellContext`symmetryMatrices["mmm"] = {{{1, 0, 0}, {
        0, 1, 0}, {0, 0, 1}}, {{-1, 0, 0}, {0, 1, 0}, {0, 0, 1}}, {{1, 0, 
        0}, {0, -1, 0}, {0, 0, 1}}, {{1, 0, 0}, {0, 1, 0}, {0, 
        0, -1}}}, $CellContext`symmetryMatrices[
        "m\!\(\*OverscriptBox[\(3\), \(_\)]\)"] = {{{1, 0, 0}, {0, 1, 0}, {0, 
        0, 1}}, {{-1, 0, 0}, {0, 1, 0}, {0, 0, 1}}, {{0, 0, 1}, {1, 0, 0}, {0,
         1, 0}}}, $CellContext`symmetryMatrices[
        "m\!\(\*OverscriptBox[\(3\), \(_\)]\)m"] = {{{1, 0, 0}, {0, 1, 0}, {0,
         0, 1}}, {{-1, 0, 0}, {0, 1, 0}, {0, 0, 1}}, {{0, 0, 1}, {1, 0, 0}, {
        0, 1, 0}}, {{0, -1, 0}, {-1, 0, 0}, {0, 0, 
        1}}}, $CellContext`symmetryMatrices[
        "\!\(\*OverscriptBox[\(1\), \(_\)]\)"] = {{{1, 0, 0}, {0, 1, 0}, {0, 
        0, 1}}, {{-1, 0, 0}, {0, -1, 0}, {0, 
        0, -1}}}, $CellContext`symmetryMatrices[
        "\!\(\*OverscriptBox[\(3\), \(_\)]\)"] = {{{1, 0, 0}, {0, 1, 0}, {0, 
         0, 1}}, {{1/2, Sqrt[3]/2, 0}, {-Sqrt[3]/2, 1/2, 0}, {0, 
          0, -1}}}, $CellContext`symmetryMatrices[
        "\!\(\*OverscriptBox[\(3\), \(_\)]\)m"] = {{{1, 0, 0}, {0, 1, 0}, {0, 
         0, 1}}, {{1/2, Sqrt[3]/2, 0}, {-Sqrt[3]/2, 1/2, 0}, {0, 
          0, -1}}, {{-1, 0, 0}, {0, 1, 0}, {0, 0, 
         1}}}, $CellContext`symmetryMatrices[
        "\!\(\*OverscriptBox[\(4\), \(_\)]\)"] = {{{1, 0, 0}, {0, 1, 0}, {0, 
        0, 1}}, {{0, 1, 0}, {-1, 0, 0}, {0, 
        0, -1}}}, $CellContext`symmetryMatrices[
        "\!\(\*OverscriptBox[\(4\), \(_\)]\)2m"] = {{{1, 0, 0}, {0, 1, 0}, {0,
         0, 1}}, {{0, 1, 0}, {-1, 0, 0}, {0, 0, -1}}, {{1, 0, 0}, {0, -1, 
        0}, {0, 0, -1}}}, $CellContext`symmetryMatrices[
        "\!\(\*OverscriptBox[\(4\), \(_\)]\)3m"] = {{{1, 0, 0}, {0, 1, 0}, {0,
         0, 1}}, {{0, 1, 0}, {-1, 0, 0}, {0, 0, -1}}, {{0, 0, 1}, {1, 0, 0}, {
        0, 1, 0}}}, $CellContext`symmetryMatrices[
        "\!\(\*OverscriptBox[\(6\), \(_\)]\)"] = {{{1, 0, 0}, {0, 1, 0}, {0, 
         0, 1}}, {{(-1)/2, Sqrt[3]/2, 0}, {-Sqrt[3]/2, (-1)/2, 0}, {0, 
          0, -1}}}, $CellContext`symmetryMatrices[
        "\!\(\*OverscriptBox[\(6\), \(_\)]\)m2"] = {{{1, 0, 0}, {0, 1, 0}, {0,
          0, 1}}, {{(-1)/2, Sqrt[3]/2, 0}, {-Sqrt[3]/2, (-1)/2, 0}, {0, 
          0, -1}}, {{-1, 0, 0}, {0, 1, 0}, {0, 0, 
         1}}}, $CellContext`outsideWulffCompiled = 
       CompiledFunction[{10, 11., 5468}, {{
           Blank[Real], 1}, {
           Blank[Real], 1}}, {{3, 1, 0}, {3, 1, 1}, {1, 0, 
         0}}, {{1.000000001, {3, 0, 7}}, {2, {2, 0, 1}}, {1, {2, 0, 0}}, {
          3, {2, 0, 2}}, {7., {3, 0, 8}}}, {1, 3, 9, 0, 
         2}, {{38, 0, 0, 0, 0, 0}, {38, 0, 0, 1, 0, 1}, {38, 0, 0, 2, 0, 2}, {
          38, 1, 0, 0, 0, 3}, {16, 0, 3, 4}, {38, 1, 0, 1, 0, 3}, {16, 1, 3, 
          5}, {38, 1, 0, 2, 0, 3}, {16, 2, 3, 6}, {13, 4, 5, 6, 4}, {40, 56, 
          3, 0, 0, 3, 0, 6}, {40, 56, 3, 0, 1, 3, 0, 3}, {40, 56, 3, 0, 2, 3, 
          0, 5}, {13, 6, 3, 5, 6}, {16, 7, 6, 3}, {27, 7, 8, 4, 3, 0}, {1}}, 
         Function[{$CellContext`baseV, $CellContext`testV}, 
          
          Block[{Compile`$1, Compile`$4, Compile`$7}, 
           Compile`$1 = Part[$CellContext`baseV, 1]; 
           Compile`$4 = Part[$CellContext`baseV, 2]; 
           Compile`$7 = Part[$CellContext`baseV, 3]; 
           Compile`$1 Part[$CellContext`testV, 1] + 
             Compile`$4 Part[$CellContext`testV, 2] + 
             Compile`$7 Part[$CellContext`testV, 3] > 
            1.000000001 (Compile`$1^2 + Compile`$4^2 + Compile`$7^2)]], 
         Evaluate], Attributes[Compile`$1] = {Temporary}, 
       Attributes[Compile`$4] = {Temporary}, 
       Attributes[Compile`$7] = {Temporary}, $CellContext`makeAWulff[
         Pattern[$CellContext`newGs, 
          Blank[]], 
         Pattern[$CellContext`colz, 
          Blank[]]] := 
       Module[{$CellContext`neighbors, $CellContext`verts, \
$CellContext`verts2, $CellContext`vertTest, $CellContext`rotMats, \
$CellContext`rotatedVerts, $CellContext`sortedVerts, $CellContext`finVerts, \
$CellContext`facets, $CellContext`vertParents}, $CellContext`neighbors = Table[
            $CellContext`neighborQ[$CellContext`i, $CellContext`newGs], \
{$CellContext`i, 
             Length[$CellContext`newGs]}]; $CellContext`verts = Table[{
             $CellContext`findvert[
              Part[$CellContext`newGs, $CellContext`i, 1], 
              Part[$CellContext`newGs, 
               Part[$CellContext`neighbors, $CellContext`i, $CellContext`j], 
               1], 
              Part[$CellContext`newGs, 
               Part[$CellContext`neighbors, $CellContext`i, $CellContext`k], 
               1]], {
              Part[$CellContext`newGs, $CellContext`i, 3], 
              Part[$CellContext`neighbors, $CellContext`i, $CellContext`j], 
              
              Part[$CellContext`neighbors, $CellContext`i, $CellContext`k]}}, \
{$CellContext`i, 
             Length[$CellContext`newGs]}, {$CellContext`j, Length[
               Part[$CellContext`neighbors, $CellContext`i]] - 
             1}, {$CellContext`k, $CellContext`j + 1, 
             Length[
              
              Part[$CellContext`neighbors, $CellContext`i]]}]; \
$CellContext`verts2 = Table[
            Select[
             Flatten[
              Part[$CellContext`verts, $CellContext`i], 1], VectorQ[
              Part[#, 1]]& ], {$CellContext`i, 
             Length[$CellContext`verts]}]; $CellContext`vertTest = Table[
            Select[
             Table[
              If[
               MemberQ[
                Table[
                 $CellContext`outsideWulffCompiled[
                  Part[$CellContext`newGs, $CellContext`j, 1], 
                  
                  Part[$CellContext`verts2, $CellContext`i, $CellContext`k, 
                   1]], {$CellContext`j, 
                  Length[$CellContext`newGs]}], True], Null, 
               
               Part[$CellContext`verts2, $CellContext`i, $CellContext`k]], \
{$CellContext`k, 
               Length[
                Part[$CellContext`verts2, $CellContext`i]]}], Not[
             Null === #]& ], {$CellContext`i, 
             Length[$CellContext`verts2]}]; $CellContext`rotMats = Chop[
            Table[
             If[Dot[
                 Part[$CellContext`newGs, $CellContext`i, 1], {0, 0, 1}]/Norm[
               
                Part[$CellContext`newGs, $CellContext`i, 1]] == -1, 
              RotationMatrix[Pi, {1, 0, 0}], 
              RotationMatrix[{
                Part[$CellContext`newGs, $CellContext`i, 1], {0, 0, 
                1}}]], {$CellContext`i, 
              Length[$CellContext`newGs]}]]; $CellContext`rotatedVerts = 
          Table[{
             Dot[
              Part[$CellContext`rotMats, $CellContext`i], 
              
              Part[$CellContext`vertTest, $CellContext`i, $CellContext`j, 
               1]], $CellContext`j}, {$CellContext`i, 
             Length[$CellContext`vertTest]}, {$CellContext`j, 
             Length[
              
              Part[$CellContext`vertTest, $CellContext`i]]}]; \
$CellContext`sortedVerts = Table[
            Sort[
             Part[$CellContext`rotatedVerts, $CellContext`i], ArcTan[
               Part[#, 1, 1], 
               Part[#, 1, 2]] > ArcTan[
               Part[#2, 1, 1], 
               Part[#2, 1, 2]]& ], {$CellContext`i, 
             Length[$CellContext`rotatedVerts]}]; $CellContext`finVerts = 
          Table[{
             Part[$CellContext`vertTest, $CellContext`i, 
              
              Part[$CellContext`sortedVerts, $CellContext`i, $CellContext`j, 
               2], 1], 
             Sort[
              Part[$CellContext`vertTest, $CellContext`i, 
               
               Part[$CellContext`sortedVerts, $CellContext`i, $CellContext`j, 
                2], 2]]}, {$CellContext`i, 
             Length[$CellContext`vertTest]}, {$CellContext`j, 
             Length[
              
              Part[$CellContext`vertTest, $CellContext`i]]}]; \
$CellContext`facets = Table[
            
            Part[$CellContext`finVerts, $CellContext`i, $CellContext`j, 
             1], {$CellContext`i, 
             Length[$CellContext`vertTest]}, {$CellContext`j, 
             Length[
              
              Part[$CellContext`vertTest, $CellContext`i]]}]; \
$CellContext`vertParents = Table[
            
            Part[$CellContext`finVerts, $CellContext`i, $CellContext`j, 
             2], {$CellContext`i, 
             Length[$CellContext`vertTest]}, {$CellContext`j, 
             Length[
              
              Part[$CellContext`vertTest, $CellContext`i]]}]; \
{$CellContext`facets, $CellContext`finVerts}], $CellContext`neighborQ[
         Pattern[$CellContext`index, 
          Blank[]], 
         Pattern[$CellContext`glist, 
          Blank[]]] := 
       Module[{$CellContext`dots, $CellContext`sorted, \
$CellContext`neighbors, $CellContext`fin}, $CellContext`dots = Table[{
             Dot[
              Part[$CellContext`glist, $CellContext`i, 1], 
              Normalize[
               Part[$CellContext`glist, $CellContext`index, 1]]], 
             Part[$CellContext`glist, $CellContext`i, 3]}, {$CellContext`i, 
             Length[$CellContext`glist]}]; $CellContext`sorted = 
          Sort[$CellContext`dots, Part[#, 1] > 
            Part[#2, 1]& ]; $CellContext`neighbors = Table[
            Part[$CellContext`sorted, $CellContext`i, 2], {$CellContext`i, 
             Min[
              Max[
               Ceiling[Length[$CellContext`glist]/6], 11], 
              Length[$CellContext`glist]]}]; $CellContext`fin = 
          Select[$CellContext`neighbors, 
            Not[# === $CellContext`index]& ]], $CellContext`findvert = 
       CompiledFunction[{10, 11., 5468}, {{
           Blank[Real], 1}, {
           Blank[Real], 1}, {
           Blank[Real], 1}}, {{3, 1, 0}, {3, 1, 1}, {3, 1, 2}, {3, 1, 
         5}}, {{{10000., 10000., 10000.}, {3, 1, 3}}, {2, {2, 0, 1}}, {
          1, {2, 0, 2}}, {3, {2, 0, 0}}, {7., {3, 0, 9}}, {
          0.00001, {3, 0, 8}}}, {1, 3, 43, 0, 
         6}, {{38, 0, 0, 0, 0, 0}, {38, 1, 0, 1, 0, 1}, {38, 2, 0, 2, 0, 2}, {
          16, 0, 1, 2, 0}, {38, 0, 0, 1, 0, 1}, {38, 1, 0, 0, 0, 2}, {38, 2, 
          0, 2, 0, 3}, {16, 1, 2, 3, 1}, {19, 1, 2}, {38, 0, 0, 0, 0, 1}, {38,
           1, 0, 2, 0, 3}, {38, 2, 0, 1, 0, 4}, {16, 1, 3, 4, 1}, {19, 1, 
          3}, {38, 0, 0, 2, 0, 1}, {38, 1, 0, 0, 0, 4}, {38, 2, 0, 1, 0, 5}, {
          16, 1, 4, 5, 1}, {38, 0, 0, 1, 0, 4}, {38, 1, 0, 2, 0, 5}, {38, 2, 
          0, 0, 0, 6}, {16, 4, 5, 6, 4}, {38, 0, 0, 2, 0, 5}, {38, 1, 0, 1, 0,
           6}, {38, 2, 0, 0, 0, 7}, {16, 5, 6, 7, 5}, {19, 5, 6}, {13, 0, 2, 
          3, 1, 4, 6, 0}, {40, 38, 3, 0, 0, 3, 0, 2}, {27, 4, 9, 2, 8, 0}, {2,
           0, 3}, {42, "CopyTensor", 3, 1, 3, 3, 1, 5}, {3, 109}, {38, 2, 0, 
          2, 0, 2}, {40, 56, 3, 0, 2, 3, 0, 4}, {38, 0, 0, 0, 0, 6}, {38, 1, 
          0, 1, 0, 5}, {38, 2, 0, 1, 0, 7}, {38, 1, 0, 0, 0, 3}, {38, 0, 0, 1,
           0, 1}, {40, 56, 3, 0, 7, 3, 0, 10}, {38, 1, 0, 2, 0, 11}, {40, 56, 
          3, 0, 11, 3, 0, 12}, {38, 0, 0, 2, 0, 13}, {40, 56, 3, 0, 13, 3, 0, 
          14}, {38, 2, 0, 0, 0, 15}, {40, 56, 3, 0, 1, 3, 0, 16}, {40, 56, 3, 
          0, 6, 3, 0, 17}, {40, 56, 3, 0, 5, 3, 0, 18}, {40, 56, 3, 0, 3, 3, 
          0, 19}, {40, 56, 3, 0, 15, 3, 0, 20}, {40, 60, 3, 0, 0, 3, 0, 21}, {
          16, 6, 5, 4, 22}, {16, 1, 3, 4, 23}, {19, 23, 24}, {16, 6, 12, 7, 
          23}, {19, 23, 25}, {16, 6, 18, 7, 23}, {19, 23, 26}, {16, 14, 3, 7, 
          23}, {16, 16, 3, 7, 27}, {16, 17, 3, 7, 28}, {16, 6, 19, 7, 29}, {
          19, 29, 30}, {16, 6, 5, 10, 29}, {16, 1, 3, 10, 31}, {19, 31, 32}, {
          16, 1, 12, 15, 31}, {16, 14, 5, 15, 33}, {19, 33, 34}, {16, 16, 5, 
          15, 33}, {19, 33, 35}, {16, 17, 5, 15, 33}, {19, 33, 36}, {16, 1, 
          18, 15, 33}, {16, 1, 19, 15, 37}, {16, 6, 5, 20, 38}, {16, 1, 3, 20,
           39}, {19, 39, 40}, {13, 22, 24, 25, 26, 23, 27, 28, 30, 29, 32, 31,
           34, 35, 36, 33, 37, 38, 40, 22}, {16, 22, 21, 22}, {16, 6, 12, 2, 
          24}, {16, 6, 18, 2, 25}, {16, 14, 3, 2, 26}, {19, 26, 23}, {16, 16, 
          3, 2, 26}, {19, 26, 27}, {16, 17, 3, 2, 26}, {19, 26, 28}, {16, 6, 
          19, 2, 26}, {16, 6, 11, 4, 30}, {19, 30, 29}, {16, 13, 3, 4, 30}, {
          16, 6, 11, 10, 32}, {19, 32, 31}, {16, 13, 3, 10, 32}, {16, 14, 11, 
          15, 34}, {16, 16, 11, 15, 35}, {16, 17, 11, 15, 36}, {16, 13, 12, 
          15, 33}, {19, 33, 37}, {16, 13, 18, 15, 33}, {19, 33, 38}, {16, 13, 
          19, 15, 33}, {19, 33, 40}, {16, 6, 11, 20, 33}, {19, 33, 39}, {16, 
          13, 3, 20, 33}, {13, 24, 25, 23, 27, 28, 26, 29, 30, 31, 32, 34, 35,
           36, 37, 38, 40, 39, 33, 24}, {16, 24, 21, 24}, {19, 1, 25}, {16, 
          25, 12, 2, 25}, {16, 14, 5, 2, 23}, {16, 16, 5, 2, 27}, {16, 17, 5, 
          2, 28}, {16, 1, 18, 2, 26}, {19, 26, 29}, {16, 1, 19, 2, 26}, {19, 
          26, 30}, {16, 1, 11, 4, 26}, {16, 13, 5, 4, 31}, {19, 31, 32}, {16, 
          14, 11, 7, 31}, {19, 31, 34}, {16, 16, 11, 7, 31}, {19, 31, 35}, {
          16, 17, 11, 7, 31}, {19, 31, 36}, {16, 13, 12, 7, 31}, {16, 13, 18, 
          7, 37}, {16, 13, 19, 7, 38}, {16, 1, 11, 10, 40}, {16, 13, 5, 10, 
          39}, {19, 39, 33}, {16, 1, 11, 20, 39}, {16, 13, 5, 20, 41}, {19, 
          41, 42}, {13, 25, 23, 27, 28, 29, 30, 26, 32, 34, 35, 36, 31, 37, 
          38, 40, 33, 39, 42, 25}, {16, 25, 21, 25}, {34, 1, 3, 22, 24, 25, 3,
           4}, {42, "CopyTensor", 3, 1, 4, 3, 1, 5}, {1}}, 
         Function[{$CellContext`a, $CellContext`b, $CellContext`c}, 
          
          Block[{Compile`$5, Compile`$6, Compile`$2, Compile`$3, Compile`$18, 
            Compile`$10, Compile`$9, Compile`$52, Compile`$15, Compile`$16, 
            Compile`$26, Compile`$28, Compile`$60, Compile`$35, Compile`$39, 
            Compile`$22, Compile`$45, Compile`$75, Compile`$82}, 
           
           Block[{$CellContext`denom = 
             Part[$CellContext`a, 3] Part[$CellContext`b, 2] 
               Part[$CellContext`c, 1] - Part[$CellContext`a, 2] 
              Part[$CellContext`b, 3] Part[$CellContext`c, 1] - 
              Part[$CellContext`a, 3] Part[$CellContext`b, 1] 
              Part[$CellContext`c, 2] + 
              Part[$CellContext`a, 1] Part[$CellContext`b, 3] 
               Part[$CellContext`c, 2] + 
              Part[$CellContext`a, 2] Part[$CellContext`b, 1] 
               Part[$CellContext`c, 3] - Part[$CellContext`a, 1] 
              Part[$CellContext`b, 2] Part[$CellContext`c, 3]}, 
            If[
            Abs[$CellContext`denom] <= 0.00001, {10000., 10000., 10000.}, 
             Compile`$5 = Part[$CellContext`c, 1]; Compile`$6 = Compile`$5^2; 
             Compile`$2 = Part[$CellContext`a, 3]; 
             Compile`$3 = Part[$CellContext`b, 2]; 
             Compile`$18 = Part[$CellContext`c, 2]; 
             Compile`$10 = Part[$CellContext`b, 3]; 
             Compile`$9 = Part[$CellContext`a, 2]; 
             Compile`$52 = Compile`$18^2; 
             Compile`$15 = Part[$CellContext`b, 1]; 
             Compile`$16 = Compile`$15^2; 
             Compile`$26 = Part[$CellContext`a, 1]; 
             Compile`$28 = Compile`$26^2; 
             Compile`$60 = Part[$CellContext`c, 3]; 
             Compile`$35 = Compile`$9^2; Compile`$39 = Compile`$2^2; 
             Compile`$22 = Compile`$3^2; Compile`$45 = Compile`$10^2; 
             Compile`$75 = Compile`$60^2; 
             Compile`$82 = $CellContext`denom^(-1); {(
                Compile`$2 Compile`$3 Compile`$6 - Compile`$9 Compile`$10 
                Compile`$6 - Compile`$2 Compile`$16 Compile`$18 - Compile`$2 
                Compile`$22 Compile`$18 + Compile`$28 Compile`$10 Compile`$18 + 
                Compile`$35 Compile`$10 Compile`$18 + 
                Compile`$39 Compile`$10 Compile`$18 - Compile`$2 Compile`$45 
                Compile`$18 + Compile`$2 Compile`$3 Compile`$52 - Compile`$9 
                Compile`$10 Compile`$52 + Compile`$9 Compile`$16 Compile`$60 - 
                Compile`$28 Compile`$3 Compile`$60 - Compile`$35 Compile`$3 
                Compile`$60 - Compile`$39 Compile`$3 Compile`$60 + 
                Compile`$9 Compile`$22 Compile`$60 + 
                Compile`$9 Compile`$45 Compile`$60 + 
                Compile`$2 Compile`$3 Compile`$75 - Compile`$9 Compile`$10 
                Compile`$75) 
               Compile`$82, (Compile`$2 Compile`$16 Compile`$5 + 
                Compile`$2 Compile`$22 Compile`$5 - Compile`$28 Compile`$10 
                Compile`$5 - Compile`$35 Compile`$10 Compile`$5 - Compile`$39 
                Compile`$10 Compile`$5 + Compile`$2 Compile`$45 Compile`$5 - 
                Compile`$2 Compile`$15 Compile`$6 + 
                Compile`$26 Compile`$10 Compile`$6 - Compile`$2 Compile`$15 
                Compile`$52 + Compile`$26 Compile`$10 Compile`$52 + 
                Compile`$28 Compile`$15 Compile`$60 + 
                Compile`$35 Compile`$15 Compile`$60 + 
                Compile`$39 Compile`$15 Compile`$60 - Compile`$26 Compile`$16 
                Compile`$60 - Compile`$26 Compile`$22 Compile`$60 - 
                Compile`$26 Compile`$45 Compile`$60 - Compile`$2 Compile`$15 
                Compile`$75 + Compile`$26 Compile`$10 Compile`$75) 
               Compile`$82, ((-Compile`$9) Compile`$16 Compile`$5 + 
                Compile`$28 Compile`$3 Compile`$5 + 
                Compile`$35 Compile`$3 Compile`$5 + 
                Compile`$39 Compile`$3 Compile`$5 - Compile`$9 Compile`$22 
                Compile`$5 - Compile`$9 Compile`$45 Compile`$5 + 
                Compile`$9 Compile`$15 Compile`$6 - Compile`$26 Compile`$3 
                Compile`$6 - Compile`$28 Compile`$15 Compile`$18 - 
                Compile`$35 Compile`$15 Compile`$18 - Compile`$39 Compile`$15 
                Compile`$18 + Compile`$26 Compile`$16 Compile`$18 + 
                Compile`$26 Compile`$22 Compile`$18 + 
                Compile`$26 Compile`$45 Compile`$18 + 
                Compile`$9 Compile`$15 Compile`$52 - Compile`$26 Compile`$3 
                Compile`$52 + Compile`$9 Compile`$15 Compile`$75 - 
                Compile`$26 Compile`$3 Compile`$75) Compile`$82}]]]], 
         Evaluate], Attributes[Compile`$5] = {Temporary}, 
       Attributes[Compile`$6] = {Temporary}, 
       Attributes[Compile`$2] = {Temporary}, 
       Attributes[Compile`$3] = {Temporary}, 
       Attributes[Compile`$18] = {Temporary}, 
       Attributes[Compile`$10] = {Temporary}, 
       Attributes[Compile`$9] = {Temporary}, 
       Attributes[Compile`$52] = {Temporary}, 
       Attributes[Compile`$15] = {Temporary}, 
       Attributes[Compile`$16] = {Temporary}, 
       Attributes[Compile`$26] = {Temporary}, 
       Attributes[Compile`$28] = {Temporary}, 
       Attributes[Compile`$60] = {Temporary}, 
       Attributes[Compile`$35] = {Temporary}, 
       Attributes[Compile`$39] = {Temporary}, 
       Attributes[Compile`$22] = {Temporary}, 
       Attributes[Compile`$45] = {Temporary}, 
       Attributes[Compile`$75] = {Temporary}, 
       Attributes[Compile`$82] = {Temporary}, $CellContext`findarea[
         Pattern[$CellContext`vertices, 
          Blank[]]] := 
       Module[{$CellContext`trianglify, $CellContext`areas, \
$CellContext`totalarea}, $CellContext`trianglify = Table[{
             Norm[
             Part[$CellContext`vertices, 1] - 
              Part[$CellContext`vertices, $CellContext`i]], 
             Norm[
             Part[$CellContext`vertices, $CellContext`i] - 
              Part[$CellContext`vertices, $CellContext`i + 1]], 
             Norm[
             Part[$CellContext`vertices, $CellContext`i + 1] - 
              Part[$CellContext`vertices, 1]]}, {$CellContext`i, 2, 
             Length[$CellContext`vertices] - 1}]; $CellContext`areas = 
          Table[0.25 
            Sqrt[(Part[$CellContext`trianglify, $CellContext`i, 1]^2 + 
                Part[$CellContext`trianglify, $CellContext`i, 2]^2 + 
                Part[$CellContext`trianglify, $CellContext`i, 3]^2)^2 - 
              2 (Part[$CellContext`trianglify, $CellContext`i, 1]^4 + 
               Part[$CellContext`trianglify, $CellContext`i, 2]^4 + 
               Part[$CellContext`trianglify, $CellContext`i, 
                  3]^4)], {$CellContext`i, 1, 
             Length[$CellContext`trianglify]}]; $CellContext`totalarea = Sum[
            Part[$CellContext`areas, $CellContext`i], {$CellContext`i, 1, 
             
             Length[$CellContext`areas]}]; $CellContext`totalarea], \
$CellContext`euler[
         Pattern[$CellContext`a, 
          Blank[]], 
         Pattern[$CellContext`b, 
          Blank[]], 
         Pattern[$CellContext`c, 
          Blank[]], 
         Pattern[$CellContext`conv, 
          Blank[]]] := 
       Module[{$CellContext`rot1, $CellContext`newx, $CellContext`rot2, \
$CellContext`newz, $CellContext`rot3}, $CellContext`rot1 = N[
            
            RotationMatrix[($CellContext`a + $CellContext`conv) Degree, {0, 0,
              1}]]; $CellContext`newx = 
          Dot[$CellContext`rot1, {1, 0, 0}]; $CellContext`rot2 = 
          RotationMatrix[$CellContext`b 
            Degree, $CellContext`newx]; $CellContext`newz = 
          Dot[$CellContext`rot2, {0, 0, 1}]; $CellContext`rot3 = 
          RotationMatrix[$CellContext`c Degree, $CellContext`newz]; 
         Dot[$CellContext`rot3, 
           
           Dot[$CellContext`rot2, $CellContext`rot1]]], \
$CellContext`makeAWulffdouble[
         Pattern[$CellContext`newGs, 
          Blank[]], 
         Pattern[$CellContext`colz, 
          Blank[]], 
         Pattern[$CellContext`switch, 
          Blank[]], 
         Pattern[$CellContext`sensitivity, 
          Blank[]]] := 
       Module[{$CellContext`neighbors, $CellContext`verts, \
$CellContext`verts2, $CellContext`vertTest, $CellContext`rotMats, \
$CellContext`rotatedVerts, $CellContext`shifts, $CellContext`centeredVerts, \
$CellContext`sortedVerts, $CellContext`finVerts, $CellContext`facets, \
$CellContext`vertParents}, $CellContext`neighbors = Table[
            $CellContext`neighborQdouble[$CellContext`i, $CellContext`newGs, \
$CellContext`switch, $CellContext`sensitivity], {$CellContext`i, 
             Length[$CellContext`newGs]}]; $CellContext`verts = Table[{
             $CellContext`findvert[
              Part[$CellContext`newGs, $CellContext`i, 1], 
              Part[$CellContext`newGs, 
               Part[$CellContext`neighbors, $CellContext`i, $CellContext`j], 
               1], 
              Part[$CellContext`newGs, 
               Part[$CellContext`neighbors, $CellContext`i, $CellContext`k], 
               1]], {
              Part[$CellContext`newGs, $CellContext`i, 3], 
              Part[$CellContext`neighbors, $CellContext`i, $CellContext`j], 
              
              Part[$CellContext`neighbors, $CellContext`i, $CellContext`k]}}, \
{$CellContext`i, 
             Length[$CellContext`newGs]}, {$CellContext`j, Length[
               Part[$CellContext`neighbors, $CellContext`i]] - 
             1}, {$CellContext`k, $CellContext`j + 1, 
             Length[
              
              Part[$CellContext`neighbors, $CellContext`i]]}]; \
$CellContext`verts2 = Table[
            Select[
             Flatten[
              Part[$CellContext`verts, $CellContext`i], 1], VectorQ[
              Part[#, 1]]& ], {$CellContext`i, 
             Length[$CellContext`verts]}]; $CellContext`vertTest = Table[
            Select[
             Table[
              If[
               MemberQ[
                Table[
                 $CellContext`outsideWulffCompiled[
                  Part[$CellContext`newGs, $CellContext`j, 1], 
                  
                  Part[$CellContext`verts2, $CellContext`i, $CellContext`k, 
                   1]], {$CellContext`j, 
                  Length[$CellContext`newGs]}], True], Null, 
               
               Part[$CellContext`verts2, $CellContext`i, $CellContext`k]], \
{$CellContext`k, 
               Length[
                Part[$CellContext`verts2, $CellContext`i]]}], Not[
             Null === #]& ], {$CellContext`i, 
             Length[$CellContext`verts2]}]; $CellContext`rotMats = Chop[
            Table[
             If[Dot[
                 Part[$CellContext`newGs, $CellContext`i, 1], {0, 0, 1}]/Norm[
               
                Part[$CellContext`newGs, $CellContext`i, 1]] == -1, 
              RotationMatrix[Pi, {1, 0, 0}], 
              RotationMatrix[{
                Part[$CellContext`newGs, $CellContext`i, 1], {0, 0, 
                1}}]], {$CellContext`i, 
              Length[$CellContext`newGs]}]]; $CellContext`rotatedVerts = 
          Table[{
             Dot[
              Part[$CellContext`rotMats, $CellContext`i], 
              
              Part[$CellContext`vertTest, $CellContext`i, $CellContext`j, 
               1]], $CellContext`j}, {$CellContext`i, 
             Length[$CellContext`vertTest]}, {$CellContext`j, 
             Length[
              
              Part[$CellContext`vertTest, $CellContext`i]]}]; \
$CellContext`shifts = Table[
            Mean[
             Table[{
               
               Part[$CellContext`rotatedVerts, $CellContext`i, $CellContext`j,
                 1, 1], 
               
               Part[$CellContext`rotatedVerts, $CellContext`i, $CellContext`j,
                 1, 2], 0}, {$CellContext`j, 
               Length[
                
                Part[$CellContext`rotatedVerts, $CellContext`i]]}]], \
{$CellContext`i, 
             Length[$CellContext`rotatedVerts]}]; $CellContext`centeredVerts = 
          Table[{Part[$CellContext`rotatedVerts, $CellContext`i, \
$CellContext`j, 1] - Part[$CellContext`shifts, $CellContext`i], 
             
             Part[$CellContext`rotatedVerts, $CellContext`i, $CellContext`j, 
              2]}, {$CellContext`i, 
             Length[$CellContext`rotatedVerts]}, {$CellContext`j, 
             Length[
              
              Part[$CellContext`rotatedVerts, $CellContext`i]]}]; \
$CellContext`sortedVerts = Table[
            Sort[
             Part[$CellContext`centeredVerts, $CellContext`i], ArcTan[
               Part[#, 1, 1], 
               Part[#, 1, 2]] > ArcTan[
               Part[#2, 1, 1], 
               Part[#2, 1, 2]]& ], {$CellContext`i, 
             Length[$CellContext`centeredVerts]}]; $CellContext`finVerts = 
          Table[{
             Part[$CellContext`vertTest, $CellContext`i, 
              
              Part[$CellContext`sortedVerts, $CellContext`i, $CellContext`j, 
               2], 1], 
             Sort[
              Part[$CellContext`vertTest, $CellContext`i, 
               
               Part[$CellContext`sortedVerts, $CellContext`i, $CellContext`j, 
                2], 2]]}, {$CellContext`i, 
             Length[$CellContext`vertTest]}, {$CellContext`j, 
             Length[
              
              Part[$CellContext`vertTest, $CellContext`i]]}]; \
$CellContext`facets = Table[
            
            Part[$CellContext`finVerts, $CellContext`i, $CellContext`j, 
             1], {$CellContext`i, 
             Length[$CellContext`vertTest]}, {$CellContext`j, 
             Length[
              
              Part[$CellContext`vertTest, $CellContext`i]]}]; \
$CellContext`vertParents = Table[
            
            Part[$CellContext`finVerts, $CellContext`i, $CellContext`j, 
             2], {$CellContext`i, 
             Length[$CellContext`vertTest]}, {$CellContext`j, 
             Length[
              
              Part[$CellContext`vertTest, $CellContext`i]]}]; \
{$CellContext`facets, $CellContext`finVerts}], $CellContext`neighborQdouble[
         Pattern[$CellContext`index, 
          Blank[]], 
         Pattern[$CellContext`glist, 
          Blank[]], 
         Pattern[$CellContext`switch, 
          Blank[]], 
         Pattern[$CellContext`cutoff, 
          Blank[]]] := 
       Module[{$CellContext`gtop, $CellContext`gbot, $CellContext`dotstop, \
$CellContext`dotsbot, $CellContext`sortedtop, $CellContext`sortedbot, \
$CellContext`neighborstop, $CellContext`neighborsbot, $CellContext`fin}, \
$CellContext`gtop = Table[
            
            Part[$CellContext`glist, $CellContext`i], {$CellContext`i, \
$CellContext`switch}]; $CellContext`gbot = Table[
            
            Part[$CellContext`glist, $CellContext`i], {$CellContext`i, \
$CellContext`switch + 1, 
             Length[$CellContext`glist]}]; $CellContext`dotstop = Table[{
             Dot[
              Normalize[
               Part[$CellContext`gtop, $CellContext`i, 1]], 
              Normalize[
               Part[$CellContext`glist, $CellContext`index, 1]]], 
             Part[$CellContext`gtop, $CellContext`i, 3]}, {$CellContext`i, 
             Length[$CellContext`gtop]}]; $CellContext`dotsbot = Table[{
             Dot[
              Normalize[
               Part[$CellContext`gbot, $CellContext`i, 1]], 
              Normalize[
               Part[$CellContext`glist, $CellContext`index, 1]]], 
             Part[$CellContext`gbot, $CellContext`i, 3]}, {$CellContext`i, 
             Length[$CellContext`gbot]}]; $CellContext`sortedtop = 
          Sort[$CellContext`dotstop, Part[#, 1] > 
            Part[#2, 1]& ]; $CellContext`sortedbot = 
          Sort[$CellContext`dotsbot, Part[#, 1] > 
            Part[#2, 1]& ]; $CellContext`neighborstop = Table[
            
            Part[$CellContext`sortedtop, $CellContext`i, 2], {$CellContext`i, 
             
             Min[$CellContext`cutoff, 
              Length[$CellContext`gtop]]}]; $CellContext`neighborsbot = 
          Table[
            
            Part[$CellContext`sortedbot, $CellContext`i, 2], {$CellContext`i, 
             
             Min[$CellContext`cutoff, 
              Length[$CellContext`gbot]]}]; $CellContext`fin = Join[
            
            Select[$CellContext`neighborstop, 
             Not[# === $CellContext`index]& ], 
            
            Select[$CellContext`neighborsbot, 
             Not[# === $CellContext`index]& ]]], $CellContext`cycle[
         Pattern[$CellContext`list, 
          Blank[]], 
         Pattern[$CellContext`ntimes, 
          Blank[]]] := 
       Module[{$CellContext`res}, $CellContext`res = $CellContext`list; 
         Do[$CellContext`res = Join[{
              Last[$CellContext`res]}, 
             
             Most[$CellContext`res]], {$CellContext`ntimes}]; \
$CellContext`res], $CellContext`neighborfxn[
         Pattern[$CellContext`lenperim, 
          Blank[]]] := Table[
         Module[{$CellContext`down, $CellContext`downn, $CellContext`downp, \
$CellContext`up, $CellContext`upn, $CellContext`upp, $CellContext`allsix, \
$CellContext`realneighbors}, $CellContext`down = 
           If[$CellContext`level <= 2, {
             Null, Null}, {$CellContext`level - 
              2, $CellContext`node}]; $CellContext`up = 
           If[9 - $CellContext`level < 2, {
             Null, Null}, {$CellContext`level + 
              2, $CellContext`node}]; $CellContext`downn = 
           If[$CellContext`level == 1, {Null, Null}, 
             If[
              OddQ[$CellContext`level], {$CellContext`level - 1, 
               
               If[$CellContext`node == 
                1, $CellContext`lenperim, $CellContext`node - 
                1]}, {$CellContext`level - 
               1, $CellContext`node}]]; $CellContext`downp = 
           If[$CellContext`level == 1, {Null, Null}, 
             If[
              
              OddQ[$CellContext`level], {$CellContext`level - 
               1, $CellContext`node}, {$CellContext`level - 1, 
               
               If[$CellContext`node == $CellContext`lenperim, 
                1, $CellContext`node + 1]}]]; $CellContext`upn = 
           If[9 - $CellContext`level < 1, {Null, Null}, 
             If[
              OddQ[$CellContext`level], {$CellContext`level + 1, 
               
               If[$CellContext`node == 
                1, $CellContext`lenperim, $CellContext`node - 
                1]}, {$CellContext`level + 
               1, $CellContext`node}]]; $CellContext`upp = 
           If[9 - $CellContext`level < 1, {Null, Null}, 
             If[
              
              OddQ[$CellContext`level], {$CellContext`level + 
               1, $CellContext`node}, {$CellContext`level + 1, 
               
               If[$CellContext`node == $CellContext`lenperim, 
                1, $CellContext`node + 
                1]}]]; $CellContext`allsix = {$CellContext`down, \
$CellContext`downn, $CellContext`downp, $CellContext`up, $CellContext`upn, \
$CellContext`upp}; $CellContext`realneighbors = 
           Select[$CellContext`allsix, NumberQ[
              Part[#, 1]]& ]], {$CellContext`level, 1, 9}, {$CellContext`node,
           1, $CellContext`lenperim}], $CellContext`defShowwulff = 
       False, $CellContext`defShowstats = False, $CellContext`defSens = 
       16, $CellContext`defGgb = 1., $CellContext`defGh = 
       0, $CellContext`defGk = 0, $CellContext`defGl = 
       1, $CellContext`defView = {1, 5, 1}, $CellContext`defVert = {0, 0, 
        1}, $CellContext`defOpacity = 1, $CellContext`defPerim = 
       0.02, $CellContext`defGBsize = 0, $CellContext`defAxes = 
       1.2, $CellContext`groupSet["Cubic"] = {
        "23", "m\!\(\*OverscriptBox[\(3\), \(_\)]\)", "432", 
         "\!\(\*OverscriptBox[\(4\), \(_\)]\)3m", 
         "m\!\(\*OverscriptBox[\(3\), \(_\)]\)m"}, $CellContext`groupSet[
        "Hexagonal"] = {
        "3", "\!\(\*OverscriptBox[\(3\), \(_\)]\)", "32", "3m", 
         "\!\(\*OverscriptBox[\(3\), \(_\)]\)m", "6", 
         "\!\(\*OverscriptBox[\(6\), \(_\)]\)", "6/m", "622", "6mm", 
         "\!\(\*OverscriptBox[\(6\), \(_\)]\)m2", 
         "6/mmm"}, $CellContext`groupSet["Monoclinic"] = {
        "2", "m", "2/m"}, $CellContext`groupSet["Orthorhombic"] = {
        "222", "mm2", "mmm"}, $CellContext`groupSet["Tetragonal"] = {
        "4", "\!\(\*OverscriptBox[\(4\), \(_\)]\)", "4/m", "422", "4mm", 
         "\!\(\*OverscriptBox[\(4\), \(_\)]\)2m", 
         "4/mmm"}, $CellContext`groupSet["Triclinic"] = {
        "1", "\!\(\*OverscriptBox[\(1\), \(_\)]\)"}}; 
     Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False,
   FontSize->Large],
  Manipulate`InterpretManipulate[1]]], "Input",
 CellChangeTimes->{{3.610687313828306*^9, 3.610687367713675*^9}, {
   3.610688861594679*^9, 3.610688933555825*^9}, {3.610690555229619*^9, 
   3.610690649292849*^9}, {3.6106907954809933`*^9, 3.610690802791206*^9}, {
   3.6106908450563993`*^9, 3.610690848743836*^9}, {3.610690903528212*^9, 
   3.610690906527115*^9}, {3.610691299428314*^9, 3.610691310520157*^9}, {
   3.610691354333087*^9, 3.6106913574545183`*^9}, {3.6106919562247334`*^9, 
   3.6106919571239347`*^9}, {3.610692177748014*^9, 3.610692201477153*^9}, {
   3.6106923286537943`*^9, 3.610692332683337*^9}, {3.61069396806774*^9, 
   3.610694017101982*^9}, {3.610694632393285*^9, 3.610694634081376*^9}, 
   3.610694681788897*^9, {3.610694792046365*^9, 3.610694861855833*^9}, {
   3.610694910971539*^9, 3.6106949151501617`*^9}, {3.6106949550074997`*^9, 
   3.610695013115292*^9}, {3.610695124068425*^9, 3.610695140634326*^9}, {
   3.6106973354263477`*^9, 3.610697398222073*^9}, {3.610697742243124*^9, 
   3.6106977493544407`*^9}, 3.6944398474897537`*^9}],

Cell[TextData[{
 StyleBox["*Euler angle convention",
  FontWeight->"Bold"],
 "\nFor converting Euler angles into a rotation, the crystallographic c-axis \
is initially assumed parallel to the z-direction of the reference frame. \
Then, the three usual Euler angle operations are performed (rotate first \
around z, then around the new x, then around the new z) to arrive at the \
crystal orientation relative to the reference frame. However, the initial \
orientation of the crystallographic axes with respect to rotation about the \
c-axis is ambiguous, and at least 2 conventions are in common use:\n\
Convention 1: the crystallographic a-axis is initially parallel to the \
x-direction. This is the default, with Euler angle convention (degrees) = 0.\n\
Convention 2: the crystallographic b-axis is initially parallel to the \
y-direction. For a hexagonal crystal, set Euler angle convention (degrees) = \
30. For a triclinic or monoclinic crystal, set Euler angle convention \
(degrees) = \[Gamma]-90\[Degree], where \[Gamma] = the angle between the \
a-axis and b-axis.\n\n",
 StyleBox["**Sensitivity",
  FontWeight->"Bold"],
 "\nOccasionally, a shape calculated by Wulffmaker will have holes/gaps in \
the surface, and the displayed facets may not respect the crystallographic \
symmetry. This is because the value of the variable \
\[OpenCurlyDoubleQuote]sensitivity\[CloseCurlyDoubleQuote] is too small. \
\[OpenCurlyDoubleQuote]Sensitivity\[CloseCurlyDoubleQuote] determines the \
trade-off between speed and how thoroughly Wulffmaker looks for vertices on \
the equilibrium shape. Under most circumstances, a sensitivity in the range \
14-18 is sufficient. Try increasing by ~5-10 at a a time until the holes \
disappear. Operating with an unnecessarily high sensitivity does not make the \
calculation more accurate, it only makes it much slower. Just use the \
smallest sensitivity that returns a shape without holes."
}], "Text",
 CellChangeTimes->{{3.6106913213735723`*^9, 3.610691696275207*^9}, {
  3.610691726424822*^9, 3.610691891676112*^9}, {3.6106919614838343`*^9, 
  3.6106920538003397`*^9}, {3.61069209096115*^9, 3.6106920984385967`*^9}, {
  3.694439737110201*^9, 3.694439746796289*^9}}]
}, Open  ]]
}, Open  ]]
},
WindowSize->{1406, 970},
WindowMargins->{{-10, Automatic}, {Automatic, 0}},
FrontEndVersion->"11.0 for Mac OS X x86 (32-bit, 64-bit Kernel) (September \
21, 2016)",
StyleDefinitions->"Default.nb"
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
Cell[CellGroupData[{
Cell[1486, 35, 860, 15, 124, "Title"],
Cell[2349, 52, 1384, 26, 275, "Text"],
Cell[CellGroupData[{
Cell[3758, 82, 146, 2, 64, "Section"],
Cell[CellGroupData[{
Cell[3929, 88, 266, 3, 44, "Subsection"],
Cell[4198, 93, 7810, 134, 814, "Text"]
}, Open  ]],
Cell[CellGroupData[{
Cell[12045, 232, 98, 1, 44, "Subsection"],
Cell[12146, 235, 2126, 35, 222, "Text"]
}, Open  ]],
Cell[CellGroupData[{
Cell[14309, 275, 203, 3, 44, "Subsection"],
Cell[14515, 280, 3291, 54, 412, "Text"]
}, Open  ]]
}, Closed]],
Cell[CellGroupData[{
Cell[17855, 340, 333, 4, 50, "Section"],
Cell[18191, 346, 17997, 413, 1668, "Input",
 InitializationCell->True]
}, Closed]],
Cell[CellGroupData[{
Cell[36225, 764, 96, 1, 50, "Section"],
Cell[CellGroupData[{
Cell[36346, 769, 125409, 3117, 4885, "Input",
 InitializationCell->True],
Cell[161758, 3888, 18764, 387, 70, "Output"],
Cell[180525, 4277, 38096, 764, 70, "Output"]
}, Open  ]],
Cell[218636, 5044, 169376, 3948, 6863, "Input",
 InitializationCell->True]
}, Closed]],
Cell[CellGroupData[{
Cell[388049, 8997, 146, 2, 50, "Section"],
Cell[388198, 9001, 130928, 2650, 1572, "Input"],
Cell[519129, 11653, 2208, 34, 259, "Text"]
}, Open  ]]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature Zu0CU0G2busk4DKky9IvulpS *)
