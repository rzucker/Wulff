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
NotebookDataLength[    286023,       5873]
NotebookOptionsPosition[    285447,       5839]
NotebookOutlinePosition[    285809,       5855]
CellTagsIndexPosition[    285766,       5852]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell["\<\
Wulffmaker: Wulff shapes V3.0
with facet surface areas!\
\>", "Title",
 CellChangeTimes->{{3.5184451290815563`*^9, 3.518445138694195*^9}, {
   3.547215622356022*^9, 3.547215624681027*^9}, {3.547216057813406*^9, 
   3.5472160597412987`*^9}, 3.547217091440813*^9, {3.548494302839478*^9, 
   3.548494303150022*^9}, {3.548494353109837*^9, 3.5484943579095716`*^9}, {
   3.5529639345387487`*^9, 3.552963946010705*^9}, {3.6047598895781317`*^9, 
   3.604759904914719*^9}, {3.604760021285918*^9, 3.6047600216699047`*^9}}],

Cell[TextData[{
 "Brought to you by Rachel V. Zucker & W. Craig Carter\nPlease direct \
questions, comments, and bug reports to rzucker@mit.edu\n\nIf you use this \
software, please cite us in your work: \nRV Zucker, D Chatain, U Dahmen, S \
Hagege, WC Carter. \[OpenCurlyDoubleQuote]New Software Tools for the \
Calculation and Display of Isolated and Attached Interfacial-Energy \
Minimizing Particle Shapes.\[CloseCurlyDoubleQuote] ",
 StyleBox["Journal of Materials Science",
  FontSlant->"Italic"],
 " ",
 StyleBox["47",
  FontWeight->"Bold"],
 ":8290-8302 (2012)\n\nAcknowledgements: \nMany thanks to Joakim Brorsson for \
the bug report and solution.\n\n(Double-click the blue brackets at the far \
right of the window to expand/hide sections)"
}], "Subsubtitle",
 CellChangeTimes->{{3.518445150958107*^9, 3.518445204025096*^9}, {
  3.518445591350183*^9, 3.518445595113935*^9}, {3.518520646159315*^9, 
  3.5185206550535793`*^9}, {3.54849431651381*^9, 3.548494317033304*^9}, {
  3.604756945545212*^9, 3.6047570200029383`*^9}, {3.6047599959190893`*^9, 
  3.604760006582316*^9}}],

Cell[CellGroupData[{

Cell["User Guide", "Section",
 CellGroupingRules->{GroupTogetherGrouping, 10000.},
 CellChangeTimes->{{3.518447108352004*^9, 3.518447131263427*^9}, {
  3.519059793403633*^9, 3.519059797232799*^9}, {3.546691469192992*^9, 
  3.5466914696703367`*^9}, {3.604760041727862*^9, 3.604760044845072*^9}}],

Cell["Current Capabilities", "Subsubsection",
 CellGroupingRules->{GroupTogetherGrouping, 10000.},
 CellChangeTimes->{{3.518447148436452*^9, 3.5184472131322947`*^9}, {
   3.518448893367828*^9, 3.518448893773073*^9}, 3.5184501348073997`*^9}],

Cell[TextData[{
 "Wulffmaker is designed to display the shape of crystals in three \
dimensions. It was designed to replace the older progam ",
 StyleBox["Wulffman",
  FontSlant->"Italic"],
 ", and is platform-independent. The user can select any crystallographic \
symmetry and specify crystallographic axes (a, b, c) and angles (\[Alpha], \
\[Beta], \[Gamma]), up to 30 symmetrically distinct facets (\
\[OpenCurlyDoubleQuote]facet families\[CloseCurlyDoubleQuote]), and assigns \
each family a surface energy (\[Gamma]). The facet families are identified by \
their normal vector in Miller indices, {h k l}. The user also controls some \
aspects of the Wulff shape plot, including colors, opacity, and whether to \
display the crystallographic axes. \[OpenCurlyDoubleQuote]Viewing axis\
\[CloseCurlyDoubleQuote] is the viewing direction (orthagonal to your \
screen), and \[OpenCurlyDoubleQuote]vertical \
direction\[CloseCurlyDoubleQuote] is the crystallographic direction pointing \
to the top of your screen. By clicking an dragging on the plot its self, it \
can be rotated. For a complete discussion of this software, and its relation \
to materials science, see the associated publication: RV Zucker, D Chatain, U \
Dahmen, S Hagege, WC Carter. \[OpenCurlyDoubleQuote]New Software Tools for \
the Calculation and Display of Isolated and Attached Interfacial-Energy \
Minimizing Particle Shapes.\[CloseCurlyDoubleQuote] ",
 StyleBox["Journal of Materials Science",
  FontSlant->"Italic"],
 ", 2012."
}], "Text",
 CellGroupingRules->{GroupTogetherGrouping, 10000.},
 CellChangeTimes->{{3.518445876710065*^9, 3.518446348026244*^9}, {
   3.518446379223979*^9, 3.518446401099177*^9}, {3.5184464359577103`*^9, 
   3.518446632578114*^9}, {3.518446756193521*^9, 3.5184467589283447`*^9}, {
   3.5184469460781116`*^9, 3.518447099491424*^9}, 3.518447131263651*^9, {
   3.518447166390895*^9, 3.518447173488578*^9}, {3.518447237741197*^9, 
   3.51844745084159*^9}, {3.518447516538354*^9, 3.518447795671555*^9}, {
   3.5184478456057158`*^9, 3.51844789611029*^9}, {3.5184479551926126`*^9, 
   3.518448095307148*^9}, {3.5184481271659803`*^9, 3.5184483896193953`*^9}, 
   3.518448419649967*^9, 3.5184501348076067`*^9, {3.51851953441136*^9, 
   3.51851953481138*^9}, {3.519060115114377*^9, 3.519060140527372*^9}, {
   3.5466913362789783`*^9, 3.54669138420216*^9}, {3.547216144403792*^9, 
   3.547216147929626*^9}, {3.548494335760203*^9, 3.548494383222123*^9}, {
   3.6047584451843643`*^9, 3.604758448574561*^9}, {3.6047584816145077`*^9, 
   3.6047584818791733`*^9}, {3.604759852222468*^9, 3.6047598522981033`*^9}}],

Cell["Using Wulffmaker", "Subsubsection",
 CellGroupingRules->{GroupTogetherGrouping, 10000.},
 CellChangeTimes->{{3.518450018332622*^9, 3.51845002195302*^9}, {
   3.5184501026251698`*^9, 3.518450102985705*^9}, 3.5184501348080883`*^9, {
   3.547216160812276*^9, 3.547216164596195*^9}}],

Cell[TextData[{
 "When you open the code, you will probably be asked whether to enable \
dynamic updating. Click \[OpenCurlyDoubleQuote]yes.\[CloseCurlyDoubleQuote] \
This will allow the image to update whenever you change something. You can \
also ensure that dynamic updating is enabled by going to Evaluation -> \
Dynamic Updating Enabled. There will be a check-mark next to the list item if \
dynamic updating is turned on. \n\nIf the code does not automatically \
evaluate, go to the navigation bar for CDF player or ",
 StyleBox["Mathematica",
  FontSlant->"Italic"],
 " (whichever you are using) and select Evaluation -> Evaluate Notebook.\n\n\
During the evaluation, you will see some blue brackets at the right of the \
screen become bold and black. The brackets will turn fine and blue again when \
the computation is complete. Changing variables or begining new calculations \
while the code is still evaluating should work on most computers at the time \
of release, but on machines with limited RAM, this may cause ",
 StyleBox["Mathematica",
  FontSlant->"Italic"],
 " to either abort the calculation or freeze. If it does stop working (for \
any reason), you can abort the current evaluation by selecting Evaluation -> \
Abort Evaluation. To get a fresh start, select Evaluation -> Quit Kernel -> \
Quit. This will clear everything in ",
 StyleBox["Mathematica",
  FontSlant->"Italic"],
 "\[CloseCurlyQuote]s memory. To run the code again, select Evaluation -> \
Evaluate Notebook. \n\nThe controls for lattice symmetry, point group, number \
of facet families used, and plotting options appear above the Wulff shape. \
The default lattice symmetry is Cubic, the default point group is \
\[OpenCurlyDoubleQuote]m",
 Cell[BoxData[
  FormBox[
   OverscriptBox["3", "_"], TraditionalForm]]],
 "m\[CloseCurlyDoubleQuote], and the default number of facet families is 3. \
Only the point groups consistent with the selected lattice symmetry are \
available in the point group menu. The point groups are identified by their \
International symbol, in abbreviated form. Changing these values will reset \
the controls for facet family, \[Gamma], and color, so it is best to select \
the symmetry variables first before moving on to each specific facet family, \
\[Gamma], and color.\n\nThe controls for facet family, \[Gamma], and color \
appear to the left of the Wulff shape. By default, Wulffmaker starts with 3 \
facet families: {0, 0, 1}, {1, 1, 1}, and {1, 1, 0}, and when more facet \
families are added, the default values are random {h k l}\[CloseCurlyQuote]s. \
You are free to select whatever {h k l}\[CloseCurlyQuote]s you like, and may \
change any of the \[Gamma]\[CloseCurlyQuote]s and colors. By expanding the \
slider controls for \[Gamma] (this is done by clicking on the \
\[OpenCurlyDoubleQuote]+\[OpenCurlyDoubleQuote] symbol next to the current \
value of \[Gamma], which defaults to 1), you can continuously animate the \
shape with changing \[Gamma] by using the playback buttons. You can also \
manually type in the desired \[Gamma] in the input field, even if it is \
outside the range of the slider.\n\t\nThe crystallographic controls (a, b, c) \
and (\[Alpha], \[Beta], \[Gamma]) appear to the right of the Wulff shape. For \
any symmetry other than cubic, selecting these variables is essential to \
representing the Wulff shape correctly. Only the crystallographic controls \
that are \[OpenCurlyDoubleQuote]free variables\[CloseCurlyDoubleQuote] under \
the selected lattice symmetry are available. The axes default to having \
length 1 and the angles default to 90 degrees, but can be freely changed. \n\n\
You may modify the source code, but we suggest that modified vesions be saved \
with a different name so that you can always revert to the original. Example \
modifications include changing the default {h k l} values, changing the types \
of controls available on Wulffmaker, or changing default colors. \n\nIf the \
shape specified by the facet families and point symmetry is not a closed \
volume, Wulffmaker will return \[OpenCurlyDoubleQuote]$Aborted\
\[CloseCurlyDoubleQuote] or an error (indicated by the plot area turning pink \
and red text below the user interface). By adding more facet families, one \
can find a closed shape. "
}], "Text",
 CellGroupingRules->{GroupTogetherGrouping, 10000.},
 CellChangeTimes->{{3.518450032818315*^9, 3.518450046797674*^9}, 
   3.518450134808251*^9, {3.5185206706940403`*^9, 3.518520684749442*^9}, {
   3.5185207221890907`*^9, 3.518520741580729*^9}, {3.518520884444277*^9, 
   3.5185209072772007`*^9}, {3.547216171973255*^9, 3.547216280158394*^9}, {
   3.547216394461073*^9, 3.547216621275281*^9}, {3.547216710074752*^9, 
   3.5472167220201187`*^9}, {3.548494437941951*^9, 3.5484945166483717`*^9}, {
   3.604758502260803*^9, 3.604758828300497*^9}, {3.604758878707828*^9, 
   3.604758906354837*^9}, {3.6047589507699738`*^9, 3.6047589903289337`*^9}, {
   3.6047590383215723`*^9, 3.604759074694956*^9}, {3.604759105798194*^9, 
   3.6047591261649733`*^9}, {3.604759966863077*^9, 3.604759990366745*^9}}],

Cell["Common Issues & How To Resolve Them", "Subsubsection",
 CellGroupingRules->{GroupTogetherGrouping, 10000.},
 CellChangeTimes->{{3.51844717796574*^9, 3.518447188328124*^9}, 
   3.518450134808395*^9, {3.548494621513682*^9, 3.548494623918316*^9}, {
   3.604759778717373*^9, 3.604759796939826*^9}}],

Cell[TextData[{
 StyleBox["The graphics field is pink",
  FontSlant->"Italic"],
 "\nIf the lattice symmetry is changed, the point group does not \
automatically switch to an allowed point group in the new lattice symmetry. \
As a result, the shape displayed immediately after a change to a new lattice \
symmetry will be wrong, or may even return an error (indicated by the \
graphics field turning pink). To display the correct shape, the user must \
select a point group from the menu. Wulffmaker should recover once a \
compatible point group is chosen.\n\n",
 StyleBox["The Wulff shape has holes in its surface",
  FontSlant->"Italic"],
 "\nOccasionally, a shape calculated by Wulffmaker will have holes in the \
surface, and will not look right. This is because the value of the variable \
\[OpenCurlyDoubleQuote]sensitivity\[CloseCurlyDoubleQuote] is too small. \
\[OpenCurlyDoubleQuote]Sensitivity\[CloseCurlyDoubleQuote] determines the \
trade-off between speed and how carefully Wulffmaker looks for vertices on \
the equilibrum shape. Under most circumstances, a sensitivity in the range \
10-18 is sufficient. If your Wulff shape is not closed, try increasing \
sensitivity by ~5 or 10 at a a time until the holes disappear. Opperating \
with an unnecissarily high sensitivity does not make the calculation more \
accurate, it only makes it much slower. Just use the smallest sensitivity \
that returns a shape without holes in the surface.\n\n",
 StyleBox["The calculation aborted without error",
  FontSlant->"Italic"],
 "\nIf too many facet families are included (>~20, depending on how powerful \
your computer is), the calculation may abort, even without an apparent error. \
This is usually because ",
 StyleBox["Mathematica",
  FontSlant->"Italic"],
 " runs out of memory as it generates throusands of facets. Future versions \
should correct this issue. If you need to study shapes with many facets on \
them, we can potentially help you if you contact us.\n\n",
 StyleBox["The calculation is taking too long",
  FontSlant->"Italic"],
 "\nIf the calculation is taking too long, you can abandon the calculation by \
selecting Evaluation -> Abort Evaluation. To re-start, re-evaluate the code \
by selecting Evaluation -> Evaluate Notebook.\n\n",
 StyleBox["My Wulff shape does not look right, even though I inputted the \
correct indices",
  FontSlant->"Italic"],
 "\nIf one or both of the Wulff shapes are non-cubic in symmetry, a common \
mistake is not inputting the relative lengths of the crystallographic axes, \
(a, b, c). These values determine the conversion from Miller indices to \
cartesian coordinates.\n\n",
 StyleBox["I have a trigonal material, but there are no control for this \
crystal system",
  FontSlant->"Italic"],
 "\nTrigonal or rhombahedral crystal symmetries are special cases of the \
hexagonal crystal system. A quick web search will explain how to convert \
rhombahedral indices to hexagonal indices, though it is quite common that \
publications present facets using both index systems, so you can usually find \
a paper that has already done the conversion for you."
}], "Text",
 CellGroupingRules->{GroupTogetherGrouping, 10000.},
 CellChangeTimes->{{3.518446836233048*^9, 3.518446904138329*^9}, {
   3.5184469399917383`*^9, 3.518446941700807*^9}, 3.518447131263824*^9, {
   3.5184471916875343`*^9, 3.518447193886733*^9}, {3.518447460447277*^9, 
   3.518447491015839*^9}, 3.518448421687047*^9, {3.5184486955227823`*^9, 
   3.51844887534451*^9}, {3.518450069120241*^9, 3.518450096356513*^9}, {
   3.546691398747869*^9, 3.5466914516713943`*^9}, {3.547216105813833*^9, 
   3.547216122254467*^9}, {3.547216745884967*^9, 3.54721674985877*^9}, {
   3.5484945494685698`*^9, 3.5484945863008204`*^9}, {3.549363785313493*^9, 
   3.549363786352255*^9}, {3.60475923040248*^9, 3.604759761156646*^9}, {
   3.604759819972095*^9, 3.604759833146666*^9}}]
}, Closed]],

Cell[CellGroupData[{

Cell["Source Code", "Section",
 CellChangeTimes->{{3.518283671960793*^9, 3.518283679285681*^9}, {
   3.518445688293679*^9, 3.518445689494059*^9}, 3.541756322015625*^9, {
   3.60476006166887*^9, 3.604760062131936*^9}}],

Cell[BoxData[
 RowBox[{
  StyleBox[
   RowBox[{"(*", " ", 
    RowBox[{
    "Adjust", " ", "the", " ", "default", " ", "display", " ", "here"}], " ", 
    "*)"}],
   FontSize->16], " ", "\[IndentingNewLine]", "\[IndentingNewLine]", 
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{"in", " ", "the", " ", "three", " ", "functions", " ", "below"}], 
    ",", " ", 
    RowBox[{"i", " ", "is", " ", "the", " ", 
     SuperscriptBox["i", "th"], " ", "facet", " ", "family"}], ",", " ", 
    RowBox[{
     RowBox[{"and", " ", "j"}], " ", "=", " ", 
     RowBox[{"1", " ", "refers", " ", "to", " ", 
      StyleBox["h",
       FontSlant->"Italic"]}]}], ",", " ", 
    RowBox[{"j", " ", "=", " ", 
     RowBox[{"2", " ", "refers", " ", "to", " ", 
      StyleBox["k",
       FontSlant->"Italic"]}]}], ",", " ", 
    RowBox[{
     RowBox[{"and", " ", "j"}], " ", "=", " ", 
     RowBox[{"3", " ", "refers", " ", "to", " ", 
      RowBox[{
       StyleBox["l",
        FontSlant->"Italic"], "."}]}]}]}], " ", "*)"}], " ", 
  "\[IndentingNewLine]", "\[IndentingNewLine]", 
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{
    "if", " ", "you", " ", "want", " ", "to", " ", "modify", " ", "the", " ", 
     "default", " ", 
     RowBox[{"(", 
      RowBox[{"h", " ", "k", " ", "l"}], ")"}], " ", "values"}], ",", " ", 
    RowBox[{"do", " ", "it", " ", "with", " ", 
     RowBox[{"pickIndex", "."}]}]}], " ", "*)"}], "\[IndentingNewLine]", 
  "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{"pickIndex", "[", 
     RowBox[{"i_", ",", "j_"}], "]"}], ":=", "\[IndentingNewLine]", 
    RowBox[{"Which", "[", 
     RowBox[{
      RowBox[{"i", "\[Equal]", "1"}], ",", "\[IndentingNewLine]", 
      RowBox[{"Which", "[", 
       RowBox[{
        RowBox[{"j", "\[Equal]", "1"}], ",", " ", "0", " ", 
        RowBox[{"(*", " ", 
         RowBox[{"<", 
          RowBox[{
           RowBox[{"-", " ", "default"}], " ", "value", " ", "for", " ", 
           SubscriptBox["h", "1"]}]}], " ", "*)"}], ",", 
        RowBox[{"j", "\[Equal]", "2"}], ",", 
        RowBox[{"(*", " ", 
         RowBox[{
          SubscriptBox["k", "1"], " ", "="}], " ", "*)"}], " ", "0", ",", 
        RowBox[{"j", "\[Equal]", "3"}], ",", 
        RowBox[{"(*", " ", 
         RowBox[{
          SubscriptBox["l", "1"], " ", "="}], " ", "*)"}], "  ", "1", ",", 
        "True", ",", "1"}], "]"}], ",", "\[IndentingNewLine]", 
      RowBox[{"i", "\[Equal]", "2"}], ",", "\[IndentingNewLine]", 
      RowBox[{"Which", "[", 
       RowBox[{
        RowBox[{"j", "\[Equal]", "1"}], ",", " ", 
        RowBox[{"(*", " ", 
         RowBox[{
          SubscriptBox["h", "2"], " ", "="}], " ", "*)"}], " ", "1", ",", 
        RowBox[{"j", "\[Equal]", "2"}], ",", " ", "1", ",", 
        RowBox[{"j", "\[Equal]", "3"}], ",", " ", "1", ",", "True", ",", 
        "1"}], "]"}], ",", "\[IndentingNewLine]", 
      RowBox[{"i", "\[Equal]", "3"}], ",", "\[IndentingNewLine]", 
      RowBox[{"Which", "[", 
       RowBox[{
        RowBox[{"j", "\[Equal]", "1"}], ",", " ", "1", ",", 
        RowBox[{"j", "\[Equal]", "2"}], ",", " ", "1", ",", 
        RowBox[{"j", "\[Equal]", "3"}], ",", " ", "0", ",", "True", ",", 
        "1"}], "]"}], ",", "\[IndentingNewLine]", "True", ",", " ", 
      "\[IndentingNewLine]", 
      RowBox[{"RandomInteger", "[", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"-", "3"}], ",", "3"}], "}"}], "]"}]}], "]"}]}], 
   "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{"(*", " ", 
    RowBox[{
    "modify", " ", "the", " ", "default", " ", "display", " ", "colors", " ", 
     "with", " ", "pickColor"}], " ", "*)"}], "\[IndentingNewLine]", 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"pickColor", "[", "i_", "]"}], ":=", "\[IndentingNewLine]", 
    RowBox[{"Which", "[", 
     RowBox[{
      RowBox[{"i", "\[Equal]", "1"}], ",", "\[IndentingNewLine]", 
      RowBox[{"Darker", "@", "Magenta"}], ",", "\[IndentingNewLine]", 
      RowBox[{"i", "\[Equal]", "2"}], ",", "\[IndentingNewLine]", 
      RowBox[{"Darker", "@", "Cyan"}], ",", "\[IndentingNewLine]", 
      RowBox[{"i", "\[Equal]", "3"}], ",", "\[IndentingNewLine]", 
      RowBox[{"Darker", "@", "Yellow"}], ",", "\[IndentingNewLine]", "True", 
      ",", "\[IndentingNewLine]", 
      RowBox[{"Hue", "[", 
       RowBox[{
        RowBox[{"RandomReal", "[", "]"}], ",", "1", ",", 
        RowBox[{"2", "/", "3"}]}], "]"}]}], "]"}]}], "\[IndentingNewLine]", 
   "\[IndentingNewLine]", 
   RowBox[{"(*", " ", 
    RowBox[{
    "modify", " ", "the", " ", "default", " ", "surface", " ", "energy", " ", 
     "values", " ", "with", " ", "pickGamma"}], " ", "*)"}], 
   "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"pickGamma", "[", "i_", "]"}], " ", ":=", "\[IndentingNewLine]", 
    RowBox[{"Which", "[", 
     RowBox[{
      RowBox[{"i", " ", "\[Equal]", " ", "1"}], ",", "\[IndentingNewLine]", 
      "1", ",", " ", "\[IndentingNewLine]", 
      RowBox[{"i", " ", "\[Equal]", " ", "2"}], ",", "\[IndentingNewLine]", 
      "1", ",", "\[IndentingNewLine]", 
      RowBox[{"i", " ", "\[Equal]", " ", "3"}], ",", "\[IndentingNewLine]", 
      "1", ",", "\[IndentingNewLine]", "True", ",", "\[IndentingNewLine]", 
      "1"}], "]"}]}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{"(*", 
    RowBox[{
     RowBox[{"modify", " ", "the", " ", "deafult", " ", "symmetry"}], ",", 
     " ", "n", ",", " ", "opacity", ",", " ", 
     RowBox[{
     "whether", " ", "to", " ", "show", " ", "crystallographic", " ", 
      "axes"}], ",", " ", 
     RowBox[{"the", " ", "zone", " ", "axis"}], ",", " ", 
     RowBox[{"and", " ", "the", " ", "vertical", " ", "direction"}]}], " ", 
    "*)"}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"defaultLattice", " ", "=", " ", "\"\<Cubic\>\""}], ";"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
    "defaultPointGroup", " ", "=", " ", 
     "\"\<m\!\(\*OverscriptBox[\(3\), \(_\)]\)m\>\""}], ";"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"defaultn", " ", "=", " ", "3"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"defaultOpacity", " ", "=", " ", "0.85"}], ";"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"defaultShowAxes", " ", "=", " ", "True"}], ";"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"defaultZA", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{"5", ",", "1", ",", " ", "1"}], "}"}]}], ";"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"defaultVert", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}]}], ";"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"defaultSens", " ", "=", " ", "18"}], ";"}], 
   "\[IndentingNewLine]"}]}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.541759304729084*^9, 3.541759782895699*^9}, {
   3.5417602453203077`*^9, 3.5417602457220573`*^9}, {3.543744184473143*^9, 
   3.5437442104807673`*^9}, {3.5463597984760723`*^9, 3.546359806604787*^9}, {
   3.5472155934945507`*^9, 3.547215613390933*^9}, {3.547216641765665*^9, 
   3.547216664350789*^9}, 3.547216838999878*^9, {3.547217040792111*^9, 
   3.5472170446629753`*^9}, {3.549638657185149*^9, 3.5496386853823013`*^9}, {
   3.5510963526177073`*^9, 3.551096353819594*^9}, {3.5510966202033033`*^9, 
   3.55109663812564*^9}, {3.55109965588065*^9, 3.551099701128407*^9}, {
   3.551104412518239*^9, 3.551104446723611*^9}, {3.551104557609976*^9, 
   3.551104558528638*^9}, {3.5511045891765223`*^9, 3.551104589990754*^9}, {
   3.551105255967553*^9, 3.5511052569925337`*^9}, {3.551111210995578*^9, 
   3.5511112154742107`*^9}, {3.551111285161564*^9, 3.551111345882094*^9}, {
   3.604758377152733*^9, 3.6047583867216797`*^9}}],

Cell[BoxData[
 RowBox[{
  StyleBox[
   RowBox[{"(*", " ", 
    RowBox[{
    "this", " ", "cell", " ", "contols", " ", "the", " ", "space", " ", "and",
      " ", "point", " ", 
     RowBox[{"symmetries", ".", " ", "It"}], " ", "also", " ", "determines", 
     " ", "what", " ", "is", " ", "displayed", " ", "in", " ", "The", " ", 
     "Wulffenator", " ", 
     RowBox[{"GUI", "."}]}], " ", "*)"}],
   FontSize->16], 
  StyleBox["\[IndentingNewLine]",
   FontSize->16], 
  StyleBox[" ",
   FontSize->16], "\[IndentingNewLine]", 
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{
     RowBox[{
     "this", " ", "is", " ", "a", " ", "list", " ", "of", " ", "the", " ", 
      "minimum", " ", "symmetry", " ", "operations", " ", "required", " ", 
      "to", " ", "define", " ", "the", " ", "32", " ", "crystallographic", 
      " ", "point", " ", 
      RowBox[{"groups", ".", " ", "you"}], " ", "may", " ", "add", " ", 
      "symmetries", " ", "here", " ", "if", " ", "you", " ", "want", " ", 
      "non"}], "-", 
     RowBox[{"crystallographic", " ", "ones"}]}], ",", " ", 
    RowBox[{
    "just", " ", "specify", " ", "it", " ", "as", " ", "the", " ", "minimal", 
     " ", "list", " ", "of", " ", "symmetry", " ", "operations"}], ",", " ", 
    RowBox[{"written", " ", "as", " ", "a", " ", "3", "x3", " ", 
     RowBox[{"matrix", "."}]}]}], " ", "*)"}], "\[IndentingNewLine]", 
  "\[IndentingNewLine]", 
  RowBox[{
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
   "\[IndentingNewLine]", 
   RowBox[{"(*", " ", 
    RowBox[{
     RowBox[{
     "these", " ", "are", " ", "the", " ", "space", " ", "group", " ", 
      "options", " ", "displayed", " ", "in", " ", "the", " ", "gui"}], " ", 
     "-", " ", 
     RowBox[{"add", " ", "yours", " ", "here", " ", "if", " ", 
      RowBox[{"you", "'"}], "ve", " ", "added", " ", "any", " ", 
      "symmetries"}]}], " ", "*)"}], "\[IndentingNewLine]", 
   "\[IndentingNewLine]", 
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
     RowBox[{
     "these", " ", "link", " ", "the", " ", "text", " ", "symbol", " ", "for",
       " ", "a", " ", "space", " ", "group", " ", "to", " ", "the", " ", 
      "symmetry", " ", "operations"}], ",", " ", 
     RowBox[{
     "create", " ", "an", " ", "equivalent", " ", "list", " ", "if", " ", 
      RowBox[{"you", "'"}], "ve", " ", "added", " ", "symmetries"}]}], " ", 
    "*)"}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
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
   RowBox[{
    RowBox[{"atext", "=", " ", 
     RowBox[{"Text", "[", 
      RowBox[{"Style", "[", 
       RowBox[{"\"\<a\>\"", ",", "16"}], "]"}], "]"}]}], ";"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"btext", "=", " ", 
     RowBox[{"Text", "[", 
      RowBox[{"Style", "[", 
       RowBox[{"\"\<b\>\"", ",", "16"}], "]"}], "]"}]}], ";"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"ctext", "=", " ", 
     RowBox[{"Text", "[", 
      RowBox[{"Style", "[", 
       RowBox[{"\"\<c\>\"", ",", "16"}], "]"}], "]"}]}], ";"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"\[Alpha]text", "=", " ", 
     RowBox[{"Text", "[", 
      RowBox[{"Style", "[", 
       RowBox[{"\"\<\[Alpha]\>\"", ",", "16"}], "]"}], "]"}]}], ";"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"\[Beta]text", "=", " ", 
     RowBox[{"Text", "[", 
      RowBox[{"Style", "[", 
       RowBox[{"\"\<\[Beta]\>\"", ",", "16"}], "]"}], "]"}]}], ";"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"\[Gamma]text", "=", " ", 
     RowBox[{"Text", "[", 
      RowBox[{"Style", "[", 
       RowBox[{"\"\<\[Gamma]\>\"", ",", "16"}], "]"}], "]"}]}], ";"}], 
   "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{"(*", " ", 
    RowBox[{
     RowBox[{
     "these", " ", "determine", " ", "what", " ", "space", " ", "group", " ", 
      "parameters", " ", "are", " ", "displayed", " ", "in", " ", "the", " ", 
      
      RowBox[{"gui", ".", " ", "Again"}]}], ",", " ", 
     RowBox[{"if", " ", "you", " ", "add", " ", "symmetries"}], ",", " ", 
     RowBox[{"add", " ", "to", " ", "these", " ", "items"}]}], " ", "*)"}], 
   "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"tricliniccontrols", "[", "symmetry_", "]"}], " ", ":=", "  ", 
     RowBox[{"Sequence", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"a", ",", " ", "1", ",", "atext"}], "}"}], ",", 
         RowBox[{"ControlPlacement", "\[Rule]", " ", "Right"}]}], "}"}], ",", 
       
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"b", ",", " ", "1", ",", "btext"}], "}"}], ",", " ", 
         RowBox[{"ControlPlacement", "\[Rule]", " ", "Right"}]}], "}"}], ",", 
       
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"c", ",", " ", "1", ",", "ctext"}], "}"}], ",", " ", 
         RowBox[{"ControlPlacement", "\[Rule]", " ", "Right"}]}], "}"}], ",", 
       " ", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"\[Alpha]", ",", " ", "90", ",", "\[Alpha]text"}], "}"}], 
         ",", " ", 
         RowBox[{"ControlPlacement", "\[Rule]", " ", "Right"}]}], "}"}], ",", 
       " ", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"\[Beta]", ",", " ", "90", ",", "\[Beta]text"}], "}"}], ",",
          " ", 
         RowBox[{"ControlPlacement", "\[Rule]", " ", "Right"}]}], "}"}], ",", 
       
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"\[Gamma]", ",", " ", "90", ",", "\[Gamma]text"}], "}"}], 
         ",", " ", 
         RowBox[{"ControlPlacement", "\[Rule]", " ", "Right"}]}], "}"}]}], 
      "]"}]}], ";"}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"triclinicconstants", "[", "symmetry_", "]"}], " ", ":=", " ", 
    RowBox[{"{", 
     RowBox[{
     "a", ",", " ", "b", ",", " ", "c", ",", " ", "\[Alpha]", ",", " ", 
      "\[Beta]", ",", " ", "\[Gamma]"}], "}"}]}], "\[IndentingNewLine]", 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"monocliniccontrols", "[", "symmetry_", "]"}], " ", ":=", "  ", 
     RowBox[{"Sequence", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"a", ",", " ", "1", ",", "atext"}], "}"}], ",", 
         RowBox[{"ControlPlacement", "\[Rule]", " ", "Right"}]}], "}"}], ",", 
       
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"b", ",", " ", "1", ",", "btext"}], "}"}], ",", " ", 
         RowBox[{"ControlPlacement", "\[Rule]", " ", "Right"}]}], "}"}], ",", 
       
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"c", ",", " ", "1", ",", "ctext"}], "}"}], ",", " ", 
         RowBox[{"ControlPlacement", "\[Rule]", " ", "Right"}]}], "}"}], ",", 
       
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"\[Beta]", ",", " ", "90", ",", "\[Beta]text"}], "}"}], ",",
          " ", 
         RowBox[{"ControlPlacement", "\[Rule]", " ", "Right"}]}], "}"}]}], 
      "]"}]}], ";"}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"monoclinicconstants", "[", "symmetry_", "]"}], " ", ":=", " ", 
    RowBox[{"{", 
     RowBox[{
     "a", ",", " ", "b", ",", " ", "c", ",", " ", "90", ",", " ", "\[Beta]", 
      ",", " ", "90"}], "}"}]}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"orthorhombiccontrols", "[", "symmetry_", "]"}], " ", ":=", "  ", 
     RowBox[{"Sequence", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"a", ",", " ", "1", ",", "atext"}], "}"}], ",", 
         RowBox[{"ControlPlacement", "\[Rule]", " ", "Right"}]}], "}"}], ",", 
       
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"b", ",", " ", "1", ",", "btext"}], "}"}], ",", " ", 
         RowBox[{"ControlPlacement", "\[Rule]", " ", "Right"}]}], "}"}], ",", 
       
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"c", ",", " ", "1", ",", "ctext"}], "}"}], ",", " ", 
         RowBox[{"ControlPlacement", "\[Rule]", " ", "Right"}]}], "}"}]}], 
      "]"}]}], ";"}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"orthorhombicconstants", "[", "symmetry_", "]"}], " ", ":=", " ", 
    
    RowBox[{"{", 
     RowBox[{
     "a", ",", " ", "b", ",", " ", "c", ",", " ", "90", ",", " ", "90", ",", 
      " ", "90"}], "}"}]}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"tetragonalcontrols", "[", "symmetry_", "]"}], " ", ":=", "  ", 
     RowBox[{"Sequence", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"a", ",", " ", "1", ",", "atext"}], "}"}], ",", 
         RowBox[{"ControlPlacement", "\[Rule]", " ", "Right"}]}], "}"}], ",", 
       
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"c", ",", " ", "1", ",", "ctext"}], "}"}], ",", " ", 
         RowBox[{"ControlPlacement", "\[Rule]", " ", "Right"}]}], "}"}]}], 
      "]"}]}], ";"}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"tetragonalconstants", "[", "symmetry_", "]"}], " ", ":=", " ", 
    RowBox[{"{", 
     RowBox[{
     "a", ",", " ", "a", ",", " ", "c", ",", " ", "90", ",", "90", ",", " ", 
      "90"}], "}"}]}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"hexagonalcontrols", "[", "symmetry_", "]"}], " ", ":=", "  ", 
     RowBox[{"Sequence", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"a", ",", " ", "1", ",", "atext"}], "}"}], ",", 
         RowBox[{"ControlPlacement", "\[Rule]", " ", "Right"}]}], "}"}], ",", 
       " ", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"c", ",", " ", "1", ",", "ctext"}], "}"}], ",", " ", 
         RowBox[{"ControlPlacement", "\[Rule]", " ", "Right"}]}], "}"}]}], 
      "]"}]}], ";"}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"hexagonalconstants", "[", "symmetry_", "]"}], " ", ":=", " ", 
    RowBox[{"{", 
     RowBox[{
     "a", ",", " ", "a", ",", " ", "c", ",", " ", "90", ",", " ", "90", ",", 
      " ", "120"}], "}"}]}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"cubiccontrols", "[", "symmetry_", "]"}], " ", ":=", "  ", 
     RowBox[{"Sequence", "[", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"a", ",", " ", "1", ",", "atext"}], "}"}], ",", 
        RowBox[{"ControlPlacement", "\[Rule]", " ", "Right"}]}], "}"}], 
      "]"}]}], ";"}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"cubicconstants", "[", "symmetry_", "]"}], " ", ":=", " ", 
    RowBox[{"{", 
     RowBox[{
     "a", ",", " ", "a", ",", " ", "a", ",", " ", "90", ",", " ", "90", ",", 
      " ", "90"}], "}"}]}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"whichcontrols", "[", "sym_", "]"}], " ", ":=", " ", 
    RowBox[{"If", "[", 
     RowBox[{
      RowBox[{"StringMatchQ", "[", 
       RowBox[{"\"\<Hexagonal\>\"", ",", " ", "sym"}], "]"}], ",", " ", 
      RowBox[{"hexagonalcontrols", "[", "sym", "]"}], ",", " ", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"StringMatchQ", "[", 
         RowBox[{"\"\<Cubic\>\"", ",", " ", "sym"}], "]"}], ",", " ", 
        RowBox[{"cubiccontrols", "[", "sym", "]"}], ",", " ", 
        RowBox[{"If", "[", 
         RowBox[{
          RowBox[{"StringMatchQ", "[", 
           RowBox[{"\"\<Tetragonal\>\"", ",", " ", "sym"}], "]"}], ",", " ", 
          RowBox[{"tetragonalcontrols", "[", "sym", "]"}], ",", " ", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{"StringMatchQ", "[", 
             RowBox[{"\"\<Orthorhombic\>\"", ",", " ", "sym"}], "]"}], ",", 
            " ", 
            RowBox[{"orthorhombiccontrols", "[", "sym", "]"}], ",", " ", 
            RowBox[{"If", "[", 
             RowBox[{
              RowBox[{"StringMatchQ", "[", 
               RowBox[{"\"\<Monoclinic\>\"", ",", " ", "sym"}], "]"}], ",", 
              " ", 
              RowBox[{"monocliniccontrols", "[", "sym", "]"}], ",", " ", 
              RowBox[{"tricliniccontrols", "[", "sym", "]"}]}], "]"}]}], 
           "]"}]}], "]"}]}], "]"}]}], "]"}]}], "\[IndentingNewLine]", 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"geomgen", "[", "sym_", "]"}], " ", ":=", "  ", 
    RowBox[{"If", "[", 
     RowBox[{
      RowBox[{"StringMatchQ", "[", 
       RowBox[{"\"\<Hexagonal\>\"", ",", " ", "sym"}], "]"}], ",", " ", 
      RowBox[{"hexagonalconstants", "[", "sym", "]"}], ",", " ", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"StringMatchQ", "[", 
         RowBox[{"\"\<Cubic\>\"", ",", " ", "sym"}], "]"}], ",", " ", 
        RowBox[{"cubicconstants", "[", "sym", "]"}], ",", " ", 
        RowBox[{"If", "[", 
         RowBox[{
          RowBox[{"StringMatchQ", "[", 
           RowBox[{"\"\<Tetragonal\>\"", ",", " ", "sym"}], "]"}], ",", " ", 
          RowBox[{"tetragonalconstants", "[", "sym", "]"}], ",", " ", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{"StringMatchQ", "[", 
             RowBox[{"\"\<Orthorhombic\>\"", ",", " ", "sym"}], "]"}], ",", 
            " ", 
            RowBox[{"orthorhombicconstants", "[", "sym", "]"}], ",", " ", 
            RowBox[{"If", "[", 
             RowBox[{
              RowBox[{"StringMatchQ", "[", 
               RowBox[{"\"\<Monoclinic\>\"", ",", " ", "sym"}], "]"}], ",", 
              " ", 
              RowBox[{"monoclinicconstants", "[", "sym", "]"}], ",", " ", 
              RowBox[{"triclinicconstants", "[", "sym", "]"}]}], "]"}]}], 
           "]"}]}], "]"}]}], "]"}]}], "]"}]}], "\[IndentingNewLine]", 
   "\[IndentingNewLine]", 
   RowBox[{"(*", " ", 
    RowBox[{"display", " ", "settings"}], " ", "*)"}], "\[IndentingNewLine]", 
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
    "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{"(*", " ", 
    RowBox[{
     RowBox[{
     "everything", " ", "below", " ", "here", " ", "applies", " ", "to", " ", 
      "the", " ", "wulff", " ", "shape", " ", "calculation"}], ",", " ", 
     RowBox[{"not", " ", "the", " ", "display"}]}], " ", "*)"}], 
   "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{"(*", " ", 
    RowBox[{
    "these", " ", "functions", " ", "expedite", " ", "the", " ", "wulff", " ",
      "shape", " ", 
     RowBox[{"calculation", ":", " ", 
      RowBox[{
      "the", " ", "first", " ", "tests", " ", "whether", " ", "a", " ", 
       "particular", " ", "vector", " ", "is", " ", "excluded", " ", "from", 
       " ", "the", " ", "wulff", " ", "shape", " ", "by", " ", "another", " ", 
       RowBox[{"vector", ".", " ", "The"}], " ", "second", " ", "finds", " ", 
       "the", " ", "nearest", " ", "neighboring", " ", "facets", " ", "to", 
       " ", "a", " ", "given", " ", 
       RowBox[{"facet", ".", " ", "The"}], " ", "last", " ", "finds", " ", 
       "the", " ", "intersection", " ", "point", " ", "of", " ", "3", " ", 
       RowBox[{"planes", "."}]}]}]}], " ", "*)"}], "\[IndentingNewLine]", 
   "\[IndentingNewLine]", 
   RowBox[{
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
        "\[IndentingNewLine]", " ", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{"1", " ", "+", " ", 
           SuperscriptBox["10", 
            RowBox[{"-", "10."}]]}], ")"}], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            RowBox[{"baseV", "[", 
             RowBox[{"[", "1", "]"}], "]"}], "^", "2"}], " ", "+", "  ", 
           RowBox[{
            RowBox[{"baseV", "[", 
             RowBox[{"[", "2", "]"}], "]"}], "^", "2"}], " ", "+", "  ", 
           RowBox[{
            RowBox[{"baseV", "[", 
             RowBox[{"[", "3", "]"}], "]"}], "^", "2"}]}], ")"}]}]}]}], " ", 
      "]"}]}], ";"}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"neighborQ", "[", 
      RowBox[{"id_", ",", " ", "glist_", ",", " ", "sensitivity_"}], "]"}], 
     " ", ":=", " ", 
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
                 RowBox[{"id", ",", " ", "1"}], "]"}], "]"}], "]"}]}], ",", 
             " ", "i"}], "}"}], ",", " ", 
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
              RowBox[{"sensitivity", ",", " ", 
               RowBox[{"Length", "[", "glist", "]"}]}], "]"}]}], "}"}]}], 
          "]"}]}], ";", "\[IndentingNewLine]", 
        RowBox[{"fin", " ", "=", " ", 
         RowBox[{"Select", "[", 
          RowBox[{"neighbors", ",", " ", 
           RowBox[{
            RowBox[{"!", 
             RowBox[{"SameQ", "[", 
              RowBox[{"#", ",", " ", "id"}], "]"}]}], " ", "&"}]}], 
          "]"}]}]}]}], "\[IndentingNewLine]", "]"}]}], ";"}], 
   "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{"Clear", "[", "findvert", "]"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"findvert", " ", "=", 
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
             "c", "\[LeftDoubleBracket]", "3", 
              "\[RightDoubleBracket]"}]}]}]}], "}"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"If", "[", 
          RowBox[{
           RowBox[{
            RowBox[{"Abs", "[", "denom", "]"}], " ", "<", " ", 
            ".000000000001"}], ",", " ", 
           RowBox[{"{", 
            RowBox[{"1000000.0", ",", "1000000.", ",", "1000000."}], "}"}], 
           ",", " ", "\[IndentingNewLine]", 
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
                 "c", "\[LeftDoubleBracket]", "2", 
                  "\[RightDoubleBracket]"}]}], "-", 
                RowBox[{
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                 " ", 
                 SuperscriptBox[
                  RowBox[{
                  "b", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "2", 
                  "\[RightDoubleBracket]"}]}], "+", 
                RowBox[{
                 SuperscriptBox[
                  RowBox[{
                  "a", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                 " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "2", 
                  "\[RightDoubleBracket]"}]}], "+", 
                RowBox[{
                 SuperscriptBox[
                  RowBox[{
                  "a", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                 " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "2", 
                  "\[RightDoubleBracket]"}]}], "+", 
                RowBox[{
                 SuperscriptBox[
                  RowBox[{
                  "a", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                 " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "2", 
                  "\[RightDoubleBracket]"}]}], "-", 
                RowBox[{
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                 " ", 
                 SuperscriptBox[
                  RowBox[{
                  "b", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "2", 
                  "\[RightDoubleBracket]"}]}], "+", 
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
                 "c", "\[LeftDoubleBracket]", "3", 
                  "\[RightDoubleBracket]"}]}], "-", 
                RowBox[{
                 SuperscriptBox[
                  RowBox[{
                  "a", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                 " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "3", 
                  "\[RightDoubleBracket]"}]}], "-", 
                RowBox[{
                 SuperscriptBox[
                  RowBox[{
                  "a", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                 " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "3", 
                  "\[RightDoubleBracket]"}]}], "-", 
                RowBox[{
                 SuperscriptBox[
                  RowBox[{
                  "a", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                 " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "3", 
                  "\[RightDoubleBracket]"}]}], "+", 
                RowBox[{
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                 " ", 
                 SuperscriptBox[
                  RowBox[{
                  "b", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "3", 
                  "\[RightDoubleBracket]"}]}], "+", 
                RowBox[{
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                 " ", 
                 SuperscriptBox[
                  RowBox[{
                  "b", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "3", 
                  "\[RightDoubleBracket]"}]}], "+", 
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
                   "2"]}]}], ")"}], "/", "denom"}], ",", 
             "\[IndentingNewLine]", 
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
                 "c", "\[LeftDoubleBracket]", "1", 
                  "\[RightDoubleBracket]"}]}], "+", 
                RowBox[{
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                 " ", 
                 SuperscriptBox[
                  RowBox[{
                  "b", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "1", 
                  "\[RightDoubleBracket]"}]}], "-", 
                RowBox[{
                 SuperscriptBox[
                  RowBox[{
                  "a", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                 " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "1", 
                  "\[RightDoubleBracket]"}]}], "-", 
                RowBox[{
                 SuperscriptBox[
                  RowBox[{
                  "a", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                 " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "1", 
                  "\[RightDoubleBracket]"}]}], "-", 
                RowBox[{
                 SuperscriptBox[
                  RowBox[{
                  "a", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                 " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "1", 
                  "\[RightDoubleBracket]"}]}], "+", 
                RowBox[{
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], 
                 " ", 
                 SuperscriptBox[
                  RowBox[{
                  "b", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "1", 
                  "\[RightDoubleBracket]"}]}], "-", 
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
                 "c", "\[LeftDoubleBracket]", "3", 
                  "\[RightDoubleBracket]"}]}], "+", 
                RowBox[{
                 SuperscriptBox[
                  RowBox[{
                  "a", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                 " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "3", 
                  "\[RightDoubleBracket]"}]}], "+", 
                RowBox[{
                 SuperscriptBox[
                  RowBox[{
                  "a", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                 " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "3", 
                  "\[RightDoubleBracket]"}]}], "-", 
                RowBox[{
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                 " ", 
                 SuperscriptBox[
                  RowBox[{
                  "b", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "3", 
                  "\[RightDoubleBracket]"}]}], "-", 
                RowBox[{
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                 " ", 
                 SuperscriptBox[
                  RowBox[{
                  "b", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "3", 
                  "\[RightDoubleBracket]"}]}], "-", 
                RowBox[{
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                 " ", 
                 SuperscriptBox[
                  RowBox[{
                  "b", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "3", 
                  "\[RightDoubleBracket]"}]}], "-", 
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
                   "2"]}]}], ")"}], "/", "denom"}], ",", 
             "\[IndentingNewLine]", 
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
                 "c", "\[LeftDoubleBracket]", "1", 
                  "\[RightDoubleBracket]"}]}], "+", 
                RowBox[{
                 SuperscriptBox[
                  RowBox[{
                  "a", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                 " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "1", 
                  "\[RightDoubleBracket]"}]}], "+", 
                RowBox[{
                 SuperscriptBox[
                  RowBox[{
                  "a", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                 " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "1", 
                  "\[RightDoubleBracket]"}]}], "+", 
                RowBox[{
                 SuperscriptBox[
                  RowBox[{
                  "a", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                 " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "1", 
                  "\[RightDoubleBracket]"}]}], "-", 
                RowBox[{
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                 " ", 
                 SuperscriptBox[
                  RowBox[{
                  "b", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "1", 
                  "\[RightDoubleBracket]"}]}], "-", 
                RowBox[{
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
                 " ", 
                 SuperscriptBox[
                  RowBox[{
                  "b", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "1", 
                  "\[RightDoubleBracket]"}]}], "+", 
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
                 "c", "\[LeftDoubleBracket]", "2", 
                  "\[RightDoubleBracket]"}]}], "-", 
                RowBox[{
                 SuperscriptBox[
                  RowBox[{
                  "a", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                 " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "2", 
                  "\[RightDoubleBracket]"}]}], "-", 
                RowBox[{
                 SuperscriptBox[
                  RowBox[{
                  "a", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "b", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                 " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "2", 
                  "\[RightDoubleBracket]"}]}], "+", 
                RowBox[{
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                 " ", 
                 SuperscriptBox[
                  RowBox[{
                  "b", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "2", 
                  "\[RightDoubleBracket]"}]}], "+", 
                RowBox[{
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                 " ", 
                 SuperscriptBox[
                  RowBox[{
                  "b", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "2", 
                  "\[RightDoubleBracket]"}]}], "+", 
                RowBox[{
                 RowBox[{
                 "a", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
                 " ", 
                 SuperscriptBox[
                  RowBox[{
                  "b", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}],
                   "2"], " ", 
                 RowBox[{
                 "c", "\[LeftDoubleBracket]", "2", 
                  "\[RightDoubleBracket]"}]}], "+", 
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
            "}"}]}], "]"}]}], "\[IndentingNewLine]", "]"}]}], 
      "\[IndentingNewLine]", "]"}]}], ";"}], "\[IndentingNewLine]", 
   "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{
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
                    RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], "2"], " ", 
                 "+", " ", 
                 SuperscriptBox[
                  RowBox[{"trianglify", "[", 
                   RowBox[{"[", 
                    RowBox[{"i", ",", " ", "2"}], "]"}], "]"}], "2"], " ", 
                 "+", " ", 
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
                    RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], "4"], " ", 
                 "+", " ", 
                 SuperscriptBox[
                  RowBox[{"trianglify", "[", 
                   RowBox[{"[", 
                    RowBox[{"i", ",", " ", "2"}], "]"}], "]"}], "4"], " ", 
                 "+", " ", 
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
        "\[IndentingNewLine]", "totalarea"}]}], "\[IndentingNewLine]", 
      "]"}]}], ";"}], "\[IndentingNewLine]", 
   "\[IndentingNewLine]"}]}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.518971935417313*^9, 3.518971964294887*^9}, {
   3.518972026388856*^9, 3.518972296793899*^9}, 3.54175632203125*^9, {
   3.541758948171887*^9, 3.5417589915069723`*^9}, {3.541759288686508*^9, 
   3.541759299162407*^9}, {3.541759654196686*^9, 3.541759655698884*^9}, {
   3.5417597898719063`*^9, 3.5417598083257513`*^9}, {3.5466243282041187`*^9, 
   3.546624338720175*^9}, {3.546624387964138*^9, 3.546624426866848*^9}, 
   3.5466244650778427`*^9, {3.5472156303374367`*^9, 3.5472156522368927`*^9}, {
   3.5472167775972853`*^9, 3.5472168001104794`*^9}, {3.547216863567585*^9, 
   3.54721689563745*^9}, {3.5484942182691717`*^9, 3.54849422727039*^9}, {
   3.5496387135202627`*^9, 3.549638945143894*^9}, {3.549639018691341*^9, 
   3.54963903557061*^9}, {3.551096367014593*^9, 3.5510964417040653`*^9}, {
   3.5510987553866873`*^9, 3.551098788907921*^9}, {3.5510993273595753`*^9, 
   3.5510993373478622`*^9}, {3.551099388368581*^9, 3.551099390867062*^9}, {
   3.551099421461557*^9, 3.551099458129919*^9}, {3.55109949079035*^9, 
   3.551099519272791*^9}, {3.552961968515427*^9, 3.552961972840105*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
   "this", " ", "calculates", " ", "the", " ", "Wulff", " ", "shape"}], " ", 
   "*)"}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{"wulffmakerWulff", "[", 
     RowBox[{"argument_", ",", " ", 
      RowBox[{"opacity_:", "1"}], ",", " ", 
      RowBox[{"showAxes_:", "True"}], ",", " ", "vpr_", ",", " ", "vvr_", ",",
       " ", "sensitiv_"}], "]"}], " ", ":=", " ", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
       "norms", ",", " ", "ds", ",", " ", "colors", ",", " ", "symstring", 
        ",", " ", "geometry", ",", " ", "sym", ",", " ", "geometr", ",", " ", 
        "aa", ",", " ", "bb", ",", " ", "cc", ",", " ", "\[Alpha]\[Alpha]", 
        ",", " ", "\[Beta]\[Beta]", ",", " ", "\[Gamma]\[Gamma]", ",", " ", 
        "avect", ",", " ", "bvect", ",", " ", "cvect", ",", " ", "cartesian1",
         ",", " ", "points", ",", " ", "normsxyz", ",", " ", "symop", ",", 
        " ", "dmult", ",", " ", "colz", ",", " ", "gams", ",", " ", 
        "eliminatedQ", ",", " ", "survivingGroups", ",", " ", "newColors", 
        ",", " ", "newGsPre", ",", " ", "newGs", ",", " ", "neighbors", ",", 
        " ", "verts", ",", " ", "verts2", ",", " ", "vertTest", ",", " ", 
        "degs", ",", " ", "axes", ",", " ", "rotMats", ",", " ", 
        "rotatedVerts", ",", " ", "sortedVerts", ",", "vertsfin", ",", " ", 
        "onePerFamily", ",", " ", "areas", ",", " ", "totvol", ",", " ", 
        "wulffshape", ",", " ", "withaxes"}], "}"}], ",", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"(*", " ", "definitions", " ", "*)"}], "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"norms", " ", "=", " ", 
        RowBox[{"Table", "[", 
         RowBox[{
          RowBox[{"Normalize", "[", 
           RowBox[{"argument", "[", 
            RowBox[{"[", 
             RowBox[{"1", ",", " ", "i"}], "]"}], "]"}], "]"}], ",", " ", 
          RowBox[{"{", 
           RowBox[{"i", ",", " ", 
            RowBox[{"Length", "[", 
             RowBox[{"argument", "[", 
              RowBox[{"[", "1", "]"}], "]"}], "]"}]}], "}"}]}], "]"}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"ds", " ", "=", " ", 
        RowBox[{"argument", "[", 
         RowBox[{"[", "2", "]"}], "]"}]}], ";", "\[IndentingNewLine]", 
       RowBox[{"colors", " ", "=", " ", 
        RowBox[{"argument", "[", 
         RowBox[{"[", "3", "]"}], "]"}]}], ";", "\[IndentingNewLine]", 
       RowBox[{"symstring", " ", "=", " ", 
        RowBox[{"argument", "[", 
         RowBox[{"[", "4", "]"}], "]"}]}], ";", "\[IndentingNewLine]", 
       RowBox[{"geometry", " ", "=", " ", 
        RowBox[{"argument", "[", 
         RowBox[{"[", "5", "]"}], "]"}]}], ";", "\[IndentingNewLine]", 
       RowBox[{"sym", " ", "=", " ", 
        RowBox[{"symmetryMatrices", "[", "symstring", "]"}]}], ";", 
       "\[IndentingNewLine]", "\[IndentingNewLine]", 
       RowBox[{"(*", " ", 
        RowBox[{
        "converting", " ", "the", " ", "inputs", " ", "from", " ", 
         "crystallographic", " ", "hkl", " ", "planes", " ", "to", " ", 
         "cartesian", " ", "xyz", " ", "plane", " ", "normals"}], " ", "*)"}],
        "\[IndentingNewLine]", 
       RowBox[{"aa", " ", "=", " ", 
        RowBox[{"geometry", "[", 
         RowBox[{"[", "1", "]"}], "]"}]}], ";", "\[IndentingNewLine]", 
       RowBox[{"bb", " ", "=", " ", 
        RowBox[{"geometry", "[", 
         RowBox[{"[", "2", "]"}], "]"}]}], ";", "\[IndentingNewLine]", 
       RowBox[{"cc", " ", "=", " ", 
        RowBox[{"geometry", "[", 
         RowBox[{"[", "3", "]"}], "]"}]}], ";", "\[IndentingNewLine]", 
       RowBox[{"\[Alpha]\[Alpha]", " ", "=", " ", 
        RowBox[{
         RowBox[{"geometry", "[", 
          RowBox[{"[", "4", "]"}], "]"}], " ", 
         RowBox[{"Pi", "/", "180"}]}]}], ";", "\[IndentingNewLine]", 
       RowBox[{"\[Beta]\[Beta]", " ", "=", " ", 
        RowBox[{
         RowBox[{"geometry", "[", 
          RowBox[{"[", "5", "]"}], "]"}], " ", 
         RowBox[{"Pi", "/", "180"}]}]}], ";", "\[IndentingNewLine]", 
       RowBox[{"\[Gamma]\[Gamma]", " ", "=", " ", 
        RowBox[{
         RowBox[{"geometry", "[", 
          RowBox[{"[", "6", "]"}], "]"}], " ", 
         RowBox[{"Pi", "/", "180"}]}]}], ";", "\[IndentingNewLine]", 
       RowBox[{"avect", " ", "=", " ", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"aa", " ", 
           RowBox[{"Sin", "[", "\[Beta]\[Beta]", "]"}]}], ",", " ", "0", ",", 
          " ", 
          RowBox[{"aa", " ", 
           RowBox[{"Cos", "[", "\[Beta]\[Beta]", "]"}]}]}], "}"}]}], ";", " ",
        "\[IndentingNewLine]", 
       RowBox[{"bvect", " ", "=", " ", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"bb", " ", 
           RowBox[{"Sin", "[", "\[Alpha]\[Alpha]", "]"}], " ", 
           RowBox[{"Cos", "[", "\[Gamma]\[Gamma]", "]"}]}], ",", " ", 
          RowBox[{"bb", " ", 
           RowBox[{"Sin", "[", "\[Alpha]\[Alpha]", "]"}], " ", 
           RowBox[{"Sin", "[", "\[Gamma]\[Gamma]", "]"}]}], ",", " ", 
          RowBox[{"bb", " ", 
           RowBox[{"Cos", "[", "\[Alpha]\[Alpha]", "]"}]}]}], "}"}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"cvect", " ", "=", " ", 
        RowBox[{"{", 
         RowBox[{"0", ",", " ", "0", ",", " ", "cc"}], "}"}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"cartesian1", " ", "=", " ", 
        RowBox[{"Table", "[", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{
            RowBox[{"If", "[", 
             RowBox[{
              RowBox[{
               RowBox[{"norms", "[", 
                RowBox[{"[", 
                 RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], " ", "\[Equal]", 
               " ", "0"}], ",", " ", "\"\<Inf\>\"", ",", " ", 
              RowBox[{"avect", "/", 
               RowBox[{"norms", "[", 
                RowBox[{"[", 
                 RowBox[{"i", ",", " ", "1"}], "]"}], "]"}]}]}], "]"}], ",", 
            " ", 
            RowBox[{"If", "[", 
             RowBox[{
              RowBox[{
               RowBox[{"norms", "[", 
                RowBox[{"[", 
                 RowBox[{"i", ",", " ", "2"}], "]"}], "]"}], " ", "\[Equal]", 
               " ", "0"}], ",", " ", "\"\<Inf\>\"", ",", " ", 
              RowBox[{"bvect", "/", 
               RowBox[{"norms", "[", 
                RowBox[{"[", 
                 RowBox[{"i", ",", " ", "2"}], "]"}], "]"}]}]}], "]"}], ",", 
            " ", 
            RowBox[{"If", "[", 
             RowBox[{
              RowBox[{
               RowBox[{"norms", "[", 
                RowBox[{"[", 
                 RowBox[{"i", ",", " ", "3"}], "]"}], "]"}], " ", "\[Equal]", 
               " ", "0"}], ",", " ", "\"\<Inf\>\"", ",", " ", 
              RowBox[{"cvect", "/", 
               RowBox[{"norms", "[", 
                RowBox[{"[", 
                 RowBox[{"i", ",", " ", "3"}], "]"}], "]"}]}]}], "]"}]}], 
           "}"}], ",", " ", 
          RowBox[{"{", 
           RowBox[{"i", ",", " ", "1", ",", " ", 
            RowBox[{"Length", "[", "norms", "]"}]}], "}"}]}], "]"}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"points", " ", "=", " ", 
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
               "avect"}], ",", " ", 
              RowBox[{
               RowBox[{"cartesian1", "[", 
                RowBox[{"[", 
                 RowBox[{"i", ",", " ", "3"}], "]"}], "]"}], " ", "+", " ", 
               "bvect"}], ",", " ", 
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
               "avect"}], ",", " ", 
              RowBox[{"cartesian1", "[", 
               RowBox[{"[", 
                RowBox[{"i", ",", " ", "2"}], "]"}], "]"}], ",", " ", 
              RowBox[{
               RowBox[{"cartesian1", "[", 
                RowBox[{"[", 
                 RowBox[{"i", ",", " ", "2"}], "]"}], "]"}], "+", "cvect"}]}],
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
                 RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], "+", "bvect"}], 
              ",", " ", 
              RowBox[{
               RowBox[{"cartesian1", "[", 
                RowBox[{"[", 
                 RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], "+", "cvect"}]}],
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
                 RowBox[{"i", ",", " ", "3"}], "]"}], "]"}], "+", "avect"}], 
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
                 RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], "+", "bvect"}], 
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
                 RowBox[{"i", ",", " ", "2"}], "]"}], "]"}], "+", "cvect"}]}],
              "}"}], ",", "\[IndentingNewLine]", "True", ",", 
            "\[IndentingNewLine]", 
            RowBox[{"cartesian1", "[", 
             RowBox[{"[", "i", "]"}], "]"}]}], "\[IndentingNewLine]", "]"}], 
          ",", " ", 
          RowBox[{"{", 
           RowBox[{"i", ",", " ", 
            RowBox[{"Length", "[", "norms", "]"}]}], "}"}]}], "]"}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"normsxyz", " ", "=", " ", 
        RowBox[{"Table", "[", 
         RowBox[{
          RowBox[{"Cross", "[", 
           RowBox[{
            RowBox[{
             RowBox[{"points", "[", 
              RowBox[{"[", 
               RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], "-", 
             RowBox[{"points", "[", 
              RowBox[{"[", 
               RowBox[{"i", ",", " ", "2"}], "]"}], "]"}]}], ",", " ", 
            RowBox[{
             RowBox[{"points", "[", 
              RowBox[{"[", 
               RowBox[{"i", ",", " ", "2"}], "]"}], "]"}], "-", 
             RowBox[{"points", "[", 
              RowBox[{"[", 
               RowBox[{"i", ",", " ", "3"}], "]"}], "]"}]}]}], "]"}], ",", 
          " ", 
          RowBox[{"{", 
           RowBox[{"i", ",", " ", 
            RowBox[{"Length", "[", "norms", "]"}]}], "}"}]}], "]"}]}], ";", 
       "\[IndentingNewLine]", "\[IndentingNewLine]", 
       RowBox[{"(*", " ", 
        RowBox[{
         RowBox[{
         "performing", " ", "symmetry", " ", "operations", " ", "repeatedly", 
          " ", "to", " ", "find", " ", "all", " ", "symmetric", " ", 
          "eqivalents"}], ",", " ", 
         RowBox[{
         "and", " ", "generate", " ", "the", " ", "corresponding", " ", 
          "colors", " ", "and", " ", "gamma", " ", "values", " ", "and", " ", 
          "vectors"}]}], " ", "*)"}], "\[IndentingNewLine]", 
       RowBox[{"symop", " ", "=", " ", 
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
                    RowBox[{"sym", ".", " ", 
                    RowBox[{"#", "[", 
                    RowBox[{"[", "i", "]"}], "]"}]}], ",", " ", 
                    SuperscriptBox["10", 
                    RowBox[{"-", "10."}]]}], "]"}], ",", " ", 
                    RowBox[{"{", 
                    RowBox[{"i", ",", " ", "1", ",", " ", 
                    RowBox[{"Length", "[", "#", "]"}]}], "}"}]}], "]"}], 
                  "]"}], ",", " ", "3"}], "]"}], "]"}]}], " ", "&"}], ",", 
            RowBox[{"sym", ".", 
             RowBox[{"normsxyz", "[", 
              RowBox[{"[", "j", "]"}], "]"}]}]}], "]"}], ",", " ", 
          RowBox[{"{", 
           RowBox[{"j", ",", " ", "1", ",", " ", 
            RowBox[{"Length", "[", "normsxyz", "]"}]}], "}"}]}], "]"}]}], ";",
        "\[IndentingNewLine]", 
       RowBox[{"dmult", " ", "=", " ", 
        RowBox[{"Table", "[", 
         RowBox[{
          RowBox[{"ds", "[", 
           RowBox[{"[", "i", "]"}], "]"}], ",", " ", 
          RowBox[{"{", 
           RowBox[{"i", ",", " ", "1", ",", " ", 
            RowBox[{"Length", "[", "ds", "]"}]}], "}"}], ",", "  ", 
          RowBox[{"{", 
           RowBox[{"j", ",", " ", "1", ",", " ", 
            RowBox[{"Length", "[", 
             RowBox[{"symop", "[", 
              RowBox[{"[", "i", "]"}], "]"}], " ", "]"}]}], "}"}]}], "]"}]}], 
       ";", "\[IndentingNewLine]", 
       RowBox[{"colz", " ", "=", " ", 
        RowBox[{"Table", "[", 
         RowBox[{
          RowBox[{"colors", "[", 
           RowBox[{"[", "i", "]"}], "]"}], ",", " ", 
          RowBox[{"{", 
           RowBox[{"i", ",", " ", "1", ",", " ", 
            RowBox[{"Length", "[", "ds", "]"}]}], "}"}], ",", "  ", 
          RowBox[{"{", 
           RowBox[{"j", ",", " ", "1", ",", " ", 
            RowBox[{"Length", "[", 
             RowBox[{"symop", "[", 
              RowBox[{"[", "i", "]"}], "]"}], " ", "]"}]}], "}"}]}], "]"}]}], 
       ";", "\[IndentingNewLine]", 
       RowBox[{"gams", " ", "=", " ", 
        RowBox[{"Table", "[", 
         RowBox[{
          RowBox[{
           RowBox[{"dmult", "[", 
            RowBox[{"[", 
             RowBox[{"i", ",", " ", "j"}], "]"}], "]"}], " ", 
           RowBox[{"Normalize", "[", 
            RowBox[{"symop", "[", 
             RowBox[{"[", 
              RowBox[{"i", ",", " ", "j"}], "]"}], "]"}], "]"}]}], ",", " ", 
          RowBox[{"{", 
           RowBox[{"i", ",", " ", "1", ",", " ", 
            RowBox[{"Length", "[", "normsxyz", "]"}]}], "}"}], ",", " ", 
          RowBox[{"{", 
           RowBox[{"j", ",", " ", "1", ",", " ", 
            RowBox[{"Length", "[", 
             RowBox[{"symop", "[", 
              RowBox[{"[", "i", "]"}], "]"}], " ", "]"}]}], " ", "}"}]}], 
         "]"}]}], ";", "\[IndentingNewLine]", "\[IndentingNewLine]", 
       RowBox[{"(*", " ", 
        RowBox[{
         RowBox[{
         "test", " ", "whether", " ", "a", " ", "particular", " ", "facet", 
          " ", 
          RowBox[{"family", "'"}], "s", " ", "gamma", " ", "is", " ", "too", 
          " ", "large", " ", "to", " ", "appear", " ", "on", " ", "the", " ", 
          "wulff", " ", "shape"}], ",", " ", 
         RowBox[{"and", " ", "if", " ", "it", " ", "is"}], ",", " ", 
         RowBox[{
          RowBox[{
           RowBox[{
           "remove", " ", "them", " ", "from", " ", "the", " ", "list", " ", 
            "of", " ", "facets"}], " ", "&"}], " ", "properties"}]}], " ", 
        "*)"}], "\[IndentingNewLine]", 
       RowBox[{"eliminatedQ", " ", "=", " ", 
        RowBox[{"Table", "[", 
         RowBox[{
          RowBox[{"outsideWulffCompiled", "[", 
           RowBox[{
            RowBox[{"gams", "[", 
             RowBox[{"[", 
              RowBox[{"i", ",", " ", "j"}], "]"}], "]"}], ",", " ", 
            RowBox[{"gams", "[", 
             RowBox[{"[", 
              RowBox[{"k", ",", " ", "1"}], "]"}], "]"}]}], "]"}], ",", " ", 
          RowBox[{"{", 
           RowBox[{"k", ",", " ", 
            RowBox[{"Length", "[", "gams", "]"}]}], "}"}], ",", " ", 
          RowBox[{"{", 
           RowBox[{"i", ",", " ", 
            RowBox[{"If", "[", 
             RowBox[{
              RowBox[{"k", " ", "\[Equal]", " ", "1"}], ",", " ", 
              RowBox[{"Table", "[", 
               RowBox[{"a", ",", " ", 
                RowBox[{"{", 
                 RowBox[{"a", ",", " ", "2", ",", " ", 
                  RowBox[{"Length", "[", "gams", "]"}]}], "}"}]}], "]"}], ",",
               " ", 
              RowBox[{"If", "[", 
               RowBox[{
                RowBox[{"k", " ", "\[Equal]", " ", 
                 RowBox[{"Length", "[", "gams", "]"}]}], ",", " ", 
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
                    RowBox[{"Length", "[", "gams", "]"}]}], "}"}]}], "]"}]}], 
                 "]"}]}], "]"}]}], "]"}]}], "}"}], ",", " ", 
          RowBox[{"{", 
           RowBox[{"j", ",", " ", 
            RowBox[{"Length", "[", 
             RowBox[{"gams", "[", 
              RowBox[{"[", "i", "]"}], "]"}], "]"}]}], "}"}]}], "]"}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"survivingGroups", " ", "=", " ", 
        RowBox[{"Select", "[", 
         RowBox[{
          RowBox[{"Table", "[", 
           RowBox[{
            RowBox[{"If", "[", 
             RowBox[{
              RowBox[{"MemberQ", "[", 
               RowBox[{
                RowBox[{"Flatten", "[", 
                 RowBox[{"eliminatedQ", "[", 
                  RowBox[{"[", "i", "]"}], "]"}], "]"}], ",", " ", "True"}], 
               "]"}], ",", " ", "Null", ",", " ", "i"}], "]"}], ",", " ", 
            RowBox[{"{", 
             RowBox[{"i", ",", " ", 
              RowBox[{"Length", "[", "gams", "]"}]}], "}"}]}], "]"}], ",", 
          " ", "NumericQ"}], "]"}]}], ";", "\[IndentingNewLine]", 
       RowBox[{"newColors", " ", "=", " ", 
        RowBox[{"Flatten", "@", 
         RowBox[{"Table", "[", 
          RowBox[{
           RowBox[{"colz", "[", 
            RowBox[{"[", "i", "]"}], "]"}], ",", " ", 
           RowBox[{"{", 
            RowBox[{"i", ",", " ", "survivingGroups"}], "}"}]}], "]"}]}]}], 
       ";", "\[IndentingNewLine]", 
       RowBox[{"newGsPre", " ", "=", " ", 
        RowBox[{"Flatten", "[", 
         RowBox[{
          RowBox[{"Table", "[", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{
              RowBox[{"gams", "[", 
               RowBox[{"[", 
                RowBox[{"i", ",", " ", "j"}], "]"}], "]"}], ",", " ", "i"}], 
             "}"}], ",", " ", 
            RowBox[{"{", 
             RowBox[{"i", ",", " ", "survivingGroups"}], "}"}], ",", " ", 
            RowBox[{"{", 
             RowBox[{"j", ",", " ", 
              RowBox[{"Length", "[", 
               RowBox[{"gams", "[", 
                RowBox[{"[", "i", "]"}], "]"}], "]"}]}], "}"}]}], "]"}], ",", 
          " ", "1"}], "]"}]}], ";", "\[IndentingNewLine]", 
       RowBox[{"newGs", " ", "=", " ", 
        RowBox[{"Table", "[", 
         RowBox[{
          RowBox[{"Join", "[", 
           RowBox[{
            RowBox[{"newGsPre", "[", 
             RowBox[{"[", "i", "]"}], "]"}], ",", " ", 
            RowBox[{"{", "i", "}"}]}], "]"}], ",", " ", 
          RowBox[{"{", 
           RowBox[{"i", ",", " ", 
            RowBox[{"Length", "[", "newGsPre", "]"}]}], "}"}]}], "]"}]}], ";",
        "\[IndentingNewLine]", "\[IndentingNewLine]", 
       RowBox[{"(*", " ", 
        RowBox[{
         RowBox[{
         "find", " ", "the", " ", "nearest", " ", "neighbors", " ", "to", " ",
           "each", " ", "facet", " ", "on", " ", "the", " ", "wulff", " ", 
          RowBox[{"shape", ".", " ", "then"}], " ", "find", " ", "all", " ", 
          "possible", " ", "vertices", " ", "defined", " ", "by", " ", "3", 
          " ", "facets"}], ",", " ", 
         RowBox[{
         "where", " ", "the", " ", "3", " ", "facets", " ", "are", " ", 
          "also", " ", "nearest", " ", "neighbors"}]}], " ", "*)"}], 
       "\[IndentingNewLine]", 
       RowBox[{"neighbors", " ", "=", " ", 
        RowBox[{"Table", "[", 
         RowBox[{
          RowBox[{"neighborQ", "[", 
           RowBox[{"i", ",", " ", "newGs", ",", " ", "sensitiv"}], "]"}], ",",
           " ", 
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
       RowBox[{"(*", " ", 
        RowBox[{
        "select", " ", "only", " ", "the", " ", "vertices", " ", "that", " ", 
         "fall", " ", "on", " ", "the", " ", "wulff", " ", "shape", " ", "by",
          " ", "eliminating", " ", "those", " ", "that", " ", "are", " ", 
         "too", " ", "far", " ", "away"}], " ", "*)"}], "\[IndentingNewLine]", 
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
       RowBox[{"(*", " ", 
        RowBox[{
        "the", " ", "vertices", " ", "around", " ", "each", " ", "facet", " ",
          "are", " ", "initially", " ", "in", " ", "a", " ", "random", " ", 
         RowBox[{"order", ".", " ", "the"}], " ", "following", " ", "puts", 
         " ", "them", " ", "in", " ", "order", " ", "so", " ", "a", " ", 
         "polygon", " ", "can", " ", "be", " ", "defined", " ", "by", " ", 
         "rotating", " ", "them", " ", "to", " ", "be", " ", "in", " ", "the",
          " ", "xy", " ", "plane", " ", "and", " ", "then", " ", "sorting", 
         " ", "them", " ", "by", " ", "ArcTan"}], " ", "*)"}], 
       "\[IndentingNewLine]", 
       RowBox[{"rotMats", " ", "=", " ", 
        RowBox[{"Table", "[", 
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
                RowBox[{"0.", ",", " ", "0.", ",", " ", "1."}], "}"}]}], "/", 
              
              RowBox[{"Norm", "[", 
               RowBox[{"newGs", "[", 
                RowBox[{"[", 
                 RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], "]"}]}], " ", 
             "\[Equal]", " ", 
             RowBox[{"-", "1"}]}], ",", " ", 
            RowBox[{"RotationMatrix", "[", 
             RowBox[{"Pi", ",", " ", 
              RowBox[{"{", 
               RowBox[{"1.", ",", " ", "0.", ",", " ", "0."}], "}"}]}], "]"}],
             ",", 
            RowBox[{"RotationMatrix", "[", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"newGs", "[", 
                RowBox[{"[", 
                 RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], ",", " ", 
               RowBox[{"{", 
                RowBox[{"0.", ",", " ", "0.", ",", " ", "1."}], "}"}]}], 
              "}"}], "]"}]}], "]"}], ",", " ", 
          RowBox[{"{", 
           RowBox[{"i", ",", " ", 
            RowBox[{"Length", "[", "newGs", "]"}]}], "}"}]}], "]"}]}], ";", 
       "\[IndentingNewLine]", 
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
       ";", "\[IndentingNewLine]", "\[IndentingNewLine]", 
       RowBox[{"vertsfin", " ", "=", " ", 
        RowBox[{"Table", "[", 
         RowBox[{
          RowBox[{"sortedVerts", "[", 
           RowBox[{"[", 
            RowBox[{"i", ",", " ", "j", ",", " ", "1"}], "]"}], "]"}], ",", 
          " ", 
          RowBox[{"{", 
           RowBox[{"i", ",", " ", 
            RowBox[{"Length", "[", "newGs", "]"}]}], "}"}], ",", " ", 
          RowBox[{"{", 
           RowBox[{"j", ",", " ", 
            RowBox[{"Length", "[", 
             RowBox[{"sortedVerts", "[", 
              RowBox[{"[", "i", "]"}], "]"}], "]"}]}], "}"}]}], "]"}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"(*", " ", 
        RowBox[{
         RowBox[{
         "the", " ", "following", " ", "picks", " ", "one", " ", "facet", " ",
           "from", " ", "each", " ", "family"}], ",", " ", 
         RowBox[{"then", " ", "computes", " ", "its", " ", 
          RowBox[{"area", ".", " ", "The"}], " ", "total", " ", "volume", " ",
           "of", " ", "the", " ", "wulff", " ", "figure", " ", "is", " ", 
          "also", " ", "computed"}]}], " ", "*)"}], "\[IndentingNewLine]", 
       RowBox[{"onePerFamily", " ", "=", " ", 
        RowBox[{"Table", "[", 
         RowBox[{
          RowBox[{"Sum", "[", 
           RowBox[{
            RowBox[{"Length", "[", 
             RowBox[{"symop", "[", 
              RowBox[{"[", "i", "]"}], "]"}], "]"}], ",", " ", 
            RowBox[{"{", 
             RowBox[{"i", ",", " ", "j"}], "}"}]}], "]"}], ",", " ", 
          RowBox[{"{", 
           RowBox[{"j", ",", " ", 
            RowBox[{"Length", "[", "survivingGroups", "]"}]}], "}"}]}], 
         "]"}]}], ";", "\[IndentingNewLine]", 
       RowBox[{"(*", " ", 
        RowBox[{
        "This", " ", "is", " ", "the", " ", "corrected", " ", "area", " ", 
         RowBox[{"calculation", ".", " ", "Many"}], " ", "thanks", " ", "to", 
         " ", "Joakim", " ", "Brorsson", " ", "for", " ", "the", " ", "bug", 
         " ", "report", " ", "and", " ", 
         RowBox[{"solution", "."}]}], " ", "*)"}], "\[IndentingNewLine]", 
       RowBox[{"areas", "=", 
        RowBox[{"Table", "[", 
         RowBox[{"0.", ",", 
          RowBox[{"{", 
           RowBox[{"i", ",", "1", ",", 
            RowBox[{"Length", "[", "symop", "]"}]}], "}"}]}], "]"}]}], ";", 
       RowBox[{"For", "[", 
        RowBox[{
         RowBox[{"i", "=", "1"}], ",", 
         RowBox[{"i", "\[LessEqual]", 
          RowBox[{"Length", "[", "survivingGroups", "]"}]}], ",", 
         RowBox[{"i", "++"}], ",", 
         RowBox[{
          RowBox[{"areas", "[", 
           RowBox[{"[", 
            RowBox[{"survivingGroups", "[", 
             RowBox[{"[", "i", "]"}], "]"}], "]"}], "]"}], "=", 
          RowBox[{"N", "[", 
           RowBox[{"Re", "[", 
            RowBox[{"findarea", "[", 
             RowBox[{"vertsfin", "[", 
              RowBox[{"[", 
               RowBox[{"onePerFamily", "[", 
                RowBox[{"[", "i", "]"}], "]"}], "]"}], "]"}], "]"}], "]"}], 
           "]"}]}]}], "]"}], ";", "\[IndentingNewLine]", 
       RowBox[{"totvol", " ", "=", " ", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{"1", "/", "3"}], ")"}], " ", 
         RowBox[{"Sum", "[", 
          RowBox[{
           RowBox[{"N", "[", 
            RowBox[{
             RowBox[{"Re", "[", 
              RowBox[{"findarea", "[", 
               RowBox[{"vertsfin", "[", 
                RowBox[{"[", "i", "]"}], "]"}], " ", "]"}], "]"}], " ", 
             RowBox[{"Norm", "[", 
              RowBox[{"newGsPre", "[", 
               RowBox[{"[", 
                RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], "]"}]}], "]"}], 
           ",", " ", 
           RowBox[{"{", 
            RowBox[{"i", ",", " ", 
             RowBox[{"Length", "[", "newGsPre", "]"}]}], "}"}]}], "]"}]}]}], 
       ";", "\[IndentingNewLine]", "\[IndentingNewLine]", 
       RowBox[{"(*", " ", 
        RowBox[{"this", " ", "generates", " ", "the", " ", "graphics"}], " ", 
        "*)"}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
       RowBox[{"wulffshape", " ", "=", " ", 
        RowBox[{"Graphics3D", "[", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{
            RowBox[{"Opacity", "[", "opacity", "]"}], ",", 
            RowBox[{"Flatten", "[", 
             RowBox[{
              RowBox[{"Table", "[", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{
                   RowBox[{"Flatten", "[", "newColors", "]"}], "[", 
                   RowBox[{"[", "i", "]"}], "]"}], ",", " ", 
                  RowBox[{"Polygon", "[", 
                   RowBox[{"Join", "[", 
                    RowBox[{
                    RowBox[{"Table", "[", 
                    RowBox[{
                    RowBox[{"vertTest", "[", 
                    RowBox[{"[", 
                    RowBox[{"i", ",", " ", 
                    RowBox[{"sortedVerts", "[", 
                    RowBox[{"[", 
                    RowBox[{"i", ",", " ", "j", ",", " ", "2"}], "]"}], "]"}],
                     ",", " ", "1"}], "]"}], "]"}], ",", " ", 
                    RowBox[{"{", 
                    RowBox[{"j", ",", " ", 
                    RowBox[{"Length", "[", 
                    RowBox[{"vertTest", "[", 
                    RowBox[{"[", "i", "]"}], "]"}], "]"}]}], "}"}]}], "]"}], 
                    ",", " ", 
                    RowBox[{"{", 
                    RowBox[{"vertTest", "[", 
                    RowBox[{"[", 
                    RowBox[{"i", ",", " ", 
                    RowBox[{"sortedVerts", "[", 
                    RowBox[{"[", 
                    RowBox[{"i", ",", " ", "1", ",", " ", "2"}], "]"}], "]"}],
                     ",", " ", "1"}], "]"}], "]"}], "}"}]}], "]"}], "]"}]}], 
                 "}"}], ",", " ", 
                RowBox[{"{", 
                 RowBox[{"i", ",", " ", 
                  RowBox[{"Length", "[", "vertTest", "]"}]}], "}"}]}], "]"}], 
              ",", " ", "1"}], "]"}]}], "}"}], ",", 
          RowBox[{"Lighting", "\[Rule]", "\"\<Neutral\>\""}], ",", " ", 
          RowBox[{"ViewPoint", " ", "\[Rule]", " ", 
           RowBox[{"10", " ", "vpr"}]}], ",", " ", 
          RowBox[{"ViewVertical", " ", "\[Rule]", " ", "vvr"}], ",", " ", 
          RowBox[{"ImageSize", "\[Rule]", " ", "Large"}], ",", 
          RowBox[{"Boxed", "\[Rule]", " ", "False"}]}], "]"}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"withaxes", " ", "=", " ", 
        RowBox[{"If", "[", 
         RowBox[{
          RowBox[{"!", "showAxes"}], ",", "wulffshape", ",", 
          "\[IndentingNewLine]", 
          RowBox[{"Show", "[", 
           RowBox[{"wulffshape", ",", " ", 
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
                    RowBox[{"0", ",", " ", "0", ",", " ", "0"}], "}"}], ",", 
                    " ", 
                    RowBox[{"2", " ", 
                    RowBox[{"Normalize", "[", "avect", "]"}]}]}], "}"}], ",", 
                  "0.025"}], "]"}], "]"}]}], "}"}], "]"}], ",", " ", 
            RowBox[{"Graphics3D", "[", 
             RowBox[{"{", 
              RowBox[{"Green", ",", 
               RowBox[{"Arrowheads", "[", "0.05", "]"}], ",", 
               RowBox[{"Arrow", "[", 
                RowBox[{"Tube", "[", 
                 RowBox[{
                  RowBox[{"{", 
                   RowBox[{
                    RowBox[{"{", 
                    RowBox[{"0", ",", " ", "0", ",", " ", "0"}], "}"}], ",", 
                    " ", 
                    RowBox[{"2", " ", 
                    RowBox[{"Normalize", "[", "bvect", "]"}]}]}], "}"}], ",", 
                  "0.025"}], "]"}], "]"}]}], "}"}], "]"}], ",", " ", 
            RowBox[{"Graphics3D", "[", 
             RowBox[{"{", 
              RowBox[{"Blue", ",", 
               RowBox[{"Arrowheads", "[", "0.05", "]"}], ",", 
               RowBox[{"Arrow", "[", 
                RowBox[{"Tube", "[", 
                 RowBox[{
                  RowBox[{"{", 
                   RowBox[{
                    RowBox[{"{", 
                    RowBox[{"0", ",", " ", "0", ",", " ", "0"}], "}"}], ",", 
                    " ", 
                    RowBox[{"2", " ", 
                    RowBox[{"Normalize", "[", "cvect", "]"}]}]}], "}"}], ",", 
                  "0.025"}], "]"}], "]"}]}], "}"}], "]"}]}], "]"}]}], 
         "\[IndentingNewLine]", "]"}]}], ";", "\[IndentingNewLine]", 
       RowBox[{"GraphicsColumn", "[", 
        RowBox[{"{", 
         RowBox[{"withaxes", ",", " ", 
          RowBox[{"GraphicsColumn", "[", 
           RowBox[{"Join", "[", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"Text", "[", 
               RowBox[{"Style", "[", 
                RowBox[{
                 RowBox[{"\"\<Volume = \>\"", "<>", 
                  RowBox[{"ToString", "[", 
                   RowBox[{"Round", "[", 
                    RowBox[{"totvol", ",", " ", "0.001"}], "]"}], "]"}]}], 
                 ",", " ", "20"}], "]"}], "]"}], "}"}], ",", " ", 
             RowBox[{"Table", "[", 
              RowBox[{
               RowBox[{"Graphics", "[", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"colors", "[", 
                   RowBox[{"[", "i", "]"}], "]"}], ",", " ", 
                  RowBox[{"Rectangle", "[", 
                   RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"-", "1.5"}], ",", " ", 
                    RowBox[{"-", "0.5"}]}], "}"}], ",", " ", 
                    RowBox[{"{", 
                    RowBox[{"1.5", ",", " ", "0.5"}], "}"}]}], "]"}], ",", 
                  " ", "Black", ",", " ", 
                  RowBox[{"Text", "[", 
                   RowBox[{
                    RowBox[{"Style", "[", 
                    RowBox[{
                    RowBox[{"\"\<A\>\"", "<>", 
                    RowBox[{"ToString", "[", "i", "]"}], "<>", "\"\< = \>\"", 
                    "<>", 
                    RowBox[{"ToString", "[", 
                    RowBox[{"Round", "[", 
                    RowBox[{
                    RowBox[{"areas", "[", 
                    RowBox[{"[", "i", "]"}], "]"}], ",", " ", "0.001"}], 
                    "]"}], "]"}], "<>", "\"\< \[Times]\>\"", "<>", 
                    RowBox[{"ToString", "[", 
                    RowBox[{"Length", "[", 
                    RowBox[{"symop", "[", 
                    RowBox[{"[", "i", "]"}], "]"}], "]"}], "]"}], "<>", 
                    "\"\< facets\>\""}], ",", " ", "18"}], "]"}], ",", " ", 
                    RowBox[{"{", 
                    RowBox[{"0.", ",", " ", "0."}], "}"}]}], "]"}]}], "}"}], 
                "]"}], ",", " ", 
               RowBox[{"{", 
                RowBox[{"i", ",", " ", 
                 RowBox[{"Length", "[", "colors", "]"}]}], "}"}]}], "]"}]}], 
            "]"}], "]"}]}], "}"}], "]"}]}]}], "\[IndentingNewLine]", 
     "\[IndentingNewLine]", "]"}]}], "\[IndentingNewLine]"}]}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.518281844344057*^9, 3.518281848965012*^9}, {
   3.518283079343421*^9, 3.518283086508216*^9}, {3.518283272062297*^9, 
   3.518283278564147*^9}, {3.5189723649387703`*^9, 3.5189724020777063`*^9}, {
   3.518972608740649*^9, 3.518972619100197*^9}, {3.5189726501988373`*^9, 
   3.5189727135244703`*^9}, {3.518972745570682*^9, 3.518972914106412*^9}, {
   3.519059070651495*^9, 3.5190590714444447`*^9}, 3.541756322046875*^9, {
   3.541759002654953*^9, 3.541759003295383*^9}, {3.541759269915968*^9, 
   3.541759276124866*^9}, {3.541760395767477*^9, 3.541760452540688*^9}, {
   3.5417610068920393`*^9, 3.5417610394852533`*^9}, {3.5417612626509047`*^9, 
   3.541761279857033*^9}, {3.546623968855193*^9, 3.5466242776911993`*^9}, {
   3.547215675258374*^9, 3.5472157359023533`*^9}, {3.54721680738655*^9, 
   3.547216816159371*^9}, {3.547216905403667*^9, 3.54721696554393*^9}, {
   3.548493877138135*^9, 3.5484940261513042`*^9}, {3.548494086710195*^9, 
   3.548494108806965*^9}, {3.548494200307661*^9, 3.548494239281609*^9}, {
   3.5510964811959267`*^9, 3.551096535687788*^9}, {3.5510966870111732`*^9, 
   3.551096689928055*^9}, {3.5510981357350073`*^9, 3.5510981748795233`*^9}, {
   3.551098205447667*^9, 3.551098232959543*^9}, {3.5510982664787397`*^9, 
   3.551098344178213*^9}, {3.551098386651927*^9, 3.551098402338821*^9}, {
   3.55109852488778*^9, 3.551098554219777*^9}, {3.551098618705453*^9, 
   3.5510986189782677`*^9}, {3.551099583259701*^9, 3.551099586656608*^9}, {
   3.552961997544488*^9, 3.552962200640226*^9}, {3.552962249956258*^9, 
   3.552962417724883*^9}, {3.552962481437708*^9, 3.552962509683831*^9}, {
   3.552962544466193*^9, 3.552962627719812*^9}, {3.552962657840337*^9, 
   3.5529626641517477`*^9}, {3.552962694553413*^9, 3.552962694873601*^9}, {
   3.55296296810105*^9, 3.55296327101193*^9}, {3.5529633209781227`*^9, 
   3.552963411769473*^9}, {3.552963461316864*^9, 3.5529634964863367`*^9}, {
   3.552963532861061*^9, 3.552963557615882*^9}, {3.552963601074122*^9, 
   3.5529636459365463`*^9}, {3.552963697546218*^9, 3.552963864786273*^9}, 
   3.604757103496084*^9, {3.604757137912602*^9, 3.604757195657*^9}, {
   3.604757269778099*^9, 3.6047573600510387`*^9}, {3.6047573931377172`*^9, 
   3.60475745336893*^9}, {3.604757499944696*^9, 3.604757507351425*^9}, {
   3.604757563192013*^9, 3.60475759692234*^9}, {3.60475764589533*^9, 
   3.604757659717022*^9}, {3.604757716260951*^9, 3.604757717710053*^9}, {
   3.604757766014119*^9, 3.604757773454032*^9}, {3.604757805151305*^9, 
   3.604757811532329*^9}, {3.6047578592629957`*^9, 3.604757886079279*^9}, {
   3.604757916276346*^9, 3.604757919540703*^9}, {3.604758065344007*^9, 
   3.6047580689714212`*^9}, {3.604758100592808*^9, 3.604758114312133*^9}, {
   3.604758151176948*^9, 3.6047582322954597`*^9}}]
}, Closed]],

Cell[CellGroupData[{

Cell["Wulffmaker", "Section",
 CellChangeTimes->{{3.541759252542234*^9, 3.5417592560275784`*^9}, {
  3.5472170869784193`*^9, 3.547217088496443*^9}}],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`currentSymmetry$$ = 
    "m\!\(\*OverscriptBox[\(3\), \(_\)]\)m", $CellContext`n$$ = 
    3, $CellContext`opacity$$ = 0.85, $CellContext`sensitivity$$ = 
    18, $CellContext`showAxes$$ = True, $CellContext`symmetry$$ = 
    "Cubic", $CellContext`vp$$ = {5, 1, 1}, $CellContext`vv$$ = {0, 0, 1}, 
    Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`symmetry$$], "Cubic", 
       Text[
        Style["Lattice", 16]]}, {
      "Cubic", "Hexagonal", "Tetragonal", "Orthorhombic", "Monoclinic", 
       "Triclinic"}}, {{
       Hold[$CellContext`currentSymmetry$$], 
       "m\!\(\*OverscriptBox[\(3\), \(_\)]\)m", 
       Text[
        Style["Point Group", 16]]}, 
      Dynamic[
       $CellContext`groupSet[$CellContext`symmetry$$]]}, {{
       Hold[$CellContext`n$$], 3, 
       Text[
        Style["Facet Families", 16]]}, {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12,
       13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 
      30}}, {{
       Hold[$CellContext`opacity$$], 0.85, 
       Text[
        Style["Opacity", 16]]}, 0, 1}, {{
       Hold[$CellContext`showAxes$$], True, 
       Text[
        Style["Show Axes", 16]]}, {True, False}}, {{
       Hold[$CellContext`vp$$], {5, 1, 1}, 
       Text[
        Style["Zone Axis", 16]]}}, {{
       Hold[$CellContext`vv$$], {0, 0, 1}, 
       Text[
        Style["Vertical Direction", 16]]}}, {{
       Hold[$CellContext`sensitivity$$], 18, 
       Text[
        Style["Sensitivity", 16]]}, 10, 50, 1}}, Typeset`size$$ = {
    788., {292., 302.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = False, $CellContext`symmetry$63223$$ = 
    0, $CellContext`n$63224$$ = 0, $CellContext`opacity$63225$$ = 
    0, $CellContext`showAxes$63226$$ = 
    False, $CellContext`sensitivity$63227$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`currentSymmetry$$ = 
        "m\!\(\*OverscriptBox[\(3\), \(_\)]\)m", $CellContext`n$$ = 
        3, $CellContext`opacity$$ = 0.85, $CellContext`sensitivity$$ = 
        18, $CellContext`showAxes$$ = True, $CellContext`symmetry$$ = 
        "Cubic", $CellContext`vp$$ = {5, 1, 1}, $CellContext`vv$$ = {0, 0, 
         1}}, "ControllerVariables" :> {
        Hold[$CellContext`symmetry$$, $CellContext`symmetry$63223$$, 0], 
        Hold[$CellContext`n$$, $CellContext`n$63224$$, 0], 
        Hold[$CellContext`opacity$$, $CellContext`opacity$63225$$, 0], 
        Hold[$CellContext`showAxes$$, $CellContext`showAxes$63226$$, False], 
        Hold[$CellContext`sensitivity$$, $CellContext`sensitivity$63227$$, 
         0]}, "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> With[{$CellContext`argument$ = {
           Table[
            $CellContext`normal$63221[$CellContext`i, $CellContext`j], \
{$CellContext`i, 1, $CellContext`n$$}, {$CellContext`j, 1, 3}], 
           Table[
            $CellContext`magnitudes$63221[$CellContext`i], {$CellContext`i, 
             1, $CellContext`n$$}], 
           Table[
            $CellContext`colors$63221[$CellContext`i], {$CellContext`i, 
             1, $CellContext`n$$}], $CellContext`currentSymmetry$$, 
           $CellContext`geomgen[$CellContext`symmetry$$]}, $CellContext`gc$ = \
$CellContext`whichcontrols[$CellContext`symmetry$$], $CellContext`controls$ = 
         Apply[Sequence, 
           Riffle[
            Flatten[
             Table[
              Which[$CellContext`j <= 3, {{
                 $CellContext`normal$63221[$CellContext`i, $CellContext`j], 
                 $CellContext`pickIndex[$CellContext`i, $CellContext`j], 
                 $CellContext`hkl[$CellContext`j]}, ControlPlacement -> 
                Left}, $CellContext`j == 4, {{
                 $CellContext`colors$63221[$CellContext`i], 
                 $CellContext`pickColor[$CellContext`i], ""}, 
                Hue[0.1], ControlPlacement -> Left}, $CellContext`j >= 5, {{
                 $CellContext`magnitudes$63221[$CellContext`i], 
                 $CellContext`pickGamma[$CellContext`i], 
                 Text[
                  Style["\[Gamma]", 16]]}, 0.4, 2, Appearance -> "Labeled", 
                ControlPlacement -> Left}], {$CellContext`i, 
               1, $CellContext`n$$}, {$CellContext`j, 1, 5}], 1], Delimiter, 
            6]]}, 
        Manipulate[
         Manipulate[
          $CellContext`wulffmakerWulff[$CellContext`argument$, \
$CellContext`opacity$$, $CellContext`showAxes$$, $CellContext`vp$$, \
$CellContext`vv$$, $CellContext`sensitivity$$], $CellContext`controls$, 
          SynchronousUpdating -> False], $CellContext`gc$, 
         SynchronousUpdating -> False]], 
      "Specifications" :> {{{$CellContext`symmetry$$, "Cubic", 
          Text[
           Style["Lattice", 16]]}, {
         "Cubic", "Hexagonal", "Tetragonal", "Orthorhombic", "Monoclinic", 
          "Triclinic"}}, {{$CellContext`currentSymmetry$$, 
          "m\!\(\*OverscriptBox[\(3\), \(_\)]\)m", 
          Text[
           Style["Point Group", 16]]}, 
         Dynamic[
          $CellContext`groupSet[$CellContext`symmetry$$]], ControlType -> 
         PopupMenu}, {{$CellContext`n$$, 3, 
          Text[
           Style["Facet Families", 16]]}, {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 
         12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 
         29, 30}}, {{$CellContext`opacity$$, 0.85, 
          Text[
           Style["Opacity", 16]]}, 0, 1}, {{$CellContext`showAxes$$, True, 
          Text[
           Style["Show Axes", 16]]}, {
         True, False}}, {{$CellContext`vp$$, {5, 1, 1}, 
          Text[
           Style["Zone Axis", 16]]}, ControlType -> InputField, 
         ControlPlacement -> Top}, {{$CellContext`vv$$, {0, 0, 1}, 
          Text[
           Style["Vertical Direction", 16]]}, ControlType -> InputField, 
         ControlPlacement -> Top}, {{$CellContext`sensitivity$$, 18, 
          Text[
           Style["Sensitivity", 16]]}, 10, 50, 1}}, 
      "Options" :> {FrameLabel -> {None, None, 
          Text[
           Style["Wulffmaker", Italic, 32]]}, BaseStyle -> Large, 
        SynchronousUpdating -> False}, "DefaultOptions" :> {}],
     ImageSizeCache->{839., {466., 476.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`argument = {{{{0, 0, 1}, {1, 0, 0}, {1, 1, 
          1}}, {1, 1, 1}, {
           RGBColor[2/3, 0, 2/3], 
           RGBColor[2/3, 2/3, 0], 
           RGBColor[1, 0.5, 0]}, "m\!\(\*OverscriptBox[\(3\), \(_\)]\)m", {1, 
          1, 2, 90, 90, 120}, {False, 0}, {{5, 1, 1}, {0, 0, 1}}}, {{{0, 0, 
          1}, {1, 1, 0}, {1, 1, 1}, {1, 2, 3}, {1, 0, 2}}, {1., 1., 1., 1., 
          1.}, {
           RGBColor[0, 2/3, 2/3], 
           RGBColor[0, 2/3, 2/3], 
           RGBColor[0, 2/3, 2/3], 
           RGBColor[0, 2/3, 2/3], 
           RGBColor[0, 2/3, 2/3]}, "m\!\(\*OverscriptBox[\(3\), \(_\)]\)m", {
          1, 1, 1, 90, 90, 90}, {
          False, 0}, {{
           5 Cos[Pi/180] + Sin[Pi/180], Cos[Pi/180] - 5 Sin[Pi/180], 1}, {0, 
           0, 1}}}, {{0, 0}, {1, 1}, {30, 1}, {{0, 1, 1}, {0, 0, 1}}, 1, {
          True, 2}, 2, {0.5, 0.5}}, {
         1, {True, 0.02}, {True, 0}, 0, {{5, 1, 1}, {0, 0, 1}}}, {
         1.7, False, {0, 0, 1}, True}}, 
       Attributes[$CellContext`normal$63221] = {Temporary}, $CellContext`i = 
       1, Attributes[$CellContext`magnitudes$63221] = {Temporary}, 
       Attributes[$CellContext`colors$63221] = {
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
$CellContext`i]]]]]], $CellContext`geomgen[
         Pattern[$CellContext`sym, 
          Blank[]]] := If[
         StringMatchQ["Hexagonal", $CellContext`sym], 
         $CellContext`hexagonalconstants[$CellContext`sym], 
         If[
          StringMatchQ["Cubic", $CellContext`sym], 
          $CellContext`cubicconstants[$CellContext`sym], 
          If[
           StringMatchQ["Tetragonal", $CellContext`sym], 
           $CellContext`tetragonalconstants[$CellContext`sym], 
           If[
            StringMatchQ["Orthorhombic", $CellContext`sym], 
            $CellContext`orthorhombicconstants[$CellContext`sym], 
            If[
             StringMatchQ["Monoclinic", $CellContext`sym], 
             $CellContext`monoclinicconstants[$CellContext`sym], 
             $CellContext`triclinicconstants[$CellContext`sym]]]]]], \
$CellContext`sym = {{{1, 0, 0}, {0, 1, 0}, {0, 0, 1}}, {{-1, 0, 0}, {0, 1, 
        0}, {0, 0, 1}}, {{0, 0, 1}, {1, 0, 0}, {0, 1, 0}}, {{0, -1, 0}, {-1, 
        0, 0}, {0, 0, 1}}}, $CellContext`hexagonalconstants[
         Pattern[$CellContext`symmetry, 
          Blank[]], 
         Pattern[$CellContext`i, 
          Blank[]]] := {
         $CellContext`a[$CellContext`i], 
         $CellContext`a[$CellContext`i], 
         $CellContext`c[$CellContext`i], 90, 90, 
         120}, $CellContext`hexagonalconstants[
         Pattern[$CellContext`symmetry, 
          Blank[]]] := {$CellContext`a, $CellContext`a, $CellContext`c, 90, 
         90, 120}, $CellContext`cubicconstants[
         Pattern[$CellContext`symmetry, 
          Blank[]], 
         Pattern[$CellContext`i, 
          Blank[]]] := {
         $CellContext`a[$CellContext`i], 
         $CellContext`a[$CellContext`i], 
         $CellContext`a[$CellContext`i], 90, 90, 
         90}, $CellContext`cubicconstants[
         Pattern[$CellContext`symmetry, 
          Blank[]]] := {$CellContext`a, $CellContext`a, $CellContext`a, 90, 
         90, 90}, $CellContext`tetragonalconstants[
         Pattern[$CellContext`symmetry, 
          Blank[]], 
         Pattern[$CellContext`i, 
          Blank[]]] := {
         $CellContext`a[$CellContext`i], 
         $CellContext`a[$CellContext`i], 
         $CellContext`c[$CellContext`i], 90, 90, 
         90}, $CellContext`tetragonalconstants[
         Pattern[$CellContext`symmetry, 
          Blank[]]] := {$CellContext`a, $CellContext`a, $CellContext`c, 90, 
         90, 90}, $CellContext`orthorhombicconstants[
         Pattern[$CellContext`symmetry, 
          Blank[]], 
         Pattern[$CellContext`i, 
          Blank[]]] := {
         $CellContext`a[$CellContext`i], 
         $CellContext`b[$CellContext`i], 
         $CellContext`c[$CellContext`i], 90, 90, 
         90}, $CellContext`orthorhombicconstants[
         Pattern[$CellContext`symmetry, 
          Blank[]]] := {$CellContext`a, $CellContext`b, $CellContext`c, 90, 
         90, 90}, $CellContext`monoclinicconstants[
         Pattern[$CellContext`symmetry, 
          Blank[]], 
         Pattern[$CellContext`i, 
          Blank[]]] := {
         $CellContext`a[$CellContext`i], 
         $CellContext`b[$CellContext`i], 
         $CellContext`c[$CellContext`i], 90, 
         $CellContext`\[Beta][$CellContext`i], 
         90}, $CellContext`monoclinicconstants[
         Pattern[$CellContext`symmetry, 
          Blank[]]] := {$CellContext`a, $CellContext`b, $CellContext`c, 
         90, $CellContext`\[Beta], 90}, $CellContext`triclinicconstants[
         Pattern[$CellContext`symmetry, 
          Blank[]], 
         Pattern[$CellContext`i, 
          Blank[]]] := {
         $CellContext`a[$CellContext`i], 
         $CellContext`b[$CellContext`i], 
         $CellContext`c[$CellContext`i], 
         $CellContext`\[Alpha][$CellContext`i], 
         $CellContext`\[Beta][$CellContext`i], 
         $CellContext`\[Gamma][$CellContext`i]}, \
$CellContext`triclinicconstants[
         Pattern[$CellContext`symmetry, 
          
          Blank[]]] := {$CellContext`a, $CellContext`b, $CellContext`c, \
$CellContext`\[Alpha], $CellContext`\[Beta], $CellContext`\[Gamma]}, \
$CellContext`whichcontrols[
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
$CellContext`i]]]]]], $CellContext`whichcontrols[
         Pattern[$CellContext`sym, 
          Blank[]]] := If[
         StringMatchQ["Hexagonal", $CellContext`sym], 
         $CellContext`hexagonalcontrols[$CellContext`sym], 
         If[
          StringMatchQ["Cubic", $CellContext`sym], 
          $CellContext`cubiccontrols[$CellContext`sym], 
          If[
           StringMatchQ["Tetragonal", $CellContext`sym], 
           $CellContext`tetragonalcontrols[$CellContext`sym], 
           If[
            StringMatchQ["Orthorhombic", $CellContext`sym], 
            $CellContext`orthorhombiccontrols[$CellContext`sym], 
            If[
             StringMatchQ["Monoclinic", $CellContext`sym], 
             $CellContext`monocliniccontrols[$CellContext`sym], 
             $CellContext`tricliniccontrols[$CellContext`sym]]]]]], \
$CellContext`hexagonalcontrols[
         Pattern[$CellContext`symmetry, 
          Blank[]], 
         Pattern[$CellContext`i, 
          Blank[]]] := Sequence[{{
           $CellContext`a[$CellContext`i], 1, 
           $CellContext`atext[$CellContext`i]}, ControlPlacement -> Left}, {{
           $CellContext`c[$CellContext`i], 1, 
           $CellContext`ctext[$CellContext`i]}, ControlPlacement -> 
          Left}], $CellContext`hexagonalcontrols[
         Pattern[$CellContext`symmetry, 
          Blank[]]] := 
       Sequence[{{$CellContext`a, 1, $CellContext`atext}, ControlPlacement -> 
          Right}, {{$CellContext`c, 1, $CellContext`ctext}, ControlPlacement -> 
          Right}], $CellContext`atext = Text[
         Style["a", 16]], $CellContext`atext[
         Pattern[$CellContext`i, 
          Blank[]]] := Text[
         Style[
          Subscript["a", $CellContext`i], 16]], 
       Attributes[Subscript] = {NHoldRest}, $CellContext`ctext = Text[
         Style["c", 16]], $CellContext`ctext[
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
          Left}], $CellContext`cubiccontrols[
         Pattern[$CellContext`symmetry, 
          Blank[]]] := 
       Sequence[{{$CellContext`a, 1, $CellContext`atext}, ControlPlacement -> 
          Right}], $CellContext`tetragonalcontrols[
         Pattern[$CellContext`symmetry, 
          Blank[]], 
         Pattern[$CellContext`i, 
          Blank[]]] := Sequence[{{
           $CellContext`a[$CellContext`i], 1, 
           $CellContext`atext[$CellContext`i]}, ControlPlacement -> Left}, {{
           $CellContext`c[$CellContext`i], 1, 
           $CellContext`ctext[$CellContext`i]}, ControlPlacement -> 
          Left}], $CellContext`tetragonalcontrols[
         Pattern[$CellContext`symmetry, 
          Blank[]]] := 
       Sequence[{{$CellContext`a, 1, $CellContext`atext}, ControlPlacement -> 
          Right}, {{$CellContext`c, 1, $CellContext`ctext}, ControlPlacement -> 
          Right}], $CellContext`orthorhombiccontrols[
         Pattern[$CellContext`symmetry, 
          Blank[]], 
         Pattern[$CellContext`i, 
          Blank[]]] := Sequence[{{
           $CellContext`a[$CellContext`i], 1, 
           $CellContext`atext[$CellContext`i]}, ControlPlacement -> Left}, {{
           $CellContext`b[$CellContext`i], 1, 
           $CellContext`btext[$CellContext`i]}, ControlPlacement -> Left}, {{
           $CellContext`c[$CellContext`i], 1, 
           $CellContext`ctext[$CellContext`i]}, ControlPlacement -> 
          Left}], $CellContext`orthorhombiccontrols[
         Pattern[$CellContext`symmetry, 
          Blank[]]] := 
       Sequence[{{$CellContext`a, 1, $CellContext`atext}, ControlPlacement -> 
          Right}, {{$CellContext`b, 1, $CellContext`btext}, ControlPlacement -> 
          Right}, {{$CellContext`c, 1, $CellContext`ctext}, ControlPlacement -> 
          Right}], $CellContext`btext = Text[
         Style["b", 16]], $CellContext`btext[
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
           $CellContext`atext[$CellContext`i]}, ControlPlacement -> Left}, {{
           $CellContext`b[$CellContext`i], 1, 
           $CellContext`btext[$CellContext`i]}, ControlPlacement -> Left}, {{
           $CellContext`c[$CellContext`i], 1, 
           $CellContext`ctext[$CellContext`i]}, ControlPlacement -> Left}, {{
           $CellContext`\[Beta][$CellContext`i], 90, 
           $CellContext`\[Beta]text[$CellContext`i]}, ControlPlacement -> 
          Left}], $CellContext`monocliniccontrols[
         Pattern[$CellContext`symmetry, 
          Blank[]]] := 
       Sequence[{{$CellContext`a, 1, $CellContext`atext}, ControlPlacement -> 
          Right}, {{$CellContext`b, 1, $CellContext`btext}, ControlPlacement -> 
          Right}, {{$CellContext`c, 1, $CellContext`ctext}, ControlPlacement -> 
          Right}, {{$CellContext`\[Beta], 90, $CellContext`\[Beta]text}, 
          ControlPlacement -> Right}], $CellContext`\[Beta]text = Text[
         Style["\[Beta]", 16]], $CellContext`\[Beta]text[
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
           $CellContext`atext[$CellContext`i]}, ControlPlacement -> Left}, {{
           $CellContext`b[$CellContext`i], 1, 
           $CellContext`btext[$CellContext`i]}, ControlPlacement -> Left}, {{
           $CellContext`c[$CellContext`i], 1, 
           $CellContext`ctext[$CellContext`i]}, ControlPlacement -> Left}, {{
           $CellContext`\[Alpha][$CellContext`i], 90, 
           $CellContext`\[Alpha]text[$CellContext`i]}, ControlPlacement -> 
          Left}, {{
           $CellContext`\[Beta][$CellContext`i], 90, 
           $CellContext`\[Beta]text[$CellContext`i]}, ControlPlacement -> 
          Left}, {{
           $CellContext`\[Gamma][$CellContext`i], 90, 
           $CellContext`\[Gamma]text[$CellContext`i]}, ControlPlacement -> 
          Left}], $CellContext`tricliniccontrols[
         Pattern[$CellContext`symmetry, 
          Blank[]]] := 
       Sequence[{{$CellContext`a, 1, $CellContext`atext}, ControlPlacement -> 
          Right}, {{$CellContext`b, 1, $CellContext`btext}, ControlPlacement -> 
          Right}, {{$CellContext`c, 1, $CellContext`ctext}, ControlPlacement -> 
          Right}, {{$CellContext`\[Alpha], 90, $CellContext`\[Alpha]text}, 
          ControlPlacement -> 
          Right}, {{$CellContext`\[Beta], 90, $CellContext`\[Beta]text}, 
          ControlPlacement -> 
          Right}, {{$CellContext`\[Gamma], 90, $CellContext`\[Gamma]text}, 
          ControlPlacement -> Right}], $CellContext`\[Alpha]text = Text[
         Style["\[Alpha]", 16]], $CellContext`\[Alpha]text[
         Pattern[$CellContext`i, 
          Blank[]]] := Text[
         Style[
          Subscript["\[Alpha]", $CellContext`i], 
          16]], $CellContext`\[Gamma]text = Text[
         Style["\[Gamma]", 16]], $CellContext`\[Gamma]text[
         Pattern[$CellContext`i, 
          Blank[]]] := Text[
         Style[
          Subscript["\[Gamma]", $CellContext`i], 16]], $CellContext`pickIndex[
        
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
           1, $CellContext`j == 3, 0, True, 1], $CellContext`i == 3, 
          
          Which[$CellContext`j == 1, 1, $CellContext`j == 2, 
           1, $CellContext`j == 3, 1, True, 1], True, 
          RandomInteger[{-8, 8}]], 
         Which[$CellContext`i == 1, 
          
          Which[$CellContext`j == 1, 0, $CellContext`j == 2, 
           0, $CellContext`j == 3, 1, True, 1], $CellContext`i == 2, 
          
          Which[$CellContext`j == 1, 1, $CellContext`j == 2, 
           1, $CellContext`j == 3, 0, True, 1], $CellContext`i == 3, 
          
          Which[$CellContext`j == 1, 1, $CellContext`j == 2, 
           1, $CellContext`j == 3, 1, True, 1], $CellContext`i == 4, 
          
          Which[$CellContext`j == 1, 1, $CellContext`j == 2, 
           2, $CellContext`j == 3, 3, True, 1], $CellContext`i == 5, 
          
          Which[$CellContext`j == 1, 1, $CellContext`j == 2, 
           0, $CellContext`j == 3, 2, True, 1], True, 
          RandomInteger[{-8, 8}]]], $CellContext`pickIndex[
         Pattern[$CellContext`i, 
          Blank[]], 
         Pattern[$CellContext`j, 
          Blank[]]] := Which[$CellContext`i == 1, 
         Which[$CellContext`j == 1, 0, $CellContext`j == 2, 0, $CellContext`j == 
          3, 1, True, 1], $CellContext`i == 2, 
         Which[$CellContext`j == 1, 1, $CellContext`j == 2, 1, $CellContext`j == 
          3, 1, True, 1], $CellContext`i == 3, 
         Which[$CellContext`j == 1, 1, $CellContext`j == 2, 1, $CellContext`j == 
          3, 0, True, 1], True, 
         RandomInteger[{-3, 3}]], $CellContext`hkl[1] = Text[
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
         Darker[Cyan]], $CellContext`pickColor[
         Pattern[$CellContext`i, 
          Blank[]]] := Which[$CellContext`i == 1, 
         Darker[Magenta], $CellContext`i == 2, 
         Darker[Cyan], $CellContext`i == 3, 
         Darker[Yellow], True, 
         Hue[
          RandomReal[], 1, 2/3]], $CellContext`pickGamma[
         Pattern[$CellContext`i, 
          Blank[]], 
         Pattern[$CellContext`id, 
          Blank[]]] := If[$CellContext`id == 1, 
         Which[$CellContext`i == 1, 1, $CellContext`i == 2, 1, $CellContext`i == 
          3, 1, True, 1], 
         Which[$CellContext`i == 1, 1, $CellContext`i == 2, 1, $CellContext`i == 
          3, 1, True, 1]], $CellContext`pickGamma[
         Pattern[$CellContext`i, 
          Blank[]]] := 
       Which[$CellContext`i == 1, 1, $CellContext`i == 2, 1, $CellContext`i == 
         3, 1, True, 1], $CellContext`wulffmakerWulff[
         Pattern[$CellContext`argument, 
          Blank[]], 
         Optional[
          Pattern[$CellContext`opacity, 
           Blank[]], 1], 
         Optional[
          Pattern[$CellContext`showAxes, 
           Blank[]], True], 
         Pattern[$CellContext`vpr, 
          Blank[]], 
         Pattern[$CellContext`vvr, 
          Blank[]], 
         Pattern[$CellContext`sensitiv, 
          Blank[]]] := 
       Module[{$CellContext`norms, $CellContext`ds, $CellContext`colors, \
$CellContext`symstring, $CellContext`geometry, $CellContext`sym, \
$CellContext`geometr, $CellContext`aa, $CellContext`bb, $CellContext`cc, \
$CellContext`\[Alpha]\[Alpha], $CellContext`\[Beta]\[Beta], $CellContext`\
\[Gamma]\[Gamma], $CellContext`avect, $CellContext`bvect, $CellContext`cvect, \
$CellContext`cartesian1, $CellContext`points, $CellContext`normsxyz, \
$CellContext`symop, $CellContext`dmult, $CellContext`colz, $CellContext`gams, \
$CellContext`eliminatedQ, $CellContext`survivingGroups, \
$CellContext`newColors, $CellContext`newGsPre, $CellContext`newGs, \
$CellContext`neighbors, $CellContext`verts, $CellContext`verts2, \
$CellContext`vertTest, $CellContext`degs, $CellContext`axes, \
$CellContext`rotMats, $CellContext`rotatedVerts, $CellContext`sortedVerts, \
$CellContext`vertsfin, $CellContext`onePerFamily, $CellContext`areas, \
$CellContext`totvol, $CellContext`wulffshape, $CellContext`withaxes}, \
$CellContext`norms = Table[
            Normalize[
             Part[$CellContext`argument, 1, $CellContext`i]], {$CellContext`i, 
             Length[
              Part[$CellContext`argument, 1]]}]; $CellContext`ds = 
          Part[$CellContext`argument, 2]; $CellContext`colors = 
          Part[$CellContext`argument, 3]; $CellContext`symstring = 
          Part[$CellContext`argument, 4]; $CellContext`geometry = 
          Part[$CellContext`argument, 
            5]; $CellContext`sym = \
$CellContext`symmetryMatrices[$CellContext`symstring]; $CellContext`aa = 
          Part[$CellContext`geometry, 1]; $CellContext`bb = 
          Part[$CellContext`geometry, 2]; $CellContext`cc = 
          Part[$CellContext`geometry, 3]; $CellContext`\[Alpha]\[Alpha] = 
          Part[$CellContext`geometry, 4] (Pi/
            180); $CellContext`\[Beta]\[Beta] = 
          Part[$CellContext`geometry, 5] (Pi/
            180); $CellContext`\[Gamma]\[Gamma] = 
          Part[$CellContext`geometry, 6] (Pi/
            180); $CellContext`avect = {$CellContext`aa 
            Sin[$CellContext`\[Beta]\[Beta]], 0, $CellContext`aa 
            Cos[$CellContext`\[Beta]\[Beta]]}; $CellContext`bvect = \
{$CellContext`bb Sin[$CellContext`\[Alpha]\[Alpha]] 
            Cos[$CellContext`\[Gamma]\[Gamma]], $CellContext`bb 
            Sin[$CellContext`\[Alpha]\[Alpha]] 
            Sin[$CellContext`\[Gamma]\[Gamma]], $CellContext`bb 
            Cos[$CellContext`\[Alpha]\[Alpha]]}; $CellContext`cvect = {
           0, 0, $CellContext`cc}; $CellContext`cartesian1 = Table[{
             If[
             Part[$CellContext`norms, $CellContext`i, 1] == 0, 
              "Inf", $CellContext`avect/
              Part[$CellContext`norms, $CellContext`i, 1]], 
             If[
             Part[$CellContext`norms, $CellContext`i, 2] == 0, 
              "Inf", $CellContext`bvect/
              Part[$CellContext`norms, $CellContext`i, 2]], 
             If[
             Part[$CellContext`norms, $CellContext`i, 3] == 0, 
              "Inf", $CellContext`cvect/
              Part[$CellContext`norms, $CellContext`i, 3]]}, {$CellContext`i, 
             1, 
             Length[$CellContext`norms]}]; $CellContext`points = Table[
            Which[
             And[
              Not[
               VectorQ[
                Part[$CellContext`cartesian1, $CellContext`i, 1]]], 
              Not[
               VectorQ[
                Part[$CellContext`cartesian1, $CellContext`i, 2]]]], {
             Part[$CellContext`cartesian1, $CellContext`i, 
                3] + $CellContext`avect, 
              Part[$CellContext`cartesian1, $CellContext`i, 
                3] + $CellContext`bvect, 
              Part[$CellContext`cartesian1, $CellContext`i, 3]}, 
             And[
              Not[
               VectorQ[
                Part[$CellContext`cartesian1, $CellContext`i, 1]]], 
              Not[
               VectorQ[
                Part[$CellContext`cartesian1, $CellContext`i, 3]]]], {
             Part[$CellContext`cartesian1, $CellContext`i, 
                2] + $CellContext`avect, 
              Part[$CellContext`cartesian1, $CellContext`i, 2], 
              Part[$CellContext`cartesian1, $CellContext`i, 
                2] + $CellContext`cvect}, 
             And[
              Not[
               VectorQ[
                Part[$CellContext`cartesian1, $CellContext`i, 2]]], 
              Not[
               VectorQ[
                Part[$CellContext`cartesian1, $CellContext`i, 3]]]], {
              Part[$CellContext`cartesian1, $CellContext`i, 1], 
              Part[$CellContext`cartesian1, $CellContext`i, 
                1] + $CellContext`bvect, 
              Part[$CellContext`cartesian1, $CellContext`i, 
                1] + $CellContext`cvect}, 
             Not[
              VectorQ[
               Part[$CellContext`cartesian1, $CellContext`i, 1]]], {
             Part[$CellContext`cartesian1, $CellContext`i, 
                3] + $CellContext`avect, 
              Part[$CellContext`cartesian1, $CellContext`i, 2], 
              Part[$CellContext`cartesian1, $CellContext`i, 3]}, 
             Not[
              VectorQ[
               Part[$CellContext`cartesian1, $CellContext`i, 2]]], {
              Part[$CellContext`cartesian1, $CellContext`i, 1], 
              Part[$CellContext`cartesian1, $CellContext`i, 
                1] + $CellContext`bvect, 
              Part[$CellContext`cartesian1, $CellContext`i, 3]}, 
             Not[
              VectorQ[
               Part[$CellContext`cartesian1, $CellContext`i, 3]]], {
              Part[$CellContext`cartesian1, $CellContext`i, 1], 
              Part[$CellContext`cartesian1, $CellContext`i, 2], 
              Part[$CellContext`cartesian1, $CellContext`i, 
                2] + $CellContext`cvect}, True, 
             Part[$CellContext`cartesian1, $CellContext`i]], {$CellContext`i, 
             
             Length[$CellContext`norms]}]; $CellContext`normsxyz = Table[
            Cross[
            Part[$CellContext`points, $CellContext`i, 1] - 
             Part[$CellContext`points, $CellContext`i, 2], 
             Part[$CellContext`points, $CellContext`i, 2] - 
             Part[$CellContext`points, $CellContext`i, 3]], {$CellContext`i, 
             Length[$CellContext`norms]}]; $CellContext`symop = Table[
            FixedPoint[Simplify[
              Union[
               Partition[
                Flatten[
                 Table[
                  Round[
                   Dot[$CellContext`sym, 
                    Part[#, $CellContext`i]], 10^(-10.)], {$CellContext`i, 1, 
                   
                   Length[#]}]], 3]]]& , 
             Dot[$CellContext`sym, 
              Part[$CellContext`normsxyz, $CellContext`j]]], {$CellContext`j, 
             1, 
             Length[$CellContext`normsxyz]}]; $CellContext`dmult = Table[
            Part[$CellContext`ds, $CellContext`i], {$CellContext`i, 1, 
             Length[$CellContext`ds]}, {$CellContext`j, 1, 
             Length[
              Part[$CellContext`symop, $CellContext`i]]}]; $CellContext`colz = 
          Table[
            Part[$CellContext`colors, $CellContext`i], {$CellContext`i, 1, 
             Length[$CellContext`ds]}, {$CellContext`j, 1, 
             Length[
              Part[$CellContext`symop, $CellContext`i]]}]; $CellContext`gams = 
          Table[Part[$CellContext`dmult, $CellContext`i, $CellContext`j] 
            Normalize[
              
              Part[$CellContext`symop, $CellContext`i, $CellContext`j]], \
{$CellContext`i, 1, 
             Length[$CellContext`normsxyz]}, {$CellContext`j, 1, 
             Length[
              
              Part[$CellContext`symop, $CellContext`i]]}]; \
$CellContext`eliminatedQ = Table[
            $CellContext`outsideWulffCompiled[
             Part[$CellContext`gams, $CellContext`i, $CellContext`j], 
             Part[$CellContext`gams, $CellContext`k, 1]], {$CellContext`k, 
             Length[$CellContext`gams]}, {$CellContext`i, 
             If[$CellContext`k == 1, 
              Table[$CellContext`a, {$CellContext`a, 2, 
                Length[$CellContext`gams]}], 
              If[$CellContext`k == Length[$CellContext`gams], 
               Table[$CellContext`a, {$CellContext`a, 1, $CellContext`k - 1}], 
               Join[
                Table[$CellContext`a, {$CellContext`a, $CellContext`k - 1}], 
                Table[$CellContext`a, {$CellContext`a, $CellContext`k + 1, 
                  Length[$CellContext`gams]}]]]]}, {$CellContext`j, 
             Length[
              
              Part[$CellContext`gams, $CellContext`i]]}]; \
$CellContext`survivingGroups = Select[
            Table[
             If[
              MemberQ[
               Flatten[
                Part[$CellContext`eliminatedQ, $CellContext`i]], True], 
              Null, $CellContext`i], {$CellContext`i, 
              Length[$CellContext`gams]}], NumericQ]; $CellContext`newColors = 
          Flatten[
            Table[
             
             Part[$CellContext`colz, $CellContext`i], {$CellContext`i, \
$CellContext`survivingGroups}]]; $CellContext`newGsPre = Flatten[
            Table[{
              
              Part[$CellContext`gams, $CellContext`i, $CellContext`j], \
$CellContext`i}, {$CellContext`i, $CellContext`survivingGroups}, \
{$CellContext`j, 
              Length[
               Part[$CellContext`gams, $CellContext`i]]}], 
            1]; $CellContext`newGs = Table[
            Join[
             
             Part[$CellContext`newGsPre, $CellContext`i], {$CellContext`i}], \
{$CellContext`i, 
             Length[$CellContext`newGsPre]}]; $CellContext`neighbors = Table[
            $CellContext`neighborQ[$CellContext`i, $CellContext`newGs, \
$CellContext`sensitiv], {$CellContext`i, 
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
             Length[$CellContext`verts2]}]; $CellContext`rotMats = Table[
            If[Dot[
                Part[$CellContext`newGs, $CellContext`i, 1], {0., 0., 1.}]/
              Norm[
               Part[$CellContext`newGs, $CellContext`i, 1]] == -1, 
             RotationMatrix[Pi, {1., 0., 0.}], 
             RotationMatrix[{
               Part[$CellContext`newGs, $CellContext`i, 1], {0., 0., 
               1.}}]], {$CellContext`i, 
             Length[$CellContext`newGs]}]; $CellContext`rotatedVerts = 
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
             Length[$CellContext`rotatedVerts]}]; $CellContext`vertsfin = 
          Table[
            
            Part[$CellContext`sortedVerts, $CellContext`i, $CellContext`j, 
             1], {$CellContext`i, 
             Length[$CellContext`newGs]}, {$CellContext`j, 
             Length[
              
              Part[$CellContext`sortedVerts, $CellContext`i]]}]; \
$CellContext`onePerFamily = Table[
            Sum[
             Length[
              
              Part[$CellContext`symop, $CellContext`i]], {$CellContext`i, \
$CellContext`j}], {$CellContext`j, 
             Length[$CellContext`survivingGroups]}]; $CellContext`areas = 
          Table[0., {$CellContext`i, 1, 
             Length[$CellContext`symop]}]; 
         For[$CellContext`i = 1, $CellContext`i <= 
           Length[$CellContext`survivingGroups], 
           Increment[$CellContext`i], Part[$CellContext`areas, 
             Part[$CellContext`survivingGroups, $CellContext`i]] = N[
             Re[
              $CellContext`findarea[
               Part[$CellContext`vertsfin, 
                
                Part[$CellContext`onePerFamily, $CellContext`i]]]]]]; \
$CellContext`totvol = (1/3) Sum[
             N[Re[
                $CellContext`findarea[
                 Part[$CellContext`vertsfin, $CellContext`i]]] Norm[
                
                Part[$CellContext`newGsPre, $CellContext`i, 
                 1]]], {$CellContext`i, 
              Length[$CellContext`newGsPre]}]; $CellContext`wulffshape = 
          Graphics3D[{
             Opacity[$CellContext`opacity], 
             Flatten[
              Table[{
                Part[
                 Flatten[$CellContext`newColors], $CellContext`i], 
                Polygon[
                 Join[
                  Table[
                   Part[$CellContext`vertTest, $CellContext`i, 
                    
                    Part[$CellContext`sortedVerts, $CellContext`i, \
$CellContext`j, 2], 1], {$CellContext`j, 
                    Length[
                    Part[$CellContext`vertTest, $CellContext`i]]}], {
                   Part[$CellContext`vertTest, $CellContext`i, 
                    Part[$CellContext`sortedVerts, $CellContext`i, 1, 2], 
                    1]}]]}, {$CellContext`i, 
                Length[$CellContext`vertTest]}], 1]}, Lighting -> "Neutral", 
            ViewPoint -> 10 $CellContext`vpr, 
            ViewVertical -> $CellContext`vvr, ImageSize -> Large, Boxed -> 
            False]; $CellContext`withaxes = If[
            Not[$CellContext`showAxes], $CellContext`wulffshape, 
            Show[$CellContext`wulffshape, 
             Graphics3D[{Red, 
               Arrowheads[0.05], 
               Arrow[
                Tube[{{0, 0, 0}, 2 Normalize[$CellContext`avect]}, 0.025]]}], 
             
             Graphics3D[{Green, 
               Arrowheads[0.05], 
               Arrow[
                Tube[{{0, 0, 0}, 2 Normalize[$CellContext`bvect]}, 0.025]]}], 
             
             Graphics3D[{Blue, 
               Arrowheads[0.05], 
               Arrow[
                
                Tube[{{0, 0, 0}, 2 Normalize[$CellContext`cvect]}, 
                 0.025]]}]]]; GraphicsColumn[{$CellContext`withaxes, 
            GraphicsColumn[
             Join[{
               Text[
                Style[
                 StringJoin["Volume = ", 
                  ToString[
                   Round[$CellContext`totvol, 0.001]]], 20]]}, 
              Table[
               Graphics[{
                 Part[$CellContext`colors, $CellContext`i], 
                 Rectangle[{-1.5, -0.5}, {1.5, 0.5}], Black, 
                 Text[
                  Style[
                   StringJoin["A", 
                    ToString[$CellContext`i], " = ", 
                    ToString[
                    Round[
                    Part[$CellContext`areas, $CellContext`i], 0.001]], 
                    " \[Times]", 
                    ToString[
                    Length[
                    Part[$CellContext`symop, $CellContext`i]]], " facets"], 
                   18], {0., 0.}]}], {$CellContext`i, 
                Length[$CellContext`colors]}]]]}]], $CellContext`vpr = {5, 1, 
        1}, $CellContext`vvr = {0, 0, 
        1}, $CellContext`cartesian1 = {{
         "Inf", "Inf", {0, 0, 2}}, {{1, 0, 0}, "Inf", "Inf"}, {{1, 0, 
          0}, {(-1)/2, Sqrt[3]/2, 0}, {0, 0, 2}}}, $CellContext`colz = {
         RGBColor[1, 0, 1], 
         RGBColor[1, 1, 0], 
         RGBColor[0, 1, 1]}, $CellContext`gams = CompressedData["
1:eJxdkVtIVFEUhqcpvBtaaGqFeX/I0kqLHmQllsQYZKISJEWmFOrMMGSapoFd
jSQUgkxjLC+ppCU19JKxhpFyYhqxydHBy3joZkljWnghovJh/+fBA4fN/vbZ
3/rXOmG52ox8pUKhSFh+Vy+/9TGWnS+aZvmtaVvF7agxrLQm6027u5+R6iIH
ewaO1tNUwmlX7w47dbk1eAYeGSU/r+7Axs0Si5UU4sldav3RsOgkrMWasHuV
niZ219VU+cYaWLm4d2BL6zA9UDtOhT6Z475Sa8Qvq0QZJwqK9+U56Jn3XIzk
mKHC6d2d61LtNPuu/GZQ+gTVnX9k74/t4fQW37uZHpNY6dWCpuaC2sYqvpZs
vGShi5N1AXHWcRry2tDi1fGTXA6lVHbYwWKl4JCcQ/reD1SSEV/mPOii+dfq
5k9LY3J+PBO1iQF7Sgc5Ye0BfW5aFT00tg3nLzhZ9AXOgqNf7OXzFZzgA1+Y
WXV/xDDJyeX+SfoCiU+eywuOjpDkvTinFZxwDxzf4RzcGGcL167/wp0lPpVx
u+bYbTTRY3/XMBdu7VAXXbVxqs6aE53dx6Gffzc63Md5XrqsmHbYOKTxuH+8
h4nADWb94cyUKX6cYg76aJ0leAQnwWW/8JDwyH5Rl0Rd2S9yksgp++FFfXD0
g3vgPpuiDSXOKU4b+q7xcQzy9TPasxuVErvC/6n+RH1l7+xuiz1rgKoFRz70
jTyYC/KCi/uyDx7UE/UJddEn5g0P5os5gQsPoQ94kFvUlfNjXvjPK+ZG+D/g
uI8+4EFu1Edd09Mm7Z2/tWSoVpm/Fc1w0i3zlWCNk9t07cd0qgJqjqxIslT3
80v1++3Pb4yAs+AELjwsPAQPvDgHhxc+eOBFfXB4kRee//RIir4=
        
        "], $CellContext`newGs = {{{-1., 0., 0.}, 1, 1}, {{0., -1., 0.}, 1, 
          2}, {{0., 0., -1.}, 1, 3}, {{0., 0., 1.}, 1, 4}, {{0., 1., 0.}, 1, 
          5}, {{1., 0., 0.}, 1, 
          6}, {{-0.7071067811865475, -0.7071067811865475, 0.}, 2, 
          7}, {{-0.7071067811865475, 0., -0.7071067811865475}, 2, 
          8}, {{-0.7071067811865475, 0., 0.7071067811865475}, 2, 
          9}, {{-0.7071067811865475, 0.7071067811865475, 0.}, 2, 10}, {{
          0., -0.7071067811865475, -0.7071067811865475}, 2, 11}, {{
          0., -0.7071067811865475, 0.7071067811865475}, 2, 12}, {{0., 
          0.7071067811865475, -0.7071067811865475}, 2, 13}, {{0., 
          0.7071067811865475, 0.7071067811865475}, 2, 14}, {{
          0.7071067811865475, -0.7071067811865475, 0.}, 2, 15}, {{
          0.7071067811865475, 0., -0.7071067811865475}, 2, 16}, {{
          0.7071067811865475, 0., 0.7071067811865475}, 2, 17}, {{
          0.7071067811865475, 0.7071067811865475, 0.}, 2, 
          18}, {{-0.5773502691896257, -0.5773502691896257, \
-0.5773502691896257}, 3, 19}, {{-0.5773502691896257, -0.5773502691896257, 
          0.5773502691896257}, 3, 20}, {{-0.5773502691896257, 
          0.5773502691896257, -0.5773502691896257}, 3, 
          21}, {{-0.5773502691896257, 0.5773502691896257, 0.5773502691896257},
           3, 22}, {{
          0.5773502691896257, -0.5773502691896257, -0.5773502691896257}, 3, 
          23}, {{0.5773502691896257, -0.5773502691896257, 0.5773502691896257},
           3, 24}, {{0.5773502691896257, 
          0.5773502691896257, -0.5773502691896257}, 3, 25}, {{
          0.5773502691896257, 0.5773502691896257, 0.5773502691896257}, 3, 
          26}}, $CellContext`verts = {{}, {{-0.20159917054231052`, 
         0.3723420779138037, 0.4300808761117892}, {-0.11688637194187097`, 
         0.5850144023988143, 0.38271084408355643`}, {0.5882685564391977, 
         0.8728926964225532, 0.0948325500598172}, {0.72166737340691, 
         0.7473084416364734, 0.053299295423007285`}, {0.9366133550654638, 
         0.21102702043565572`, 0.010351501575323118`}, {
         0.9709584166035229, -0.16382927098969952`, 0.024250344707975376`}, {
         0.8820397377010288, -0.5379804132476218, 0.08480779950174346}, {
         0.38547688422855453`, -0.7407013492856173, 0.28752873553973884`}, {
         0.18387771368624503`, -0.644915396742476, 0.3570450754533753}}, {{
         0.38547688422855453`, -0.7407013492856174, 0.2875287355397388}, {
         0.8820397377010288, -0.537980413247622, 0.08480779950174348}, {
         0.7320577810041662, -0.7069399816258986, 0.03830798596730557}, {
         0.3854768842285545, -0.9493151142275834, 
         0.07891497059777264}}, {{-0.3847184338264358, 0.9130403465861696, 
         0.05468489989620068}, {-0.20438744168097542`, 0.9504929451451182, 
         0.01723230133725235}, {0.17336525985871815`, 0.9526906212773754, 
         0.015034625204994993`}, {0.5882685564391977, 0.8728926964225532, 
         0.0948325500598172}, {-0.11688637194187093`, 0.585014402398814, 
         0.3827108440835564}}, {{-0.932824948656767, -0.21283928020420254`, 
         0.008473401014322604}, {-1.0116396793106948`, 0.0930202374524603, 
         0.04520577210124556}, {-0.20159917054231047`, 0.37234207791380364`, 
         0.4300808761117892}, {0.18387771368624503`, -0.6449153967424757, 
         0.3570450754533753}, {-0.46150304132604264`, -0.8674585144471088, 
         0.05040487348443895}, {-0.6732353091503497, -0.6971555709393531, 
         0.003999319321016686}}, {}, {}, {{
         0.18387771368624506`, -0.6449153967424758, 0.3570450754533753}, {
         0.3854768842285546, -0.7407013492856173, 0.2875287355397388}, {
         0.38547688422855453`, -0.9493151142275834, 0.07891497059777262}, {
         0.1930558528731612, -0.974180864727788, 
         0.028975575489416504`}, {-0.17784081562340467`, -0.9441169392184886, 
         0.010709382473085047`}, {-0.46150304132604264`, -0.8674585144471091, 
         0.050404873484439026`}}, {{-0.6805109092704953, 
         0.657161746216273, -0.012362284932027354`}, {-0.3847184338264358, 
         0.9130403465861696, 0.05468489989620074}, {-0.11688637194187093`, 
         0.585014402398814, 0.3827108440835564}, {-0.2015991705423105, 
         0.37234207791380364`, 0.4300808761117893}, {-1.0116396793106948`, 
         0.09302023745246024, 0.04520577210124554}, {-0.9856693735861649, 
         0.15614999062036594`, 
         0.031671713885370635`}}, {}, {}, {{-0.39776988540891756`, \
-0.4119027742539354, -0.2572763163682461}, {
         0.4119027742539353, -0.39776988540891767`, -0.2572763163682461}, {
         0.39776988540891756`, 
         0.4119027742539354, -0.2572763163682461}, {-0.4119027742539353, 
         0.39776988540891767`, -0.2572763163682461}}, {}, {}, {}, {}, {}, {}, \
{}, {}, {}, {{-0.9328249486567669, -0.2128392802042029, 
         0.008473401014322604}, {-0.6732353091503497, -0.697155570939353, 
         0.003999319321016609}, {-0.4353488257753383, -0.4508169061634919, \
-0.23815013528923348`}, {-0.4353488257753387, -0.4508169061634925, \
-0.23815013528923368`}, {-0.43534882577533873`, -0.45081690616349157`, \
-0.23815013528923334`}}, {{-0.4508169061634916, 
         0.4353488257753383, -0.23815013528923362`}, {-0.4508169061634924, 
         0.43534882577533873`, -0.23815013528923357`}, {-0.4508169061634923, 
         0.43534882577533934`, -0.23815013528923362`}, {-0.6805109092704956, 
         0.6571617462162727, -0.012362284932027368`}, {-0.9856693735861649, 
         0.15614999062036594`, 0.031671713885370635`}}, {}, {}, {{
         0.8820397377010288, -0.5379804132476219, 0.08480779950174344}, {
         0.9709584166035229, -0.16382927098969946`, 0.024250344707975376`}, {
         0.4508169061634916, -0.4353488257753383, -0.23815013528923362`}, {
         0.4508169061634924, -0.43534882577533873`, -0.23815013528923357`}, {
         0.4508169061634923, -0.43534882577533934`, -0.23815013528923362`}, {
         0.7320577810041663, -0.7069399816258983, 0.0383079859673056}}, {{
         0.7216673734069101, 0.7473084416364734, 0.05329929542300726}, {
         0.4353488257753383, 0.4508169061634919, -0.23815013528923348`}, {
         0.4353488257753387, 0.4508169061634925, -0.23815013528923368`}, {
         0.43534882577533873`, 0.45081690616349157`, -0.23815013528923334`}, {
         0.9366133550654641, 0.211027020435656, 
         0.010351501575323122`}}, {}, {}, {}, {}, {}, {{-0.6732353091503496, \
-0.6971555709393525, 
         0.0039993193210165826`}, {-0.46150304132604253`, -0.8674585144471091,
          0.05040487348443899}, {-0.17784081562340456`, -0.9441169392184886, 
         0.010709382473085047`}, {-0.4353488257753383, -0.4508169061634919, \
-0.23815013528923362`}, {-0.4353488257753387, -0.45081690616349224`, \
-0.23815013528923348`}, {-0.43534882577533884`, -0.450816906163492, \
-0.23815013528923343`}}, {{-0.4508169061634919, 
         0.4353488257753379, -0.23815013528923348`}, {-0.45081690616349224`, 
         0.4353488257753387, -0.23815013528923362`}, {-0.450816906163492, 
         0.435348825775339, -0.23815013528923343`}, {-0.20438744168097503`, 
         0.9504929451451182, 0.01723230133725235}, {-0.3847184338264358, 
         0.9130403465861701, 0.054684899896200796`}, {-0.6805109092704956, 
         0.6571617462162727, -0.012362284932027368`}}, {}, {}, {{
         0.19305585287316077`, -0.974180864727788, 0.028975575489416504`}, {
         0.3854768842285546, -0.9493151142275834, 0.07891497059777268}, {
         0.7320577810041662, -0.7069399816258981, 0.03830798596730551}, {
         0.4508169061634919, -0.4353488257753379, -0.23815013528923348`}, {
         0.45081690616349224`, -0.4353488257753387, -0.23815013528923362`}, {
         0.450816906163492, -0.435348825775339, -0.23815013528923343`}}, {{
         0.17336525985871842`, 0.9526906212773754, 0.015034625204994993`}, {
         0.4353488257753383, 0.4508169061634919, -0.23815013528923362`}, {
         0.4353488257753387, 0.45081690616349224`, -0.23815013528923348`}, {
         0.43534882577533884`, 0.450816906163492, -0.23815013528923343`}, {
         0.72166737340691, 0.747308441636474, 0.05329929542300733}, {
         0.588268556439198, 0.8728926964225531, 
         0.0948325500598172}}, {}, {}, {}, {}, {}, {}, {}, \
{{-0.17784081562340456`, -0.9441169392184886, 0.010709382473085022`}, {
         0.19305585287316077`, -0.9741808647277881, 0.028975575489416504`}, {
         0.4508169061634924, -0.4353488257753382, -0.23815013528923362`}, {
         0.450816906163492, -0.4353488257753387, -0.23815013528923357`}, {
         0.4508169061634919, -0.43534882577533857`, -0.23815013528923343`}, {
         0.4119027742539354, -0.39776988540891756`, -0.2572763163682461}, \
{-0.39776988540891767`, -0.4119027742539353, -0.2572763163682461}, \
{-0.43534882577533857`, -0.4508169061634928, -0.2381501352892335}, \
{-0.43534882577533884`, -0.4508169061634923, -0.23815013528923357`}, \
{-0.43534882577533857`, -0.4508169061634925, -0.23815013528923337`}}, \
{{-0.4508169061634924, 
         0.4353488257753382, -0.23815013528923362`}, {-0.450816906163492, 
         0.4353488257753387, -0.23815013528923357`}, {-0.4508169061634919, 
         0.43534882577533857`, -0.23815013528923343`}, {-0.4119027742539354, 
         0.39776988540891756`, -0.2572763163682461}, {0.39776988540891767`, 
         0.4119027742539353, -0.2572763163682461}, {0.43534882577533857`, 
         0.4508169061634928, -0.2381501352892335}, {0.43534882577533884`, 
         0.4508169061634923, -0.23815013528923357`}, {0.43534882577533857`, 
         0.4508169061634925, -0.23815013528923337`}, {0.17336525985871812`, 
         0.9526906212773757, 0.015034625204995}, {-0.20438744168097517`, 
         0.950492945145118, 
         0.017232301337252377`}}, {}, {}, {{-0.4119027742539353, 
         0.39776988540891767`, -0.2572763163682461}, {-0.4508169061634925, 
         0.43534882577533857`, -0.23815013528923362`}, {-0.45081690616349224`,
          0.43534882577533884`, -0.2381501352892335}, {-0.4508169061634923, 
         0.4353488257753387, -0.23815013528923337`}, {-0.9856693735861645, 
         0.15614999062036614`, 0.03167171388537054}, {-1.0116396793106945`, 
         0.0930202374524603, 
         0.045205772101245704`}, {-0.9328249486567669, -0.21283928020420267`, 
         0.008473401014322667}, {-0.43534882577533845`, -0.4508169061634924, \
-0.23815013528923357`}, {-0.43534882577533873`, -0.45081690616349224`, \
-0.23815013528923362`}, {-0.43534882577533873`, -0.4508169061634919, \
-0.23815013528923337`}, {-0.39776988540891756`, -0.4119027742539354, \
-0.2572763163682461}}, {{0.9366133550654638, 0.21102702043565608`, 
         0.010351501575323073`}, {0.43534882577533845`, 
         0.4508169061634924, -0.23815013528923357`}, {0.43534882577533873`, 
         0.45081690616349224`, -0.23815013528923362`}, {0.43534882577533873`, 
         0.4508169061634919, -0.23815013528923337`}, {0.39776988540891756`, 
         0.4119027742539354, -0.2572763163682461}, {
         0.4119027742539353, -0.39776988540891767`, -0.2572763163682461}, {
         0.4508169061634925, -0.43534882577533857`, -0.23815013528923362`}, {
         0.45081690616349224`, -0.43534882577533884`, -0.2381501352892335}, {
         0.4508169061634923, -0.4353488257753387, -0.23815013528923337`}, {
         0.9709584166035229, -0.1638292709896998, 
         0.02425034470797537}}, {}}, $CellContext`verts2 = \
{{{-0.9999999999999999, 
         0.23606797749978953`, -0.23606797749978953`}, {-0.9999999999999999, 
         0.23606797749978953`, 
         0.23606797749978953`}, {-0.9999999999999999, -0.23606797749978953`, 
         0.23606797749978953`}, {-0.9999999999999999, -0.23606797749978953`, \
-0.23606797749978953`}}, {{-0.23606797749978953`, -0.9999999999999999, 
         0.23606797749978953`}, {0.23606797749978953`, -0.9999999999999999, 
         0.23606797749978953`}, {
         0.23606797749978953`, -0.9999999999999999, -0.23606797749978953`}, \
{-0.23606797749978953`, -0.9999999999999999, -0.23606797749978953`}}, \
{{-0.23606797749978953`, -0.23606797749978953`, -0.9999999999999999}, {
         0.23606797749978953`, -0.23606797749978953`, -0.9999999999999999}, {
         0.23606797749978953`, 
         0.23606797749978953`, -0.9999999999999999}, {-0.23606797749978953`, 
         0.23606797749978953`, -0.9999999999999999}}, {{-0.23606797749978953`,
          0.23606797749978953`, 0.9999999999999999}, {0.23606797749978953`, 
         0.23606797749978953`, 0.9999999999999999}, {
         0.23606797749978953`, -0.23606797749978953`, 
         0.9999999999999999}, {-0.23606797749978953`, -0.23606797749978953`, 
         0.9999999999999999}}, {{-0.23606797749978953`, 
         0.9999999999999999, -0.23606797749978953`}, {0.23606797749978953`, 
         0.9999999999999999, -0.23606797749978953`}, {0.23606797749978953`, 
         0.9999999999999999, 0.23606797749978953`}, {-0.23606797749978953`, 
         0.9999999999999999, 0.23606797749978953`}}, {{0.9999999999999999, 
         0.23606797749978953`, 0.23606797749978953`}, {0.9999999999999999, 
         0.23606797749978953`, -0.23606797749978953`}, {
         0.9999999999999999, -0.23606797749978953`, -0.23606797749978953`}, {
         0.9999999999999999, -0.23606797749978953`, 
         0.23606797749978953`}}, {{-0.09137584690105595, -0.8218544151266945, \
-0.5923591472464003}, {
         0.09137584690105595, -0.8218544151266945, -0.5923591472464003}, {
         0.20612348084120613`, -0.7071067811865472, -0.7071067811865471}, {
         0.0913758469010566, -0.5923591472464003, -0.8218544151266945}, \
{-0.0913758469010566, -0.5923591472464003, -0.8218544151266945}, \
{-0.20612348084120613`, -0.7071067811865472, -0.7071067811865471}}, \
{{-0.20612348084120613`, -0.7071067811865472, 
         0.7071067811865471}, {-0.0913758469010566, -0.5923591472464003, 
         0.8218544151266945}, {0.0913758469010566, -0.5923591472464003, 
         0.8218544151266945}, {0.20612348084120613`, -0.7071067811865472, 
         0.7071067811865471}, {0.09137584690105595, -0.8218544151266945, 
         0.5923591472464003}, {-0.09137584690105595, -0.8218544151266945, 
         0.5923591472464003}}, {{-0.20612348084120613`, 
         0.7071067811865472, -0.7071067811865471}, {-0.0913758469010566, 
         0.5923591472464003, -0.8218544151266945}, {0.0913758469010566, 
         0.5923591472464003, -0.8218544151266945}, {0.20612348084120613`, 
         0.7071067811865472, -0.7071067811865471}, {0.09137584690105595, 
         0.8218544151266945, -0.5923591472464003}, {-0.09137584690105595, 
         0.8218544151266945, -0.5923591472464003}}, {{-0.09137584690105595, 
         0.8218544151266945, 0.5923591472464003}, {0.09137584690105595, 
         0.8218544151266945, 0.5923591472464003}, {0.20612348084120613`, 
         0.7071067811865472, 0.7071067811865471}, {0.0913758469010566, 
         0.5923591472464003, 0.8218544151266945}, {-0.0913758469010566, 
         0.5923591472464003, 0.8218544151266945}, {-0.20612348084120613`, 
         0.7071067811865472, 0.7071067811865471}}, {{-0.5923591472464003, 
         0.0913758469010566, -0.8218544151266945}, {-0.7071067811865475, 
         0.20612348084120613`, -0.7071067811865474}, {-0.8218544151266945, 
         0.09137584690105595, -0.5923591472464003}, {-0.8218544151266945, \
-0.09137584690105595, -0.5923591472464003}, {-0.7071067811865475, \
-0.20612348084120613`, -0.7071067811865474}, {-0.5923591472464003, \
-0.0913758469010566, -0.8218544151266945}}, {{-0.8218544151266945, 
         0.09137584690105595, 0.5923591472464003}, {-0.7071067811865475, 
         0.20612348084120613`, 0.7071067811865474}, {-0.5923591472464003, 
         0.0913758469010566, 
         0.8218544151266945}, {-0.5923591472464003, -0.0913758469010566, 
         0.8218544151266945}, {-0.7071067811865475, -0.20612348084120613`, 
         0.7071067811865474}, {-0.8218544151266945, -0.09137584690105595, 
         0.5923591472464003}}, {{-0.8218544151266945, -0.5923591472464003, \
-0.09137584690105643}, {-0.8218544151266945, -0.5923591472464003, 
         0.09137584690105643}, {-0.7071067811865475, -0.7071067811865469, 
         0.20612348084120596`}, {-0.5923591472464003, -0.8218544151266945, 
         0.09137584690105578}, {-0.5923591472464003, -0.8218544151266945, \
-0.09137584690105578}, {-0.7071067811865475, -0.7071067811865469, \
-0.20612348084120596`}}, {{-0.7071067811865475, 
         0.7071067811865469, -0.20612348084120596`}, {-0.5923591472464003, 
         0.8218544151266945, -0.09137584690105578}, {-0.5923591472464003, 
         0.8218544151266945, 0.09137584690105578}, {-0.7071067811865475, 
         0.7071067811865469, 0.20612348084120596`}, {-0.8218544151266945, 
         0.5923591472464003, 0.09137584690105643}, {-0.8218544151266945, 
         0.5923591472464003, -0.09137584690105643}}, {{0.8218544151266945, 
         0.09137584690105595, -0.5923591472464003}, {0.7071067811865475, 
         0.20612348084120613`, -0.7071067811865474}, {0.5923591472464003, 
         0.0913758469010566, -0.8218544151266945}, {
         0.5923591472464003, -0.0913758469010566, -0.8218544151266945}, {
         0.7071067811865475, -0.20612348084120613`, -0.7071067811865474}, {
         0.8218544151266945, -0.09137584690105595, -0.5923591472464003}}, {{
         0.5923591472464003, 0.0913758469010566, 0.8218544151266945}, {
         0.7071067811865475, 0.20612348084120613`, 0.7071067811865474}, {
         0.8218544151266945, 0.09137584690105595, 0.5923591472464003}, {
         0.8218544151266945, -0.09137584690105595, 0.5923591472464003}, {
         0.7071067811865475, -0.20612348084120613`, 0.7071067811865474}, {
         0.5923591472464003, -0.0913758469010566, 0.8218544151266945}}, {{
         0.7071067811865475, -0.7071067811865469, 0.20612348084120596`}, {
         0.8218544151266945, -0.5923591472464003, 0.09137584690105643}, {
         0.8218544151266945, -0.5923591472464003, -0.09137584690105643}, {
         0.7071067811865475, -0.7071067811865469, -0.20612348084120596`}, {
         0.5923591472464003, -0.8218544151266945, -0.09137584690105578}, {
         0.5923591472464003, -0.8218544151266945, 0.09137584690105578}}, {{
         0.5923591472464003, 0.8218544151266945, 0.09137584690105578}, {
         0.5923591472464003, 0.8218544151266945, -0.09137584690105578}, {
         0.7071067811865475, 0.7071067811865469, -0.20612348084120596`}, {
         0.8218544151266945, 0.5923591472464003, -0.09137584690105643}, {
         0.8218544151266945, 0.5923591472464003, 0.09137584690105643}, {
         0.7071067811865475, 0.7071067811865469, 
         0.20612348084120596`}}, {{-0.6698688597350216, \
-0.39231308809883464`, -0.669868859735022}, {-0.7623874502804167, \
-0.48483167864423055`, -0.4848316786442301}, {-0.6698688597350207, \
-0.6698688597350216, -0.3923130880988349}, {-0.48483167864423066`, \
-0.7623874502804167, -0.48483167864423005`}, {-0.3923130880988354, \
-0.6698688597350211, -0.6698688597350217}, {-0.48483167864423055`, \
-0.4848316786442299, -0.7623874502804163}}, {{-0.7623874502804167, \
-0.48483167864423055`, 
         0.4848316786442301}, {-0.6698688597350216, -0.39231308809883464`, 
         0.669868859735022}, {-0.48483167864423055`, -0.4848316786442299, 
         0.7623874502804163}, {-0.3923130880988354, -0.6698688597350211, 
         0.6698688597350217}, {-0.48483167864423066`, -0.7623874502804167, 
         0.48483167864423005`}, {-0.6698688597350207, -0.6698688597350216, 
         0.3923130880988349}}, {{-0.48483167864423055`, 
         0.4848316786442299, -0.7623874502804163}, {-0.3923130880988354, 
         0.6698688597350211, -0.6698688597350217}, {-0.48483167864423066`, 
         0.7623874502804167, -0.48483167864423005`}, {-0.6698688597350207, 
         0.6698688597350216, -0.3923130880988349}, {-0.7623874502804167, 
         0.48483167864423055`, -0.4848316786442301}, {-0.6698688597350216, 
         0.39231308809883464`, -0.669868859735022}}, {{-0.6698688597350207, 
         0.6698688597350216, 0.3923130880988349}, {-0.48483167864423066`, 
         0.7623874502804167, 0.48483167864423005`}, {-0.3923130880988354, 
         0.6698688597350211, 0.6698688597350217}, {-0.48483167864423055`, 
         0.4848316786442299, 0.7623874502804163}, {-0.6698688597350216, 
         0.39231308809883464`, 0.669868859735022}, {-0.7623874502804167, 
         0.48483167864423055`, 0.4848316786442301}}, {{
         0.6698688597350207, -0.6698688597350216, -0.3923130880988349}, {
         0.7623874502804167, -0.48483167864423055`, -0.4848316786442301}, {
         0.6698688597350216, -0.39231308809883464`, -0.669868859735022}, {
         0.48483167864423055`, -0.4848316786442299, -0.7623874502804163}, {
         0.3923130880988354, -0.6698688597350211, -0.6698688597350217}, {
         0.48483167864423066`, -0.7623874502804167, -0.48483167864423005`}}, \
{{0.48483167864423055`, -0.4848316786442299, 0.7623874502804163}, {
         0.6698688597350216, -0.39231308809883464`, 0.669868859735022}, {
         0.7623874502804167, -0.48483167864423055`, 0.4848316786442301}, {
         0.6698688597350207, -0.6698688597350216, 0.3923130880988349}, {
         0.48483167864423066`, -0.7623874502804167, 0.48483167864423005`}, {
         0.3923130880988354, -0.6698688597350211, 0.6698688597350217}}, {{
         0.48483167864423066`, 0.7623874502804167, -0.48483167864423005`}, {
         0.3923130880988354, 0.6698688597350211, -0.6698688597350217}, {
         0.48483167864423055`, 0.4848316786442299, -0.7623874502804163}, {
         0.6698688597350216, 0.39231308809883464`, -0.669868859735022}, {
         0.7623874502804167, 0.48483167864423055`, -0.4848316786442301}, {
         0.6698688597350207, 0.6698688597350216, -0.3923130880988349}}, {{
         0.3923130880988354, 0.6698688597350211, 0.6698688597350217}, {
         0.48483167864423066`, 0.7623874502804167, 0.48483167864423005`}, {
         0.6698688597350207, 0.6698688597350216, 0.3923130880988349}, {
         0.7623874502804167, 0.48483167864423055`, 0.4848316786442301}, {
         0.6698688597350216, 0.39231308809883464`, 0.669868859735022}, {
         0.48483167864423055`, 0.4848316786442299, 
         0.7623874502804163}}, {{-0.7071067811865469, -0.7071067811865472, \
-0.20612348084120596`}, {-0.5923591472463999, -0.8218544151266949, \
-0.09137584690105825}, {-0.2583702803495047, -0.9888488485751428, \
-0.2583702803495046}, {-0.25837028034950493`, -0.9888488485751422, \
-0.25837028034950427`}, {-0.2583702803495051, -0.9888488485751423, \
-0.25837028034950454`}, {-0.4848316786442311, -0.7623874502804167, \
-0.4848316786442302}, {-0.6698688597350212, -0.6698688597350212, \
-0.392313088098835}}, {{-0.7071067811865469, -0.7071067811865472, 
         0.20612348084120596`}, {-0.6698688597350212, -0.6698688597350212, 
         0.392313088098835}, {-0.4848316786442311, -0.7623874502804167, 
         0.4848316786442302}, {-0.2583702803495047, -0.9888488485751428, 
         0.2583702803495046}, {-0.25837028034950493`, -0.9888488485751422, 
         0.25837028034950427`}, {-0.2583702803495051, -0.9888488485751423, 
         0.25837028034950454`}, {-0.5923591472463999, -0.8218544151266949, 
         0.09137584690105825}}, {{-0.5923591472463999, -0.09137584690105825, \
-0.8218544151266949}, {-0.7071067811865472, -0.2061234808412061, \
-0.7071067811865475}, {-0.6698688597350214, -0.39231308809883475`, \
-0.6698688597350214}, {-0.4848316786442303, -0.4848316786442301, \
-0.762387450280416}, {-0.258370280349505, -0.258370280349505, \
-0.9888488485751429}, {-0.2583702803495047, -0.2583702803495042, \
-0.9888488485751422}, {-0.2583702803495055, -0.25837028034950377`, \
-0.9888488485751427}}, {{-0.7071067811865472, -0.2061234808412061, 
         0.7071067811865475}, {-0.5923591472463999, -0.09137584690105825, 
         0.8218544151266949}, {-0.2583702803495055, -0.25837028034950377`, 
         0.9888488485751427}, {-0.2583702803495047, -0.2583702803495042, 
         0.9888488485751422}, {-0.258370280349505, -0.258370280349505, 
         0.9888488485751429}, {-0.4848316786442303, -0.4848316786442301, 
         0.762387450280416}, {-0.6698688597350214, -0.39231308809883475`, 
         0.6698688597350214}}, {{-0.258370280349505, 
         0.258370280349505, -0.9888488485751429}, {-0.2583702803495047, 
         0.2583702803495042, -0.9888488485751422}, {-0.2583702803495055, 
         0.25837028034950377`, -0.9888488485751427}, {-0.4848316786442303, 
         0.4848316786442301, -0.762387450280416}, {-0.6698688597350214, 
         0.39231308809883475`, -0.6698688597350214}, {-0.7071067811865472, 
         0.2061234808412061, -0.7071067811865475}, {-0.5923591472463999, 
         0.09137584690105825, -0.8218544151266949}}, {{-0.6698688597350214, 
         0.39231308809883475`, 0.6698688597350214}, {-0.4848316786442303, 
         0.4848316786442301, 0.762387450280416}, {-0.258370280349505, 
         0.258370280349505, 0.9888488485751429}, {-0.2583702803495047, 
         0.2583702803495042, 0.9888488485751422}, {-0.2583702803495055, 
         0.25837028034950377`, 0.9888488485751427}, {-0.5923591472463999, 
         0.09137584690105825, 0.8218544151266949}, {-0.7071067811865472, 
         0.2061234808412061, 0.7071067811865475}}, {{-0.6698688597350212, 
         0.6698688597350212, -0.392313088098835}, {-0.4848316786442311, 
         0.7623874502804167, -0.4848316786442302}, {-0.2583702803495047, 
         0.9888488485751428, -0.2583702803495046}, {-0.25837028034950493`, 
         0.9888488485751422, -0.25837028034950427`}, {-0.2583702803495051, 
         0.9888488485751423, -0.25837028034950454`}, {-0.5923591472463999, 
         0.8218544151266949, -0.09137584690105825}, {-0.7071067811865469, 
         0.7071067811865472, -0.20612348084120596`}}, {{-0.5923591472463999, 
         0.8218544151266949, 0.09137584690105825}, {-0.2583702803495047, 
         0.9888488485751428, 0.2583702803495046}, {-0.25837028034950493`, 
         0.9888488485751422, 0.25837028034950427`}, {-0.2583702803495051, 
         0.9888488485751423, 0.25837028034950454`}, {-0.4848316786442311, 
         0.7623874502804167, 0.4848316786442302}, {-0.6698688597350212, 
         0.6698688597350212, 0.392313088098835}, {-0.7071067811865469, 
         0.7071067811865472, 0.20612348084120596`}}, {{
         0.5923591472463999, -0.8218544151266949, -0.09137584690105825}, {
         0.7071067811865469, -0.7071067811865472, -0.20612348084120596`}, {
         0.6698688597350212, -0.6698688597350212, -0.392313088098835}, {
         0.4848316786442311, -0.7623874502804167, -0.4848316786442302}, {
         0.2583702803495047, -0.9888488485751428, -0.2583702803495046}, {
         0.25837028034950493`, -0.9888488485751422, -0.25837028034950427`}, {
         0.2583702803495051, -0.9888488485751423, -0.25837028034950454`}}, {{
         0.4848316786442311, -0.7623874502804167, 0.4848316786442302}, {
         0.6698688597350212, -0.6698688597350212, 0.392313088098835}, {
         0.7071067811865469, -0.7071067811865472, 0.20612348084120596`}, {
         0.5923591472463999, -0.8218544151266949, 0.09137584690105825}, {
         0.2583702803495047, -0.9888488485751428, 0.2583702803495046}, {
         0.25837028034950493`, -0.9888488485751422, 0.25837028034950427`}, {
         0.2583702803495051, -0.9888488485751423, 0.25837028034950454`}}, {{
         0.6698688597350214, -0.39231308809883475`, -0.6698688597350214}, {
         0.7071067811865472, -0.2061234808412061, -0.7071067811865475}, {
         0.5923591472463999, -0.09137584690105825, -0.8218544151266949}, {
         0.258370280349505, -0.258370280349505, -0.9888488485751429}, {
         0.2583702803495047, -0.2583702803495042, -0.9888488485751422}, {
         0.2583702803495055, -0.25837028034950377`, -0.9888488485751427}, {
         0.4848316786442303, -0.4848316786442301, -0.762387450280416}}, {{
         0.258370280349505, -0.258370280349505, 0.9888488485751429}, {
         0.2583702803495047, -0.2583702803495042, 0.9888488485751422}, {
         0.2583702803495055, -0.25837028034950377`, 0.9888488485751427}, {
         0.5923591472463999, -0.09137584690105825, 0.8218544151266949}, {
         0.7071067811865472, -0.2061234808412061, 0.7071067811865475}, {
         0.6698688597350214, -0.39231308809883475`, 0.6698688597350214}, {
         0.4848316786442303, -0.4848316786442301, 0.762387450280416}}, {{
         0.4848316786442303, 0.4848316786442301, -0.762387450280416}, {
         0.258370280349505, 0.258370280349505, -0.9888488485751429}, {
         0.2583702803495047, 0.2583702803495042, -0.9888488485751422}, {
         0.2583702803495055, 0.25837028034950377`, -0.9888488485751427}, {
         0.5923591472463999, 0.09137584690105825, -0.8218544151266949}, {
         0.7071067811865472, 0.2061234808412061, -0.7071067811865475}, {
         0.6698688597350214, 0.39231308809883475`, -0.6698688597350214}}, {{
         0.4848316786442303, 0.4848316786442301, 0.762387450280416}, {
         0.6698688597350214, 0.39231308809883475`, 0.6698688597350214}, {
         0.7071067811865472, 0.2061234808412061, 0.7071067811865475}, {
         0.5923591472463999, 0.09137584690105825, 0.8218544151266949}, {
         0.258370280349505, 0.258370280349505, 0.9888488485751429}, {
         0.2583702803495047, 0.2583702803495042, 0.9888488485751422}, {
         0.2583702803495055, 0.25837028034950377`, 0.9888488485751427}}, {{
         0.2583702803495047, 0.9888488485751428, -0.2583702803495046}, {
         0.25837028034950493`, 0.9888488485751422, -0.25837028034950427`}, {
         0.2583702803495051, 0.9888488485751423, -0.25837028034950454`}, {
         0.4848316786442311, 0.7623874502804167, -0.4848316786442302}, {
         0.6698688597350212, 0.6698688597350212, -0.392313088098835}, {
         0.7071067811865469, 0.7071067811865472, -0.20612348084120596`}, {
         0.5923591472463999, 0.8218544151266949, -0.09137584690105825}}, {{
         0.2583702803495047, 0.9888488485751428, 0.2583702803495046}, {
         0.25837028034950493`, 0.9888488485751422, 0.25837028034950427`}, {
         0.2583702803495051, 0.9888488485751423, 0.25837028034950454`}, {
         0.5923591472463999, 0.8218544151266949, 0.09137584690105825}, {
         0.7071067811865469, 0.7071067811865472, 0.20612348084120596`}, {
         0.6698688597350212, 0.6698688597350212, 0.392313088098835}, {
         0.4848316786442311, 0.7623874502804167, 
         0.4848316786442302}}, {{-0.9888488485751429, -0.2583702803495047, \
-0.2583702803495049}, {-0.9888488485751424, -0.25837028034950477`, \
-0.25837028034950427`}, {-0.988848848575142, -0.2583702803495059, \
-0.25837028034950416`}, {-0.8218544151266949, -0.5923591472463999, \
-0.09137584690105825}, {-0.7071067811865474, -0.7071067811865474, \
-0.20612348084120655`}, {-0.6698688597350213, -0.6698688597350211, \
-0.39231308809883453`}, {-0.7623874502804165, -0.48483167864423055`, \
-0.4848316786442301}}, {{-0.9888488485751429, -0.2583702803495047, 
         0.2583702803495049}, {-0.9888488485751424, -0.25837028034950477`, 
         0.25837028034950427`}, {-0.988848848575142, -0.2583702803495059, 
         0.25837028034950416`}, {-0.7623874502804165, -0.48483167864423055`, 
         0.4848316786442301}, {-0.6698688597350213, -0.6698688597350211, 
         0.39231308809883453`}, {-0.7071067811865474, -0.7071067811865474, 
         0.20612348084120655`}, {-0.8218544151266949, -0.5923591472463999, 
         0.09137584690105825}}, {{-0.7623874502804165, 
         0.48483167864423055`, -0.4848316786442301}, {-0.6698688597350213, 
         0.6698688597350211, -0.39231308809883453`}, {-0.7071067811865474, 
         0.7071067811865474, -0.20612348084120655`}, {-0.8218544151266949, 
         0.5923591472463999, -0.09137584690105825}, {-0.9888488485751429, 
         0.2583702803495047, -0.2583702803495049}, {-0.9888488485751424, 
         0.25837028034950477`, -0.25837028034950427`}, {-0.988848848575142, 
         0.2583702803495059, -0.25837028034950416`}}, {{-0.8218544151266949, 
         0.5923591472463999, 0.09137584690105825}, {-0.7071067811865474, 
         0.7071067811865474, 0.20612348084120655`}, {-0.6698688597350213, 
         0.6698688597350211, 0.39231308809883453`}, {-0.7623874502804165, 
         0.48483167864423055`, 0.4848316786442301}, {-0.9888488485751429, 
         0.2583702803495047, 0.2583702803495049}, {-0.9888488485751424, 
         0.25837028034950477`, 0.25837028034950427`}, {-0.988848848575142, 
         0.2583702803495059, 
         0.25837028034950416`}}, {{-0.8218544151266949, -0.09137584690105825, \
-0.5923591472463999}, {-0.9888488485751428, -0.2583702803495049, \
-0.2583702803495047}, {-0.9888488485751424, -0.25837028034950427`, \
-0.25837028034950477`}, {-0.9888488485751428, -0.2583702803495045, \
-0.2583702803495056}, {-0.762387450280417, -0.48483167864423043`, \
-0.48483167864423043`}, {-0.6698688597350216, -0.3923130880988351, \
-0.6698688597350214}, {-0.7071067811865478, -0.2061234808412056, \
-0.7071067811865476}}, {{-0.8218544151266949, -0.09137584690105825, 
         0.5923591472463999}, {-0.7071067811865478, -0.2061234808412056, 
         0.7071067811865476}, {-0.6698688597350216, -0.3923130880988351, 
         0.6698688597350214}, {-0.762387450280417, -0.48483167864423043`, 
         0.48483167864423043`}, {-0.9888488485751428, -0.2583702803495049, 
         0.2583702803495047}, {-0.9888488485751424, -0.25837028034950427`, 
         0.25837028034950477`}, {-0.9888488485751428, -0.2583702803495045, 
         0.2583702803495056}}, {{-0.7071067811865478, 
         0.2061234808412056, -0.7071067811865476}, {-0.6698688597350216, 
         0.3923130880988351, -0.6698688597350214}, {-0.762387450280417, 
         0.48483167864423043`, -0.48483167864423043`}, {-0.9888488485751428, 
         0.2583702803495049, -0.2583702803495047}, {-0.9888488485751424, 
         0.25837028034950427`, -0.25837028034950477`}, {-0.9888488485751428, 
         0.2583702803495045, -0.2583702803495056}, {-0.8218544151266949, 
         0.09137584690105825, -0.5923591472463999}}, {{-0.9888488485751428, 
         0.2583702803495049, 0.2583702803495047}, {-0.9888488485751424, 
         0.25837028034950427`, 0.25837028034950477`}, {-0.9888488485751428, 
         0.2583702803495045, 0.2583702803495056}, {-0.762387450280417, 
         0.48483167864423043`, 0.48483167864423043`}, {-0.6698688597350216, 
         0.3923130880988351, 0.6698688597350214}, {-0.7071067811865478, 
         0.2061234808412056, 0.7071067811865476}, {-0.8218544151266949, 
         0.09137584690105825, 
         0.5923591472463999}}, {{-0.4848316786442303, -0.48483167864423055`, \
-0.7623874502804167}, {-0.39231308809883497`, -0.6698688597350214, \
-0.6698688597350214}, {-0.2061234808412061, -0.7071067811865469, \
-0.7071067811865472}, {-0.09137584690105825, -0.5923591472463999, \
-0.8218544151266949}, {-0.25837028034950493`, -0.2583702803495043, \
-0.9888488485751425}, {-0.2583702803495042, -0.2583702803495047, \
-0.9888488485751422}, {-0.2583702803495038, -0.258370280349505, \
-0.9888488485751425}}, {{-0.4848316786442303, -0.48483167864423055`, 
         0.7623874502804167}, {-0.25837028034950493`, -0.2583702803495043, 
         0.9888488485751425}, {-0.2583702803495042, -0.2583702803495047, 
         0.9888488485751422}, {-0.2583702803495038, -0.258370280349505, 
         0.9888488485751425}, {-0.09137584690105825, -0.5923591472463999, 
         0.8218544151266949}, {-0.2061234808412061, -0.7071067811865469, 
         0.7071067811865472}, {-0.39231308809883497`, -0.6698688597350214, 
         0.6698688597350214}}, {{-0.25837028034950493`, 
         0.2583702803495043, -0.9888488485751425}, {-0.2583702803495042, 
         0.2583702803495047, -0.9888488485751422}, {-0.2583702803495038, 
         0.258370280349505, -0.9888488485751425}, {-0.09137584690105825, 
         0.5923591472463999, -0.8218544151266949}, {-0.2061234808412061, 
         0.7071067811865469, -0.7071067811865472}, {-0.39231308809883497`, 
         0.6698688597350214, -0.6698688597350214}, {-0.4848316786442303, 
         0.48483167864423055`, -0.7623874502804167}}, {{-0.39231308809883497`,
          0.6698688597350214, 0.6698688597350214}, {-0.2061234808412061, 
         0.7071067811865469, 0.7071067811865472}, {-0.09137584690105825, 
         0.5923591472463999, 0.8218544151266949}, {-0.25837028034950493`, 
         0.2583702803495043, 0.9888488485751425}, {-0.2583702803495042, 
         0.2583702803495047, 0.9888488485751422}, {-0.2583702803495038, 
         0.258370280349505, 0.9888488485751425}, {-0.4848316786442303, 
         0.48483167864423055`, 
         0.7623874502804167}}, {{-0.4848316786442303, -0.7623874502804164, \
-0.48483167864423055`}, {-0.25837028034950466`, -0.9888488485751425, \
-0.25837028034950466`}, {-0.2583702803495042, -0.9888488485751422, \
-0.2583702803495049}, {-0.2583702803495044, -0.9888488485751424, \
-0.25837028034950565`}, {-0.09137584690105825, -0.8218544151266949, \
-0.5923591472463999}, {-0.2061234808412056, -0.7071067811865475, \
-0.7071067811865475}, {-0.3923130880988351, -0.6698688597350219, \
-0.6698688597350223}}, {{-0.4848316786442303, -0.7623874502804164, 
         0.48483167864423055`}, {-0.3923130880988351, -0.6698688597350219, 
         0.6698688597350223}, {-0.2061234808412056, -0.7071067811865475, 
         0.7071067811865475}, {-0.09137584690105825, -0.8218544151266949, 
         0.5923591472463999}, {-0.25837028034950466`, -0.9888488485751425, 
         0.25837028034950466`}, {-0.2583702803495042, -0.9888488485751422, 
         0.2583702803495049}, {-0.2583702803495044, -0.9888488485751424, 
         0.25837028034950565`}}, {{-0.3923130880988351, 
         0.6698688597350219, -0.6698688597350223}, {-0.2061234808412056, 
         0.7071067811865475, -0.7071067811865475}, {-0.09137584690105825, 
         0.8218544151266949, -0.5923591472463999}, {-0.25837028034950466`, 
         0.9888488485751425, -0.25837028034950466`}, {-0.2583702803495042, 
         0.9888488485751422, -0.2583702803495049}, {-0.2583702803495044, 
         0.9888488485751424, -0.25837028034950565`}, {-0.4848316786442303, 
         0.7623874502804164, -0.48483167864423055`}}, {{-0.25837028034950466`,
          0.9888488485751425, 0.25837028034950466`}, {-0.2583702803495042, 
         0.9888488485751422, 0.2583702803495049}, {-0.2583702803495044, 
         0.9888488485751424, 0.25837028034950565`}, {-0.09137584690105825, 
         0.8218544151266949, 0.5923591472463999}, {-0.2061234808412056, 
         0.7071067811865475, 0.7071067811865475}, {-0.3923130880988351, 
         0.6698688597350219, 0.6698688597350223}, {-0.4848316786442303, 
         0.7623874502804164, 0.48483167864423055`}}, {{
         0.2061234808412061, -0.7071067811865469, -0.7071067811865472}, {
         0.39231308809883497`, -0.6698688597350214, -0.6698688597350214}, {
         0.4848316786442303, -0.48483167864423055`, -0.7623874502804167}, {
         0.25837028034950493`, -0.2583702803495043, -0.9888488485751425}, {
         0.2583702803495042, -0.2583702803495047, -0.9888488485751422}, {
         0.2583702803495038, -0.258370280349505, -0.9888488485751425}, {
         0.09137584690105825, -0.5923591472463999, -0.8218544151266949}}, {{
         0.25837028034950493`, -0.2583702803495043, 0.9888488485751425}, {
         0.2583702803495042, -0.2583702803495047, 0.9888488485751422}, {
         0.2583702803495038, -0.258370280349505, 0.9888488485751425}, {
         0.4848316786442303, -0.48483167864423055`, 0.7623874502804167}, {
         0.39231308809883497`, -0.6698688597350214, 0.6698688597350214}, {
         0.2061234808412061, -0.7071067811865469, 0.7071067811865472}, {
         0.09137584690105825, -0.5923591472463999, 0.8218544151266949}}, {{
         0.09137584690105825, 0.5923591472463999, -0.8218544151266949}, {
         0.25837028034950493`, 0.2583702803495043, -0.9888488485751425}, {
         0.2583702803495042, 0.2583702803495047, -0.9888488485751422}, {
         0.2583702803495038, 0.258370280349505, -0.9888488485751425}, {
         0.4848316786442303, 0.48483167864423055`, -0.7623874502804167}, {
         0.39231308809883497`, 0.6698688597350214, -0.6698688597350214}, {
         0.2061234808412061, 0.7071067811865469, -0.7071067811865472}}, {{
         0.09137584690105825, 0.5923591472463999, 0.8218544151266949}, {
         0.2061234808412061, 0.7071067811865469, 0.7071067811865472}, {
         0.39231308809883497`, 0.6698688597350214, 0.6698688597350214}, {
         0.4848316786442303, 0.48483167864423055`, 0.7623874502804167}, {
         0.25837028034950493`, 0.2583702803495043, 0.9888488485751425}, {
         0.2583702803495042, 0.2583702803495047, 0.9888488485751422}, {
         0.2583702803495038, 0.258370280349505, 0.9888488485751425}}, {{
         0.25837028034950466`, -0.9888488485751425, -0.25837028034950466`}, {
         0.2583702803495042, -0.9888488485751422, -0.2583702803495049}, {
         0.2583702803495044, -0.9888488485751424, -0.25837028034950565`}, {
         0.4848316786442303, -0.7623874502804164, -0.48483167864423055`}, {
         0.3923130880988351, -0.6698688597350219, -0.6698688597350223}, {
         0.2061234808412056, -0.7071067811865475, -0.7071067811865475}, {
         0.09137584690105825, -0.8218544151266949, -0.5923591472463999}}, {{
         0.09137584690105825, -0.8218544151266949, 0.5923591472463999}, {
         0.2061234808412056, -0.7071067811865475, 0.7071067811865475}, {
         0.3923130880988351, -0.6698688597350219, 0.6698688597350223}, {
         0.4848316786442303, -0.7623874502804164, 0.48483167864423055`}, {
         0.25837028034950466`, -0.9888488485751425, 0.25837028034950466`}, {
         0.2583702803495042, -0.9888488485751422, 0.2583702803495049}, {
         0.2583702803495044, -0.9888488485751424, 0.25837028034950565`}}, {{
         0.09137584690105825, 0.8218544151266949, -0.5923591472463999}, {
         0.2061234808412056, 0.7071067811865475, -0.7071067811865475}, {
         0.3923130880988351, 0.6698688597350219, -0.6698688597350223}, {
         0.4848316786442303, 0.7623874502804164, -0.48483167864423055`}, {
         0.25837028034950466`, 0.9888488485751425, -0.25837028034950466`}, {
         0.2583702803495042, 0.9888488485751422, -0.2583702803495049}, {
         0.2583702803495044, 0.9888488485751424, -0.25837028034950565`}}, {{
         0.25837028034950466`, 0.9888488485751425, 0.25837028034950466`}, {
         0.2583702803495042, 0.9888488485751422, 0.2583702803495049}, {
         0.2583702803495044, 0.9888488485751424, 0.25837028034950565`}, {
         0.4848316786442303, 0.7623874502804164, 0.48483167864423055`}, {
         0.3923130880988351, 0.6698688597350219, 0.6698688597350223}, {
         0.2061234808412056, 0.7071067811865475, 0.7071067811865475}, {
         0.09137584690105825, 0.8218544151266949, 0.5923591472463999}}, {{
         0.8218544151266949, -0.5923591472463999, -0.09137584690105825}, {
         0.9888488485751429, -0.2583702803495047, -0.2583702803495049}, {
         0.9888488485751424, -0.25837028034950477`, -0.25837028034950427`}, {
         0.988848848575142, -0.2583702803495059, -0.25837028034950416`}, {
         0.7623874502804165, -0.48483167864423055`, -0.4848316786442301}, {
         0.6698688597350213, -0.6698688597350211, -0.39231308809883453`}, {
         0.7071067811865474, -0.7071067811865474, -0.20612348084120655`}}, {{
         0.7623874502804165, -0.48483167864423055`, 0.4848316786442301}, {
         0.9888488485751429, -0.2583702803495047, 0.2583702803495049}, {
         0.9888488485751424, -0.25837028034950477`, 0.25837028034950427`}, {
         0.988848848575142, -0.2583702803495059, 0.25837028034950416`}, {
         0.8218544151266949, -0.5923591472463999, 0.09137584690105825}, {
         0.7071067811865474, -0.7071067811865474, 0.20612348084120655`}, {
         0.6698688597350213, -0.6698688597350211, 0.39231308809883453`}}, {{
         0.7071067811865474, 0.7071067811865474, -0.20612348084120655`}, {
         0.6698688597350213, 0.6698688597350211, -0.39231308809883453`}, {
         0.7623874502804165, 0.48483167864423055`, -0.4848316786442301}, {
         0.9888488485751429, 0.2583702803495047, -0.2583702803495049}, {
         0.9888488485751424, 0.25837028034950477`, -0.25837028034950427`}, {
         0.988848848575142, 0.2583702803495059, -0.25837028034950416`}, {
         0.8218544151266949, 0.5923591472463999, -0.09137584690105825}}, {{
         0.6698688597350213, 0.6698688597350211, 0.39231308809883453`}, {
         0.7071067811865474, 0.7071067811865474, 0.20612348084120655`}, {
         0.8218544151266949, 0.5923591472463999, 0.09137584690105825}, {
         0.9888488485751429, 0.2583702803495047, 0.2583702803495049}, {
         0.9888488485751424, 0.25837028034950477`, 0.25837028034950427`}, {
         0.988848848575142, 0.2583702803495059, 0.25837028034950416`}, {
         0.7623874502804165, 0.48483167864423055`, 0.4848316786442301}}, {{
         0.9888488485751428, -0.2583702803495049, -0.2583702803495047}, {
         0.9888488485751424, -0.25837028034950427`, -0.25837028034950477`}, {
         0.9888488485751428, -0.2583702803495045, -0.2583702803495056}, {
         0.8218544151266949, -0.09137584690105825, -0.5923591472463999}, {
         0.7071067811865478, -0.2061234808412056, -0.7071067811865476}, {
         0.6698688597350216, -0.3923130880988351, -0.6698688597350214}, {
         0.762387450280417, -0.48483167864423043`, -0.48483167864423043`}}, {{
         0.7071067811865478, -0.2061234808412056, 0.7071067811865476}, {
         0.8218544151266949, -0.09137584690105825, 0.5923591472463999}, {
         0.9888488485751428, -0.2583702803495049, 0.2583702803495047}, {
         0.9888488485751424, -0.25837028034950427`, 0.25837028034950477`}, {
         0.9888488485751428, -0.2583702803495045, 0.2583702803495056}, {
         0.762387450280417, -0.48483167864423043`, 0.48483167864423043`}, {
         0.6698688597350216, -0.3923130880988351, 0.6698688597350214}}, {{
         0.762387450280417, 0.48483167864423043`, -0.48483167864423043`}, {
         0.6698688597350216, 0.3923130880988351, -0.6698688597350214}, {
         0.7071067811865478, 0.2061234808412056, -0.7071067811865476}, {
         0.8218544151266949, 0.09137584690105825, -0.5923591472463999}, {
         0.9888488485751428, 0.2583702803495049, -0.2583702803495047}, {
         0.9888488485751424, 0.25837028034950427`, -0.25837028034950477`}, {
         0.9888488485751428, 0.2583702803495045, -0.2583702803495056}}, {{
         0.6698688597350216, 0.3923130880988351, 0.6698688597350214}, {
         0.762387450280417, 0.48483167864423043`, 0.48483167864423043`}, {
         0.9888488485751428, 0.2583702803495049, 0.2583702803495047}, {
         0.9888488485751424, 0.25837028034950427`, 0.25837028034950477`}, {
         0.9888488485751428, 0.2583702803495045, 0.2583702803495056}, {
         0.8218544151266949, 0.09137584690105825, 0.5923591472463999}, {
         0.7071067811865478, 0.2061234808412056, 
         0.7071067811865476}}, {{-0.2583702803495047, -0.9888488485751422, \
-0.2583702803495049}, {-0.2583702803495042, -0.9888488485751422, \
-0.2583702803495049}, {-0.2583702803495044, -0.9888488485751424, \
-0.25837028034950565`}, {-0.23606797749978953`, -0.9999999999999999, \
-0.23606797749978953`}, {
         0.23606797749978953`, -0.9999999999999999, -0.23606797749978953`}, {
         0.2583702803495047, -0.9888488485751422, -0.2583702803495049}, {
         0.2583702803495042, -0.9888488485751422, -0.2583702803495049}, {
         0.2583702803495044, -0.9888488485751424, -0.25837028034950565`}, {
         0.09137584690105759, -0.8218544151266949, -0.5923591472463999}, \
{-0.09137584690105759, -0.8218544151266949, -0.5923591472463999}}, \
{{-0.09137584690105759, -0.8218544151266949, 0.5923591472463999}, {
         0.09137584690105759, -0.8218544151266949, 0.5923591472463999}, {
         0.2583702803495047, -0.9888488485751422, 0.2583702803495049}, {
         0.2583702803495042, -0.9888488485751422, 0.2583702803495049}, {
         0.2583702803495044, -0.9888488485751424, 0.25837028034950565`}, {
         0.23606797749978953`, -0.9999999999999999, 
         0.23606797749978953`}, {-0.23606797749978953`, -0.9999999999999999, 
         0.23606797749978953`}, {-0.2583702803495047, -0.9888488485751422, 
         0.2583702803495049}, {-0.2583702803495042, -0.9888488485751422, 
         0.2583702803495049}, {-0.2583702803495044, -0.9888488485751424, 
         0.25837028034950565`}}, {{-0.09137584690105825, -0.5923591472463999, \
-0.8218544151266949}, {
         0.09137584690105825, -0.5923591472463999, -0.8218544151266949}, {
         0.25837028034950454`, -0.25837028034950527`, -0.9888488485751422}, {
         0.2583702803495042, -0.2583702803495049, -0.9888488485751422}, {
         0.2583702803495041, -0.25837028034950554`, -0.9888488485751423}, {
         0.23606797749978953`, -0.23606797749978953`, -0.9999999999999999}, \
{-0.23606797749978953`, -0.23606797749978953`, -0.9999999999999999}, \
{-0.25837028034950454`, -0.25837028034950527`, -0.9888488485751422}, \
{-0.2583702803495042, -0.2583702803495049, -0.9888488485751422}, \
{-0.2583702803495041, -0.25837028034950554`, -0.9888488485751423}}, \
{{-0.25837028034950454`, -0.25837028034950527`, 
         0.9888488485751422}, {-0.2583702803495042, -0.2583702803495049, 
         0.9888488485751422}, {-0.2583702803495041, -0.25837028034950554`, 
         0.9888488485751423}, {-0.23606797749978953`, -0.23606797749978953`, 
         0.9999999999999999}, {0.23606797749978953`, -0.23606797749978953`, 
         0.9999999999999999}, {0.25837028034950454`, -0.25837028034950527`, 
         0.9888488485751422}, {0.2583702803495042, -0.2583702803495049, 
         0.9888488485751422}, {0.2583702803495041, -0.25837028034950554`, 
         0.9888488485751423}, {0.09137584690105825, -0.5923591472463999, 
         0.8218544151266949}, {-0.09137584690105825, -0.5923591472463999, 
         0.8218544151266949}}, {{-0.25837028034950454`, 
         0.25837028034950527`, -0.9888488485751422}, {-0.2583702803495042, 
         0.2583702803495049, -0.9888488485751422}, {-0.2583702803495041, 
         0.25837028034950554`, -0.9888488485751423}, {-0.23606797749978953`, 
         0.23606797749978953`, -0.9999999999999999}, {0.23606797749978953`, 
         0.23606797749978953`, -0.9999999999999999}, {0.25837028034950454`, 
         0.25837028034950527`, -0.9888488485751422}, {0.2583702803495042, 
         0.2583702803495049, -0.9888488485751422}, {0.2583702803495041, 
         0.25837028034950554`, -0.9888488485751423}, {0.09137584690105825, 
         0.5923591472463999, -0.8218544151266949}, {-0.09137584690105825, 
         0.5923591472463999, -0.8218544151266949}}, {{-0.09137584690105825, 
         0.5923591472463999, 0.8218544151266949}, {0.09137584690105825, 
         0.5923591472463999, 0.8218544151266949}, {0.25837028034950454`, 
         0.25837028034950527`, 0.9888488485751422}, {0.2583702803495042, 
         0.2583702803495049, 0.9888488485751422}, {0.2583702803495041, 
         0.25837028034950554`, 0.9888488485751423}, {0.23606797749978953`, 
         0.23606797749978953`, 0.9999999999999999}, {-0.23606797749978953`, 
         0.23606797749978953`, 0.9999999999999999}, {-0.25837028034950454`, 
         0.25837028034950527`, 0.9888488485751422}, {-0.2583702803495042, 
         0.2583702803495049, 0.9888488485751422}, {-0.2583702803495041, 
         0.25837028034950554`, 0.9888488485751423}}, {{-0.09137584690105759, 
         0.8218544151266949, -0.5923591472463999}, {0.09137584690105759, 
         0.8218544151266949, -0.5923591472463999}, {0.2583702803495047, 
         0.9888488485751422, -0.2583702803495049}, {0.2583702803495042, 
         0.9888488485751422, -0.2583702803495049}, {0.2583702803495044, 
         0.9888488485751424, -0.25837028034950565`}, {0.23606797749978953`, 
         0.9999999999999999, -0.23606797749978953`}, {-0.23606797749978953`, 
         0.9999999999999999, -0.23606797749978953`}, {-0.2583702803495047, 
         0.9888488485751422, -0.2583702803495049}, {-0.2583702803495042, 
         0.9888488485751422, -0.2583702803495049}, {-0.2583702803495044, 
         0.9888488485751424, -0.25837028034950565`}}, {{-0.2583702803495047, 
         0.9888488485751422, 0.2583702803495049}, {-0.2583702803495042, 
         0.9888488485751422, 0.2583702803495049}, {-0.2583702803495044, 
         0.9888488485751424, 0.25837028034950565`}, {-0.23606797749978953`, 
         0.9999999999999999, 0.23606797749978953`}, {0.23606797749978953`, 
         0.9999999999999999, 0.23606797749978953`}, {0.2583702803495047, 
         0.9888488485751422, 0.2583702803495049}, {0.2583702803495042, 
         0.9888488485751422, 0.2583702803495049}, {0.2583702803495044, 
         0.9888488485751424, 0.25837028034950565`}, {0.09137584690105759, 
         0.8218544151266949, 0.5923591472463999}, {-0.09137584690105759, 
         0.8218544151266949, 0.5923591472463999}}, {{-0.8218544151266949, 
         0.09137584690105727, -0.5923591472463999}, {-0.9888488485751422, 
         0.2583702803495045, -0.2583702803495053}, {-0.9888488485751424, 
         0.25837028034950427`, -0.25837028034950493`}, {-0.9888488485751424, 
         0.25837028034950393`, -0.25837028034950527`}, {-0.9999999999999999, 
         0.23606797749978953`, -0.23606797749978953`}, {-0.9999999999999999, \
-0.23606797749978953`, -0.23606797749978953`}, {-0.9888488485751422, \
-0.2583702803495045, -0.2583702803495053}, {-0.9888488485751424, \
-0.25837028034950427`, -0.25837028034950493`}, {-0.9888488485751424, \
-0.25837028034950393`, -0.25837028034950527`}, {-0.8218544151266949, \
-0.09137584690105727, -0.5923591472463999}}, {{-0.9999999999999999, 
         0.23606797749978953`, 0.23606797749978953`}, {-0.9888488485751422, 
         0.2583702803495045, 0.2583702803495053}, {-0.9888488485751424, 
         0.25837028034950427`, 0.25837028034950493`}, {-0.9888488485751424, 
         0.25837028034950393`, 0.25837028034950527`}, {-0.8218544151266949, 
         0.09137584690105727, 
         0.5923591472463999}, {-0.8218544151266949, -0.09137584690105727, 
         0.5923591472463999}, {-0.9888488485751422, -0.2583702803495045, 
         0.2583702803495053}, {-0.9888488485751424, -0.25837028034950427`, 
         0.25837028034950493`}, {-0.9888488485751424, -0.25837028034950393`, 
         0.25837028034950527`}, {-0.9999999999999999, -0.23606797749978953`, 
         0.23606797749978953`}}, {{-0.9888488485751422, -0.2583702803495053, \
-0.2583702803495045}, {-0.9888488485751422, -0.25837028034950493`, \
-0.25837028034950427`}, {-0.9888488485751425, -0.2583702803495057, \
-0.25837028034950466`}, {-0.9999999999999999, -0.23606797749978953`, \
-0.23606797749978953`}, {-0.9999999999999999, -0.23606797749978953`, 
         0.23606797749978953`}, {-0.9888488485751422, -0.2583702803495053, 
         0.2583702803495045}, {-0.9888488485751422, -0.25837028034950493`, 
         0.25837028034950427`}, {-0.9888488485751425, -0.2583702803495057, 
         0.25837028034950466`}, {-0.8218544151266949, -0.5923591472463999, 
         0.09137584690105857}, {-0.8218544151266949, -0.5923591472463999, \
-0.09137584690105857}}, {{-0.8218544151266949, 
         0.5923591472463999, -0.09137584690105857}, {-0.8218544151266949, 
         0.5923591472463999, 0.09137584690105857}, {-0.9888488485751422, 
         0.2583702803495053, 0.2583702803495045}, {-0.9888488485751422, 
         0.25837028034950493`, 0.25837028034950427`}, {-0.9888488485751425, 
         0.2583702803495057, 0.25837028034950466`}, {-0.9999999999999999, 
         0.23606797749978953`, 0.23606797749978953`}, {-0.9999999999999999, 
         0.23606797749978953`, -0.23606797749978953`}, {-0.9888488485751422, 
         0.2583702803495053, -0.2583702803495045}, {-0.9888488485751422, 
         0.25837028034950493`, -0.25837028034950427`}, {-0.9888488485751425, 
         0.2583702803495057, -0.25837028034950466`}}, {{-0.23606797749978953`,
          0.23606797749978953`, -0.9999999999999999}, {-0.25837028034950527`, 
         0.25837028034950454`, -0.9888488485751422}, {-0.2583702803495049, 
         0.2583702803495042, -0.9888488485751422}, {-0.258370280349505, 
         0.25837028034950416`, -0.9888488485751424}, {-0.5923591472463999, 
         0.09137584690105825, -0.8218544151266949}, {-0.5923591472463999, \
-0.09137584690105825, -0.8218544151266949}, {-0.25837028034950527`, \
-0.25837028034950454`, -0.9888488485751422}, {-0.2583702803495049, \
-0.2583702803495042, -0.9888488485751422}, {-0.258370280349505, \
-0.25837028034950416`, -0.9888488485751424}, {-0.23606797749978953`, \
-0.23606797749978953`, -0.9999999999999999}}, {{-0.5923591472463999, 
         0.09137584690105825, 0.8218544151266949}, {-0.25837028034950527`, 
         0.25837028034950454`, 0.9888488485751422}, {-0.2583702803495049, 
         0.2583702803495042, 0.9888488485751422}, {-0.258370280349505, 
         0.25837028034950416`, 0.9888488485751424}, {-0.23606797749978953`, 
         0.23606797749978953`, 
         0.9999999999999999}, {-0.23606797749978953`, -0.23606797749978953`, 
         0.9999999999999999}, {-0.25837028034950527`, -0.25837028034950454`, 
         0.9888488485751422}, {-0.2583702803495049, -0.2583702803495042, 
         0.9888488485751422}, {-0.258370280349505, -0.25837028034950416`, 
         0.9888488485751424}, {-0.5923591472463999, -0.09137584690105825, 
         0.8218544151266949}}, {{-0.5923591472463999, -0.8218544151266949, 
         0.09137584690105759}, {-0.258370280349505, -0.9888488485751422, 
         0.2583702803495044}, {-0.25837028034950504`, -0.9888488485751422, 
         0.25837028034950427`}, {-0.2583702803495053, -0.9888488485751417, 
         0.2583702803495039}, {-0.23606797749978953`, -0.9999999999999999, 
         0.23606797749978953`}, {-0.23606797749978953`, -0.9999999999999999, \
-0.23606797749978953`}, {-0.258370280349505, -0.9888488485751422, \
-0.2583702803495044}, {-0.25837028034950504`, -0.9888488485751422, \
-0.25837028034950427`}, {-0.2583702803495053, -0.9888488485751417, \
-0.2583702803495039}, {-0.5923591472463999, -0.8218544151266949, \
-0.09137584690105759}}, {{-0.5923591472463999, 
         0.8218544151266949, -0.09137584690105759}, {-0.258370280349505, 
         0.9888488485751422, -0.2583702803495044}, {-0.25837028034950504`, 
         0.9888488485751422, -0.25837028034950427`}, {-0.2583702803495053, 
         0.9888488485751417, -0.2583702803495039}, {-0.23606797749978953`, 
         0.9999999999999999, -0.23606797749978953`}, {-0.23606797749978953`, 
         0.9999999999999999, 0.23606797749978953`}, {-0.258370280349505, 
         0.9888488485751422, 0.2583702803495044}, {-0.25837028034950504`, 
         0.9888488485751422, 0.25837028034950427`}, {-0.2583702803495053, 
         0.9888488485751417, 0.2583702803495039}, {-0.5923591472463999, 
         0.8218544151266949, 0.09137584690105759}}, {{0.5923591472463999, 
         0.09137584690105825, -0.8218544151266949}, {0.25837028034950527`, 
         0.25837028034950454`, -0.9888488485751422}, {0.2583702803495049, 
         0.2583702803495042, -0.9888488485751422}, {0.258370280349505, 
         0.25837028034950416`, -0.9888488485751424}, {0.23606797749978953`, 
         0.23606797749978953`, -0.9999999999999999}, {
         0.23606797749978953`, -0.23606797749978953`, -0.9999999999999999}, {
         0.25837028034950527`, -0.25837028034950454`, -0.9888488485751422}, {
         0.2583702803495049, -0.2583702803495042, -0.9888488485751422}, {
         0.258370280349505, -0.25837028034950416`, -0.9888488485751424}, {
         0.5923591472463999, -0.09137584690105825, -0.8218544151266949}}, {{
         0.23606797749978953`, 0.23606797749978953`, 0.9999999999999999}, {
         0.25837028034950527`, 0.25837028034950454`, 0.9888488485751422}, {
         0.2583702803495049, 0.2583702803495042, 0.9888488485751422}, {
         0.258370280349505, 0.25837028034950416`, 0.9888488485751424}, {
         0.5923591472463999, 0.09137584690105825, 0.8218544151266949}, {
         0.5923591472463999, -0.09137584690105825, 0.8218544151266949}, {
         0.25837028034950527`, -0.25837028034950454`, 0.9888488485751422}, {
         0.2583702803495049, -0.2583702803495042, 0.9888488485751422}, {
         0.258370280349505, -0.25837028034950416`, 0.9888488485751424}, {
         0.23606797749978953`, -0.23606797749978953`, 0.9999999999999999}}, {{
         0.23606797749978953`, -0.9999999999999999, 0.23606797749978953`}, {
         0.258370280349505, -0.9888488485751422, 0.2583702803495044}, {
         0.25837028034950504`, -0.9888488485751422, 0.25837028034950427`}, {
         0.2583702803495053, -0.9888488485751417, 0.2583702803495039}, {
         0.5923591472463999, -0.8218544151266949, 0.09137584690105759}, {
         0.5923591472463999, -0.8218544151266949, -0.09137584690105759}, {
         0.258370280349505, -0.9888488485751422, -0.2583702803495044}, {
         0.25837028034950504`, -0.9888488485751422, -0.25837028034950427`}, {
         0.2583702803495053, -0.9888488485751417, -0.2583702803495039}, {
         0.23606797749978953`, -0.9999999999999999, -0.23606797749978953`}}, \
{{0.23606797749978953`, 0.9999999999999999, -0.23606797749978953`}, {
         0.258370280349505, 0.9888488485751422, -0.2583702803495044}, {
         0.25837028034950504`, 0.9888488485751422, -0.25837028034950427`}, {
         0.2583702803495053, 0.9888488485751417, -0.2583702803495039}, {
         0.5923591472463999, 0.8218544151266949, -0.09137584690105759}, {
         0.5923591472463999, 0.8218544151266949, 0.09137584690105759}, {
         0.258370280349505, 0.9888488485751422, 0.2583702803495044}, {
         0.25837028034950504`, 0.9888488485751422, 0.25837028034950427`}, {
         0.2583702803495053, 0.9888488485751417, 0.2583702803495039}, {
         0.23606797749978953`, 0.9999999999999999, 0.23606797749978953`}}, {{
         0.9999999999999999, 0.23606797749978953`, -0.23606797749978953`}, {
         0.9888488485751422, 0.2583702803495045, -0.2583702803495053}, {
         0.9888488485751424, 0.25837028034950427`, -0.25837028034950493`}, {
         0.9888488485751424, 0.25837028034950393`, -0.25837028034950527`}, {
         0.8218544151266949, 0.09137584690105727, -0.5923591472463999}, {
         0.8218544151266949, -0.09137584690105727, -0.5923591472463999}, {
         0.9888488485751422, -0.2583702803495045, -0.2583702803495053}, {
         0.9888488485751424, -0.25837028034950427`, -0.25837028034950493`}, {
         0.9888488485751424, -0.25837028034950393`, -0.25837028034950527`}, {
         0.9999999999999999, -0.23606797749978953`, -0.23606797749978953`}}, \
{{0.8218544151266949, 0.09137584690105727, 0.5923591472463999}, {
         0.9888488485751422, 0.2583702803495045, 0.2583702803495053}, {
         0.9888488485751424, 0.25837028034950427`, 0.25837028034950493`}, {
         0.9888488485751424, 0.25837028034950393`, 0.25837028034950527`}, {
         0.9999999999999999, 0.23606797749978953`, 0.23606797749978953`}, {
         0.9999999999999999, -0.23606797749978953`, 0.23606797749978953`}, {
         0.9888488485751422, -0.2583702803495045, 0.2583702803495053}, {
         0.9888488485751424, -0.25837028034950427`, 0.25837028034950493`}, {
         0.9888488485751424, -0.25837028034950393`, 0.25837028034950527`}, {
         0.8218544151266949, -0.09137584690105727, 0.5923591472463999}}, {{
         0.9888488485751422, -0.2583702803495053, 0.2583702803495045}, {
         0.9888488485751422, -0.25837028034950493`, 0.25837028034950427`}, {
         0.9888488485751425, -0.2583702803495057, 0.25837028034950466`}, {
         0.9999999999999999, -0.23606797749978953`, 0.23606797749978953`}, {
         0.9999999999999999, -0.23606797749978953`, -0.23606797749978953`}, {
         0.9888488485751422, -0.2583702803495053, -0.2583702803495045}, {
         0.9888488485751422, -0.25837028034950493`, -0.25837028034950427`}, {
         0.9888488485751425, -0.2583702803495057, -0.25837028034950466`}, {
         0.8218544151266949, -0.5923591472463999, -0.09137584690105857}, {
         0.8218544151266949, -0.5923591472463999, 0.09137584690105857}}, {{
         0.8218544151266949, 0.5923591472463999, 0.09137584690105857}, {
         0.8218544151266949, 0.5923591472463999, -0.09137584690105857}, {
         0.9888488485751422, 0.2583702803495053, -0.2583702803495045}, {
         0.9888488485751422, 0.25837028034950493`, -0.25837028034950427`}, {
         0.9888488485751425, 0.2583702803495057, -0.25837028034950466`}, {
         0.9999999999999999, 0.23606797749978953`, -0.23606797749978953`}, {
         0.9999999999999999, 0.23606797749978953`, 0.23606797749978953`}, {
         0.9888488485751422, 0.2583702803495053, 0.2583702803495045}, {
         0.9888488485751422, 0.25837028034950493`, 0.25837028034950427`}, {
         0.9888488485751425, 0.2583702803495057, 
         0.25837028034950466`}}}, $CellContext`areas = {
        2 Pi $CellContext`r^2 + Sqrt[2] Pi $CellContext`r BesselJ[0, Pi/4], 
         2 Pi $CellContext`r^2 + Sqrt[2] Pi $CellContext`r BesselJ[0, Pi/4], 
         2 Pi $CellContext`r^2 + Sqrt[2] Pi $CellContext`r BesselJ[0, Pi/4], 
         2 Pi $CellContext`r^2 + Sqrt[2] Pi $CellContext`r BesselJ[0, Pi/4], 
         2 Pi $CellContext`r^2 + Sqrt[2] Pi $CellContext`r BesselJ[0, Pi/4], 
         2 Pi $CellContext`r^2 + Sqrt[2] Pi $CellContext`r BesselJ[0, Pi/4], 
         2 Pi $CellContext`r^2 + Sqrt[2] Pi $CellContext`r BesselJ[0, Pi/4], 
         2 Pi $CellContext`r^2 + Sqrt[2] Pi $CellContext`r BesselJ[0, Pi/4], 
         2 Pi $CellContext`r^2 + Sqrt[2] Pi $CellContext`r BesselJ[0, Pi/4], 
         2 Pi $CellContext`r^2 + 
         Sqrt[2] Pi $CellContext`r 
          BesselJ[0, Pi/4]}, $CellContext`symmetryMatrices["1"] = {{{1, 0, 
        0}, {0, 1, 0}, {0, 0, 1}}}, $CellContext`symmetryMatrices["2"] = {{{1,
         0, 0}, {0, 1, 0}, {0, 0, 1}}, {{-1, 0, 0}, {0, 1, 0}, {0, 
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
         0}}, {{1.0000000001, {3, 0, 7}}, {2, {2, 0, 1}}, {1, {2, 0, 0}}, {
          3, {2, 0, 2}}, {7., {3, 0, 8}}}, {1, 3, 9, 0, 
         2}, {{38, 0, 0, 0, 0, 0}, {38, 0, 0, 1, 0, 1}, {38, 0, 0, 2, 0, 2}, {
          38, 1, 0, 0, 0, 3}, {16, 0, 3, 4}, {38, 1, 0, 1, 0, 3}, {16, 1, 3, 
          5}, {38, 1, 0, 2, 0, 3}, {16, 2, 3, 6}, {13, 4, 5, 6, 4}, {40, 56, 
          3, 0, 0, 3, 0, 6}, {40, 56, 3, 0, 1, 3, 0, 3}, {40, 56, 3, 0, 2, 3, 
          0, 5}, {13, 6, 3, 5, 6}, {16, 7, 6, 3}, {27, 7, 8, 4, 3, 0}, {1}}, 
         Function[{$CellContext`baseV, $CellContext`testV}, 
          
          Block[{Compile`$170, Compile`$173, Compile`$178}, 
           Compile`$170 = Part[$CellContext`baseV, 1]; 
           Compile`$173 = Part[$CellContext`baseV, 2]; 
           Compile`$178 = Part[$CellContext`baseV, 3]; 
           Compile`$170 Part[$CellContext`testV, 1] + 
             Compile`$173 Part[$CellContext`testV, 2] + 
             Compile`$178 Part[$CellContext`testV, 3] > 
            1.0000000001 (Compile`$170^2 + Compile`$173^2 + Compile`$178^2)]],
          Evaluate], Attributes[Compile`$170] = {Temporary}, 
       Attributes[Compile`$173] = {Temporary}, 
       Attributes[Compile`$178] = {Temporary}, $CellContext`neighborQ[
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
            Not[# === $CellContext`index]& ]], $CellContext`neighborQ[
         Pattern[$CellContext`id, 
          Blank[]], 
         Pattern[$CellContext`glist, 
          Blank[]], 
         Pattern[$CellContext`sensitivity, 
          Blank[]]] := 
       Module[{$CellContext`dots, $CellContext`sorted, \
$CellContext`neighbors, $CellContext`fin}, $CellContext`dots = Table[{
             Dot[
              Part[$CellContext`glist, $CellContext`i, 1], 
              Normalize[
               
               Part[$CellContext`glist, $CellContext`id, 
                1]]], $CellContext`i}, {$CellContext`i, 
             Length[$CellContext`glist]}]; $CellContext`sorted = 
          Sort[$CellContext`dots, Part[#, 1] > 
            Part[#2, 1]& ]; $CellContext`neighbors = Table[
            Part[$CellContext`sorted, $CellContext`i, 2], {$CellContext`i, 
             Min[$CellContext`sensitivity, 
              Length[$CellContext`glist]]}]; $CellContext`fin = 
          Select[$CellContext`neighbors, 
            Not[# === $CellContext`id]& ]], $CellContext`fin = {{1, 2}, {2, 
        4}, {4, 7}, {7, 8}, {8, 10}, {10, 13}, {13, 14}, {14, 17}, {17, 18}, {
        18, 16}, {16, 15}, {15, 12}, {12, 11}, {11, 9}, {9, 6}, {6, 5}, {5, 
        3}, {3, 1}}, $CellContext`findvert = 
       CompiledFunction[{10, 11., 5468}, {{
           Blank[Real], 1}, {
           Blank[Real], 1}, {
           Blank[Real], 1}}, {{3, 1, 0}, {3, 1, 1}, {3, 1, 2}, {3, 1, 
         5}}, {{1.*^-12, {3, 0, 8}}, {
          2, {2, 0, 1}}, {{1.*^6, 1.*^6, 1.*^6}, {3, 1, 3}}, {1, {2, 0, 2}}, {
          3, {2, 0, 0}}, {7., {3, 0, 9}}}, {1, 3, 43, 0, 
         6}, {{38, 0, 0, 0, 0, 0}, {38, 1, 0, 1, 0, 1}, {38, 2, 0, 2, 0, 2}, {
          16, 0, 1, 2, 0}, {38, 0, 0, 1, 0, 1}, {38, 1, 0, 0, 0, 2}, {38, 2, 
          0, 2, 0, 3}, {16, 1, 2, 3, 1}, {19, 1, 2}, {38, 0, 0, 0, 0, 1}, {38,
           1, 0, 2, 0, 3}, {38, 2, 0, 1, 0, 4}, {16, 1, 3, 4, 1}, {19, 1, 
          3}, {38, 0, 0, 2, 0, 1}, {38, 1, 0, 0, 0, 4}, {38, 2, 0, 1, 0, 5}, {
          16, 1, 4, 5, 1}, {38, 0, 0, 1, 0, 4}, {38, 1, 0, 2, 0, 5}, {38, 2, 
          0, 0, 0, 6}, {16, 4, 5, 6, 4}, {38, 0, 0, 2, 0, 5}, {38, 1, 0, 1, 0,
           6}, {38, 2, 0, 0, 0, 7}, {16, 5, 6, 7, 5}, {19, 5, 6}, {13, 0, 2, 
          3, 1, 4, 6, 0}, {40, 38, 3, 0, 0, 3, 0, 2}, {27, 3, 9, 2, 8, 0}, {2,
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
          
          Block[{Compile`$174, Compile`$175, Compile`$171, Compile`$172, 
            Compile`$184, Compile`$179, Compile`$177, Compile`$200, 
            Compile`$182, Compile`$183, Compile`$190, Compile`$191, 
            Compile`$204, Compile`$193, Compile`$195, Compile`$187, 
            Compile`$197, Compile`$214, Compile`$219}, 
           
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
            Abs[$CellContext`denom] < 1.*^-12, {1.*^6, 1.*^6, 1.*^6}, 
             Compile`$174 = Part[$CellContext`c, 1]; 
             Compile`$175 = Compile`$174^2; 
             Compile`$171 = Part[$CellContext`a, 3]; 
             Compile`$172 = Part[$CellContext`b, 2]; 
             Compile`$184 = Part[$CellContext`c, 2]; 
             Compile`$179 = Part[$CellContext`b, 3]; 
             Compile`$177 = Part[$CellContext`a, 2]; 
             Compile`$200 = Compile`$184^2; 
             Compile`$182 = Part[$CellContext`b, 1]; 
             Compile`$183 = Compile`$182^2; 
             Compile`$190 = Part[$CellContext`a, 1]; 
             Compile`$191 = Compile`$190^2; 
             Compile`$204 = Part[$CellContext`c, 3]; 
             Compile`$193 = Compile`$177^2; Compile`$195 = Compile`$171^2; 
             Compile`$187 = Compile`$172^2; Compile`$197 = Compile`$179^2; 
             Compile`$214 = Compile`$204^2; 
             Compile`$219 = $CellContext`denom^(-1); {(
                Compile`$171 Compile`$172 Compile`$175 - Compile`$177 
                Compile`$179 Compile`$175 - Compile`$171 Compile`$183 
                Compile`$184 - Compile`$171 Compile`$187 Compile`$184 + 
                Compile`$191 Compile`$179 Compile`$184 + 
                Compile`$193 Compile`$179 Compile`$184 + 
                Compile`$195 Compile`$179 Compile`$184 - Compile`$171 
                Compile`$197 Compile`$184 + 
                Compile`$171 Compile`$172 Compile`$200 - Compile`$177 
                Compile`$179 Compile`$200 + 
                Compile`$177 Compile`$183 Compile`$204 - Compile`$191 
                Compile`$172 Compile`$204 - Compile`$193 Compile`$172 
                Compile`$204 - Compile`$195 Compile`$172 Compile`$204 + 
                Compile`$177 Compile`$187 Compile`$204 + 
                Compile`$177 Compile`$197 Compile`$204 + 
                Compile`$171 Compile`$172 Compile`$214 - Compile`$177 
                Compile`$179 Compile`$214) 
               Compile`$219, (Compile`$171 Compile`$183 Compile`$174 + 
                Compile`$171 Compile`$187 Compile`$174 - Compile`$191 
                Compile`$179 Compile`$174 - Compile`$193 Compile`$179 
                Compile`$174 - Compile`$195 Compile`$179 Compile`$174 + 
                Compile`$171 Compile`$197 Compile`$174 - Compile`$171 
                Compile`$182 Compile`$175 + 
                Compile`$190 Compile`$179 Compile`$175 - Compile`$171 
                Compile`$182 Compile`$200 + 
                Compile`$190 Compile`$179 Compile`$200 + 
                Compile`$191 Compile`$182 Compile`$204 + 
                Compile`$193 Compile`$182 Compile`$204 + 
                Compile`$195 Compile`$182 Compile`$204 - Compile`$190 
                Compile`$183 Compile`$204 - Compile`$190 Compile`$187 
                Compile`$204 - Compile`$190 Compile`$197 Compile`$204 - 
                Compile`$171 Compile`$182 Compile`$214 + 
                Compile`$190 Compile`$179 Compile`$214) 
               Compile`$219, ((-Compile`$177) Compile`$183 Compile`$174 + 
                Compile`$191 Compile`$172 Compile`$174 + 
                Compile`$193 Compile`$172 Compile`$174 + 
                Compile`$195 Compile`$172 Compile`$174 - Compile`$177 
                Compile`$187 Compile`$174 - Compile`$177 Compile`$197 
                Compile`$174 + Compile`$177 Compile`$182 Compile`$175 - 
                Compile`$190 Compile`$172 Compile`$175 - Compile`$191 
                Compile`$182 Compile`$184 - Compile`$193 Compile`$182 
                Compile`$184 - Compile`$195 Compile`$182 Compile`$184 + 
                Compile`$190 Compile`$183 Compile`$184 + 
                Compile`$190 Compile`$187 Compile`$184 + 
                Compile`$190 Compile`$197 Compile`$184 + 
                Compile`$177 Compile`$182 Compile`$200 - Compile`$190 
                Compile`$172 Compile`$200 + 
                Compile`$177 Compile`$182 Compile`$214 - Compile`$190 
                Compile`$172 Compile`$214) Compile`$219}]]]], Evaluate], 
       Attributes[Compile`$174] = {Temporary}, 
       Attributes[Compile`$175] = {Temporary}, 
       Attributes[Compile`$171] = {Temporary}, 
       Attributes[Compile`$172] = {Temporary}, 
       Attributes[Compile`$184] = {Temporary}, 
       Attributes[Compile`$179] = {Temporary}, 
       Attributes[Compile`$177] = {Temporary}, 
       Attributes[Compile`$200] = {Temporary}, 
       Attributes[Compile`$182] = {Temporary}, 
       Attributes[Compile`$183] = {Temporary}, 
       Attributes[Compile`$190] = {Temporary}, 
       Attributes[Compile`$191] = {Temporary}, 
       Attributes[Compile`$204] = {Temporary}, 
       Attributes[Compile`$193] = {Temporary}, 
       Attributes[Compile`$195] = {Temporary}, 
       Attributes[Compile`$187] = {Temporary}, 
       Attributes[Compile`$197] = {Temporary}, 
       Attributes[Compile`$214] = {Temporary}, 
       Attributes[Compile`$219] = {Temporary}, $CellContext`findarea[
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
$CellContext`groupSet["Cubic"] = {
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
 InitializationCell->True,
 CellChangeTimes->{{3.54176016012558*^9, 3.541760165934205*^9}, {
   3.541760349643058*^9, 3.541760371241598*^9}, {3.54176046708435*^9, 
   3.5417604720989532`*^9}, {3.54176059138869*^9, 3.541760657726593*^9}, {
   3.541760715666634*^9, 3.541760850508567*^9}, {3.541760898661131*^9, 
   3.541760912505417*^9}, {3.5417609458097563`*^9, 3.541760986536326*^9}, {
   3.541761068261409*^9, 3.541761069101313*^9}, {3.541761195377431*^9, 
   3.541761243443984*^9}, {3.54176129557321*^9, 3.541761326468266*^9}, {
   3.5437441412503357`*^9, 3.543744171974971*^9}, {3.5439382624350452`*^9, 
   3.543938263535564*^9}, {3.54635941971443*^9, 3.5463594642802277`*^9}, {
   3.546622585392272*^9, 3.5466225889998083`*^9}, {3.5472157520090923`*^9, 
   3.547215782652728*^9}, 3.547215900013783*^9, {3.5472159508633833`*^9, 
   3.547215951317255*^9}, {3.5472169788418427`*^9, 3.5472169859418488`*^9}, {
   3.548387978280834*^9, 3.5483879979364*^9}, {3.548494139569435*^9, 
   3.548494191396674*^9}, {3.548494242885399*^9, 3.54849424377124*^9}, {
   3.549363755411315*^9, 3.549363758993593*^9}, 3.551097710539732*^9, 
   3.551097897695099*^9, 3.551097934698172*^9, 3.551098126445525*^9, 
   3.551098187106923*^9, {3.551098623665594*^9, 3.551098624726104*^9}, {
   3.551104573754328*^9, 3.551104573895656*^9}, {3.5511112281948*^9, 
   3.551111229745405*^9}, 3.5529627272796392`*^9, 3.552963009493533*^9, 
   3.556473675584834*^9, 3.556473905893064*^9, {3.6047584059643173`*^9, 
   3.604758408256385*^9}, 3.694439911877069*^9}]
}, Open  ]]
}, Open  ]]
},
WindowSize->{1372, 913},
WindowMargins->{{Automatic, 68}, {-110, Automatic}},
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
Cell[1486, 35, 522, 9, 148, "Title"],
Cell[2011, 46, 1083, 20, 229, "Subsubtitle"],
Cell[CellGroupData[{
Cell[3119, 70, 294, 4, 64, "Section",
 CellGroupingRules->{GroupTogetherGrouping, 10000.}],
Cell[3416, 76, 240, 3, 35, "Subsubsection",
 CellGroupingRules->{GroupTogetherGrouping, 10000.}],
Cell[3659, 81, 2605, 40, 125, "Text",
 CellGroupingRules->{GroupTogetherGrouping, 10000.}],
Cell[6267, 123, 285, 4, 35, "Subsubsection",
 CellGroupingRules->{GroupTogetherGrouping, 10000.}],
Cell[6555, 129, 5090, 76, 563, "Text",
 CellGroupingRules->{GroupTogetherGrouping, 10000.}],
Cell[11648, 207, 300, 4, 35, "Subsubsection",
 CellGroupingRules->{GroupTogetherGrouping, 10000.}],
Cell[11951, 213, 3888, 64, 486, "Text",
 CellGroupingRules->{GroupTogetherGrouping, 10000.}]
}, Closed]],
Cell[CellGroupData[{
Cell[15876, 282, 217, 3, 50, "Section"],
Cell[16096, 287, 7706, 176, 886, "Input",
 InitializationCell->True],
Cell[23805, 465, 79549, 2013, 3558, "Input",
 InitializationCell->True],
Cell[103357, 2480, 47998, 1100, 1899, "Input",
 InitializationCell->True]
}, Closed]],
Cell[CellGroupData[{
Cell[151392, 3585, 148, 2, 50, "Section"],
Cell[151543, 3589, 133876, 2246, 975, "Input",
 InitializationCell->True]
}, Open  ]]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature Zv0#dsG5cupm9CgJRqzmYJ2a *)
