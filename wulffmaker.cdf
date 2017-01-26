(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 10.1' *)

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
NotebookDataLength[    154907,       3463]
NotebookOptionsPosition[    154293,       3427]
NotebookOutlinePosition[    154648,       3443]
CellTagsIndexPosition[    154605,       3440]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell["Wulffmaker: Wulff shapes V4.0", "Title",
 CellChangeTimes->{{3.5184451290815563`*^9, 3.518445138694195*^9}, {
   3.547215622356022*^9, 3.547215624681027*^9}, {3.547216057813406*^9, 
   3.5472160597412987`*^9}, 3.547217091440813*^9, {3.548494302839478*^9, 
   3.548494303150022*^9}, {3.548494353109837*^9, 3.5484943579095716`*^9}, {
   3.5529639345387487`*^9, 3.552963946010705*^9}, {3.6047598895781317`*^9, 
   3.604759904914719*^9}, {3.604760021285918*^9, 3.6047600216699047`*^9}, {
   3.604760122646598*^9, 3.604760122995596*^9}, {3.6471423230091467`*^9, 
   3.6471423265039454`*^9}}],

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
 ":8290-8302 (2012)\n\n(Double-click the blue brackets at the far right of \
the window to expand/hide sections)"
}], "Subsubtitle",
 CellChangeTimes->{{3.518445150958107*^9, 3.518445204025096*^9}, {
  3.518445591350183*^9, 3.518445595113935*^9}, {3.518520646159315*^9, 
  3.5185206550535793`*^9}, {3.54849431651381*^9, 3.548494317033304*^9}, {
  3.604756945545212*^9, 3.6047570200029383`*^9}, {3.6047599959190893`*^9, 
  3.604760006582316*^9}, {3.64714233200731*^9, 3.647142332825131*^9}}],

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
          SubscriptBox["h", "2"], " ", "="}], " ", "*)"}], " ", "0", ",", 
        RowBox[{"j", "\[Equal]", "2"}], ",", " ", "1", ",", 
        RowBox[{"j", "\[Equal]", "3"}], ",", " ", "0", ",", "True", ",", 
        "1"}], "]"}], ",", "\[IndentingNewLine]", 
      RowBox[{"i", "\[Equal]", "3"}], ",", "\[IndentingNewLine]", 
      RowBox[{"Which", "[", 
       RowBox[{
        RowBox[{"j", "\[Equal]", "1"}], ",", " ", "1", ",", 
        RowBox[{"j", "\[Equal]", "2"}], ",", " ", "1", ",", 
        RowBox[{"j", "\[Equal]", "3"}], ",", " ", "0", ",", "True", ",", 
        "1"}], "]"}], ",", "\[IndentingNewLine]", 
      RowBox[{"i", "\[Equal]", "4"}], ",", "\[IndentingNewLine]", 
      RowBox[{"Which", "[", 
       RowBox[{
        RowBox[{"j", "\[Equal]", "1"}], ",", " ", "1", ",", 
        RowBox[{"j", "\[Equal]", "2"}], ",", " ", 
        RowBox[{"-", "1"}], ",", 
        RowBox[{"j", "\[Equal]", "3"}], ",", " ", "0", ",", "True", ",", 
        "1"}], "]"}], ",", "\[IndentingNewLine]", "True", ",", " ", 
      "\[IndentingNewLine]", 
      RowBox[{"RandomInteger", "[", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"-", "6"}], ",", "6"}], "}"}], "]"}]}], "]"}]}], 
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
      RowBox[{"Darker", "@", "Yellow"}], ",", "\[IndentingNewLine]", 
      RowBox[{"i", "\[Equal]", "4"}], ",", "\[IndentingNewLine]", 
      RowBox[{"Darker", "@", "Green"}], ",", "\[IndentingNewLine]", "True", 
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
      "0.5", ",", "\[IndentingNewLine]", 
      RowBox[{"i", " ", "\[Equal]", " ", "2"}], ",", "\[IndentingNewLine]", 
      "113.14", ",", "\[IndentingNewLine]", 
      RowBox[{"i", " ", "\[Equal]", " ", "3"}], ",", "\[IndentingNewLine]", 
      "63.26", ",", "\[IndentingNewLine]", 
      RowBox[{"i", "\[Equal]", "4"}], ",", "\[IndentingNewLine]", "63.26", 
      ",", "\[IndentingNewLine]", "True", ",", "\[IndentingNewLine]", "1"}], 
     "]"}]}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
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
    RowBox[{"defaultLattice", " ", "=", " ", "\"\<Triclinic\>\""}], ";"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
    "defaultPointGroup", " ", "=", " ", 
     "\"\<\!\(\*OverscriptBox[\(1\), \(_\)]\)\>\""}], ";"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"defaultn", " ", "=", " ", "4"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"defaultOpacity", " ", "=", " ", "0.85"}], ";"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"defaultShowAxes", " ", "=", " ", "False"}], ";"}], 
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
   3.604758377152733*^9, 3.6047583867216797`*^9}, {3.605863393080646*^9, 
   3.605863440512188*^9}, {3.60586347816006*^9, 3.605863504029111*^9}, {
   3.6471393945011387`*^9, 3.647139406736195*^9}, {3.647140416442883*^9, 
   3.647140465166526*^9}, {3.6471423046560507`*^9, 3.64714230509064*^9}, {
   3.647174539467957*^9, 3.647174541514474*^9}, {3.6471795517912483`*^9, 
   3.64717965410308*^9}}],

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
          RowBox[{"a", ",", " ", "5.16", ",", "atext"}], "}"}], ",", 
         RowBox[{"ControlPlacement", "\[Rule]", " ", "Right"}]}], "}"}], ",", 
       
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"b", ",", " ", "8.966", ",", "btext"}], "}"}], ",", " ", 
         RowBox[{"ControlPlacement", "\[Rule]", " ", "Right"}]}], "}"}], ",", 
       
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"c", ",", " ", "9.347", ",", "ctext"}], "}"}], ",", " ", 
         RowBox[{"ControlPlacement", "\[Rule]", " ", "Right"}]}], "}"}], ",", 
       " ", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"\[Alpha]", ",", " ", "91.18", ",", "\[Alpha]text"}], "}"}],
          ",", " ", 
         RowBox[{"ControlPlacement", "\[Rule]", " ", "Right"}]}], "}"}], ",", 
       " ", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"\[Beta]", ",", " ", "100.46", ",", "\[Beta]text"}], "}"}], 
         ",", " ", 
         RowBox[{"ControlPlacement", "\[Rule]", " ", "Right"}]}], "}"}], ",", 
       
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"\[Gamma]", ",", " ", "89.64", ",", "\[Gamma]text"}], "}"}],
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
          RowBox[{"a", ",", " ", "4.59", ",", "atext"}], "}"}], ",", 
         RowBox[{"ControlPlacement", "\[Rule]", " ", "Right"}]}], "}"}], ",", 
       
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"c", ",", " ", "2.96", ",", "ctext"}], "}"}], ",", " ", 
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
      "]"}]}], ";"}], "\[IndentingNewLine]"}]}]], "Input",
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
   3.551099519272791*^9}, {3.552961968515427*^9, 3.552961972840105*^9}, {
   3.6058635791735563`*^9, 3.60586359238905*^9}, {3.647137440129353*^9, 
   3.647137441439678*^9}, {3.6471377988373337`*^9, 3.647137800285562*^9}, {
   3.6471378415140553`*^9, 3.647137847497444*^9}, {3.647140486530377*^9, 
   3.64714049178973*^9}, {3.647179670472604*^9, 3.6471797019097652`*^9}}],

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
      RowBox[{"showAxes_:", "True"}], ",", " ", 
      RowBox[{"vpr_:", 
       RowBox[{"{", 
        RowBox[{"0", ",", "0", ",", "1"}], "}"}]}], ",", " ", 
      RowBox[{"vvr_:", 
       RowBox[{"{", 
        RowBox[{"1", ",", "0", ",", "0"}], "}"}]}]}], "]"}], " ", ":=", " ", 
    RowBox[{"Quiet", "[", 
     RowBox[{"Module", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
        "norms", ",", " ", "ds", ",", " ", "colors", ",", " ", "symstring", 
         ",", " ", "geometry", ",", " ", "sym", ",", " ", "geometr", ",", " ",
          "aa", ",", " ", "bb", ",", " ", "cc", ",", " ", "\[Alpha]\[Alpha]", 
         ",", " ", "\[Beta]\[Beta]", ",", " ", "\[Gamma]\[Gamma]", ",", " ", 
         "avect", ",", " ", "bvect", ",", " ", "cvect", ",", " ", 
         "cartesian1", ",", " ", "points", ",", " ", "normsxyz", ",", " ", 
         "symop", ",", " ", "dmult", ",", " ", "colz", ",", " ", "gams", ",", 
         " ", "dualGams", ",", " ", "chull", ",", " ", "keepers", ",", " ", 
         "colzKeep", ",", " ", "gamsKeep", ",", " ", "dualVerts", ",", " ", 
         "matchSurvivors", ",", " ", "dualFacesIndex", ",", " ", "dualFaces", 
         ",", " ", "dualNorms", ",", " ", "dualDistToOrigin", ",", " ", 
         "wulffVertsToHull", ",", " ", "whull", ",", " ", "wulffVerts", ",", 
         " ", "wulffFaces", ",", " ", "wulffFacesIndex", ",", " ", 
         "wulffNorms", ",", " ", "providedNorms", ",", " ", "matchFacets", 
         ",", " ", "matchIndex", ",", " ", "matchCols", ",", " ", "areas", 
         ",", " ", "totvol", ",", " ", "wulffshape", ",", " ", "withaxes"}], 
        "}"}], ",", "\[IndentingNewLine]", "\[IndentingNewLine]", 
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
          "cartesian", " ", "xyz", " ", "plane", " ", "normals"}], " ", 
         "*)"}], "\[IndentingNewLine]", 
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
            RowBox[{"Cos", "[", "\[Beta]\[Beta]", "]"}]}]}], "}"}]}], ";", 
        " ", "\[IndentingNewLine]", 
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
                  RowBox[{"i", ",", " ", "2"}], "]"}], "]"}], "+", 
                "cvect"}]}], "}"}], ",", "\[IndentingNewLine]", 
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
                  RowBox[{"i", ",", " ", "1"}], "]"}], "]"}], "+", 
                "cvect"}]}], "}"}], ",", "\[IndentingNewLine]", 
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
                  RowBox[{"i", ",", " ", "2"}], "]"}], "]"}], "+", 
                "cvect"}]}], "}"}], ",", "\[IndentingNewLine]", "True", ",", 
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
             RowBox[{"Length", "[", "normsxyz", "]"}]}], "}"}]}], "]"}]}], 
        ";", "\[IndentingNewLine]", 
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
         RowBox[{"Flatten", "[", 
          RowBox[{
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
                 RowBox[{"[", "i", "]"}], "]"}], " ", "]"}]}], "}"}]}], "]"}],
            ",", " ", "1"}], "]"}]}], ";", "\[IndentingNewLine]", 
        RowBox[{"dualGams", " ", "=", " ", 
         RowBox[{"Chop", "@", 
          RowBox[{"Flatten", "[", 
           RowBox[{
            RowBox[{"Table", "[", 
             RowBox[{
              RowBox[{
               RowBox[{"1", "/", 
                RowBox[{"dmult", "[", 
                 RowBox[{"[", 
                  RowBox[{"i", ",", " ", "j"}], "]"}], "]"}]}], " ", 
               RowBox[{"Normalize", "[", 
                RowBox[{"symop", "[", 
                 RowBox[{"[", 
                  RowBox[{"i", ",", " ", "j"}], "]"}], "]"}], "]"}]}], ",", 
              " ", 
              RowBox[{"{", 
               RowBox[{"i", ",", " ", "1", ",", " ", 
                RowBox[{"Length", "[", "normsxyz", "]"}]}], "}"}], ",", " ", 
              RowBox[{"{", 
               RowBox[{"j", ",", " ", "1", ",", " ", 
                RowBox[{"Length", "[", 
                 RowBox[{"symop", "[", 
                  RowBox[{"[", "i", "]"}], "]"}], " ", "]"}]}], " ", "}"}]}], 
             "]"}], ",", " ", "1"}], "]"}]}]}], ";", "\[IndentingNewLine]", 
        RowBox[{"gams", " ", "=", " ", 
         RowBox[{"Flatten", "[", 
          RowBox[{
           RowBox[{"Table", "[", 
            RowBox[{
             RowBox[{
              RowBox[{"dmult", "[", 
               RowBox[{"[", 
                RowBox[{"i", ",", " ", "j"}], "]"}], "]"}], " ", 
              RowBox[{"Normalize", "[", 
               RowBox[{"symop", "[", 
                RowBox[{"[", 
                 RowBox[{"i", ",", " ", "j"}], "]"}], "]"}], "]"}]}], ",", 
             " ", 
             RowBox[{"{", 
              RowBox[{"i", ",", " ", "1", ",", " ", 
               RowBox[{"Length", "[", "normsxyz", "]"}]}], "}"}], ",", " ", 
             RowBox[{"{", 
              RowBox[{"j", ",", " ", "1", ",", " ", 
               RowBox[{"Length", "[", 
                RowBox[{"symop", "[", 
                 RowBox[{"[", "i", "]"}], "]"}], " ", "]"}]}], " ", "}"}]}], 
            "]"}], ",", " ", "1"}], "]"}]}], ";", "\[IndentingNewLine]", 
        "\[IndentingNewLine]", 
        RowBox[{"chull", " ", "=", " ", 
         RowBox[{"ConvexHullMesh", "[", "dualGams", "]"}]}], ";", 
        "\[IndentingNewLine]", "\[IndentingNewLine]", 
        RowBox[{"dualVerts", " ", "=", " ", 
         RowBox[{"MeshCoordinates", "[", "chull", "]"}]}], ";", 
        "\[IndentingNewLine]", 
        RowBox[{"matchSurvivors", "=", " ", 
         RowBox[{"Table", "[", 
          RowBox[{
           RowBox[{
            RowBox[{"Nearest", "[", 
             RowBox[{"dualGams", ",", " ", 
              RowBox[{"dualVerts", "[", 
               RowBox[{"[", "i", "]"}], "]"}]}], "]"}], "[", 
            RowBox[{"[", "1", "]"}], "]"}], ",", " ", 
           RowBox[{"{", 
            RowBox[{"i", ",", " ", 
             RowBox[{"Length", "[", "dualVerts", "]"}]}], "}"}]}], "]"}]}], 
        ";", "\[IndentingNewLine]", 
        RowBox[{"keepers", " ", "=", " ", 
         RowBox[{"Table", "[", 
          RowBox[{
           RowBox[{
            RowBox[{"Position", "[", 
             RowBox[{"dualGams", ",", " ", 
              RowBox[{"matchSurvivors", "[", 
               RowBox[{"[", "i", "]"}], "]"}]}], " ", "]"}], "[", 
            RowBox[{"[", 
             RowBox[{"1", ",", "1"}], "]"}], "]"}], ",", " ", 
           RowBox[{"{", 
            RowBox[{"i", ",", " ", 
             RowBox[{"Length", "[", "matchSurvivors", "]"}]}], "}"}]}], 
          "]"}]}], ";", "\[IndentingNewLine]", 
        RowBox[{"colzKeep", " ", "=", " ", 
         RowBox[{"Table", "[", 
          RowBox[{
           RowBox[{"colz", "[", 
            RowBox[{"[", 
             RowBox[{"keepers", "[", 
              RowBox[{"[", "i", "]"}], "]"}], " ", "]"}], "]"}], ",", " ", 
           RowBox[{"{", 
            RowBox[{"i", ",", " ", 
             RowBox[{"Length", "[", "keepers", "]"}]}], "}"}]}], "]"}]}], ";",
         "\[IndentingNewLine]", 
        RowBox[{"gamsKeep", " ", "=", " ", 
         RowBox[{"Table", "[", 
          RowBox[{
           RowBox[{"gams", "[", 
            RowBox[{"[", 
             RowBox[{"keepers", "[", 
              RowBox[{"[", "i", "]"}], "]"}], " ", "]"}], "]"}], ",", " ", 
           RowBox[{"{", 
            RowBox[{"i", ",", " ", 
             RowBox[{"Length", "[", "keepers", "]"}]}], "}"}]}], "]"}]}], ";",
         "\[IndentingNewLine]", "\[IndentingNewLine]", 
        RowBox[{"dualFacesIndex", " ", "=", " ", 
         RowBox[{"First", "/@", 
          RowBox[{"MeshCells", "[", 
           RowBox[{"chull", ",", " ", "2"}], "]"}]}]}], ";", 
        "\[IndentingNewLine]", 
        RowBox[{"dualFaces", " ", "=", " ", 
         RowBox[{
          RowBox[{"(", 
           RowBox[{
            RowBox[{"Part", "[", 
             RowBox[{"dualVerts", ",", " ", "#"}], "]"}], " ", "&"}], ")"}], "/@",
           "dualFacesIndex"}]}], ";", "\[IndentingNewLine]", 
        RowBox[{"dualNorms", " ", "=", " ", 
         RowBox[{"Map", "[", 
          RowBox[{
           RowBox[{
            RowBox[{"Normalize", "[", 
             RowBox[{"Cross", "[", 
              RowBox[{
               RowBox[{
                RowBox[{"#", "[", 
                 RowBox[{"[", "2", "]"}], "]"}], " ", "-", " ", 
                RowBox[{"#", "[", 
                 RowBox[{"[", "1", "]"}], "]"}]}], ",", " ", 
               RowBox[{
                RowBox[{"#", "[", 
                 RowBox[{"[", "3", "]"}], "]"}], " ", "-", " ", 
                RowBox[{"#", "[", 
                 RowBox[{"[", "1", "]"}], "]"}]}]}], " ", "]"}], "]"}], " ", 
            "&"}], ",", " ", "dualFaces"}], "]"}]}], ";", 
        "\[IndentingNewLine]", 
        RowBox[{"dualDistToOrigin", " ", "=", " ", 
         RowBox[{"Table", "[", 
          RowBox[{
           RowBox[{
            RowBox[{"dualFaces", "[", 
             RowBox[{"[", 
              RowBox[{"i", ",", "1"}], "]"}], "]"}], ".", 
            RowBox[{"dualNorms", "[", 
             RowBox[{"[", "i", "]"}], "]"}]}], ",", " ", 
           RowBox[{"{", 
            RowBox[{"i", ",", " ", 
             RowBox[{"Length", "[", "dualNorms", "]"}]}], "}"}]}], "]"}]}], 
        ";", "\[IndentingNewLine]", 
        RowBox[{"wulffVertsToHull", " ", "=", " ", 
         RowBox[{
          RowBox[{"Chop", "@", 
           RowBox[{"(", 
            RowBox[{"1", "/", "dualDistToOrigin"}], ")"}]}], " ", 
          "dualNorms"}]}], ";", "\[IndentingNewLine]", 
        RowBox[{"whull", " ", "=", " ", 
         RowBox[{"ConvexHullMesh", "[", "wulffVertsToHull", "]"}]}], ";", 
        "\[IndentingNewLine]", "\[IndentingNewLine]", 
        RowBox[{"wulffVerts", " ", "=", " ", 
         RowBox[{"MeshCoordinates", "[", "whull", "]"}]}], ";", 
        "\[IndentingNewLine]", 
        RowBox[{"wulffFacesIndex", " ", "=", " ", 
         RowBox[{"First", "/@", 
          RowBox[{"MeshCells", "[", 
           RowBox[{"whull", ",", " ", "2"}], "]"}]}]}], ";", 
        "\[IndentingNewLine]", 
        RowBox[{"wulffFaces", " ", "=", " ", 
         RowBox[{
          RowBox[{"(", 
           RowBox[{
            RowBox[{"Part", "[", 
             RowBox[{"wulffVerts", ",", " ", "#"}], "]"}], " ", "&"}], ")"}], 
          "/@", "wulffFacesIndex"}]}], ";", "\[IndentingNewLine]", 
        RowBox[{"wulffNorms", " ", "=", " ", 
         RowBox[{"Chop", "@", 
          RowBox[{"Map", "[", 
           RowBox[{
            RowBox[{
             RowBox[{"Normalize", "[", 
              RowBox[{"Cross", "[", 
               RowBox[{
                RowBox[{
                 RowBox[{"#", "[", 
                  RowBox[{"[", "2", "]"}], "]"}], " ", "-", " ", 
                 RowBox[{"#", "[", 
                  RowBox[{"[", "1", "]"}], "]"}]}], ",", " ", 
                RowBox[{
                 RowBox[{"#", "[", 
                  RowBox[{"[", "3", "]"}], "]"}], " ", "-", " ", 
                 RowBox[{"#", "[", 
                  RowBox[{"[", "1", "]"}], "]"}]}]}], " ", "]"}], "]"}], " ", 
             "&"}], ",", " ", "wulffFaces"}], "]"}]}]}], ";", 
        "\[IndentingNewLine]", 
        RowBox[{"providedNorms", " ", "=", 
         RowBox[{"(", 
          RowBox[{"Normalize", "/@", "gamsKeep"}], ")"}]}], ";", 
        "\[IndentingNewLine]", "\[IndentingNewLine]", 
        RowBox[{"matchFacets", " ", "=", " ", 
         RowBox[{"Table", "[", 
          RowBox[{
           RowBox[{
            RowBox[{"Nearest", "[", 
             RowBox[{"providedNorms", ",", " ", 
              RowBox[{"wulffNorms", "[", 
               RowBox[{"[", "i", "]"}], "]"}]}], "]"}], "[", 
            RowBox[{"[", "1", "]"}], "]"}], ",", " ", 
           RowBox[{"{", 
            RowBox[{"i", ",", " ", 
             RowBox[{"Length", "[", "wulffNorms", "]"}]}], "}"}]}], "]"}]}], 
        ";", "\[IndentingNewLine]", 
        RowBox[{"matchIndex", " ", "=", " ", 
         RowBox[{"Table", "[", 
          RowBox[{
           RowBox[{
            RowBox[{"Position", "[", 
             RowBox[{"providedNorms", ",", " ", 
              RowBox[{"matchFacets", "[", 
               RowBox[{"[", "i", "]"}], "]"}]}], " ", "]"}], "[", 
            RowBox[{"[", 
             RowBox[{"1", ",", "1"}], "]"}], "]"}], ",", " ", 
           RowBox[{"{", 
            RowBox[{"i", ",", " ", 
             RowBox[{"Length", "[", "matchFacets", "]"}]}], "}"}]}], "]"}]}], 
        ";", "\[IndentingNewLine]", 
        RowBox[{"matchCols", " ", "=", " ", 
         RowBox[{
          RowBox[{"(", 
           RowBox[{
            RowBox[{"Part", "[", 
             RowBox[{"colzKeep", ",", " ", "#"}], "]"}], " ", "&"}], ")"}], "/@",
           "matchIndex"}]}], ";", "\[IndentingNewLine]", 
        "\[IndentingNewLine]", 
        RowBox[{"wulffshape", " ", "=", " ", 
         RowBox[{"Graphics3D", "[", 
          RowBox[{
           RowBox[{"Table", "[", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{
               RowBox[{"EdgeForm", "[", "]"}], ",", " ", 
               RowBox[{"Opacity", "[", "opacity", "]"}], ",", " ", 
               RowBox[{"matchCols", "[", 
                RowBox[{"[", "i", "]"}], "]"}], ",", " ", 
               RowBox[{"Polygon", "[", 
                RowBox[{"wulffFaces", "[", 
                 RowBox[{"[", "i", "]"}], "]"}], "]"}]}], "}"}], ",", " ", 
             RowBox[{"{", 
              RowBox[{"i", ",", " ", 
               RowBox[{"Length", "[", "wulffFaces", "]"}]}], "}"}]}], "]"}], 
           ",", " ", 
           RowBox[{"Lighting", "\[Rule]", "\"\<Neutral\>\""}], ",", " ", 
           RowBox[{"ViewPoint", " ", "\[Rule]", " ", 
            RowBox[{"10", " ", 
             RowBox[{"(", 
              RowBox[{
               RowBox[{
                RowBox[{"vpr", "[", 
                 RowBox[{"[", "1", "]"}], "]"}], " ", "avect"}], " ", "+", 
               " ", 
               RowBox[{
                RowBox[{"vpr", "[", 
                 RowBox[{"[", "2", "]"}], "]"}], "  ", "bvect"}], " ", "+", 
               " ", 
               RowBox[{
                RowBox[{"vpr", "[", 
                 RowBox[{"[", "3", "]"}], "]"}], " ", "cvect"}]}], ")"}]}]}], 
           ",", " ", 
           RowBox[{"ViewVertical", " ", "\[Rule]", " ", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{
               RowBox[{"vvr", "[", 
                RowBox[{"[", "1", "]"}], "]"}], " ", "avect"}], "+", 
              RowBox[{
               RowBox[{"vvr", "[", 
                RowBox[{"[", "2", "]"}], "]"}], "  ", "bvect"}], "+", 
              RowBox[{
               RowBox[{"vvr", "[", 
                RowBox[{"[", "3", "]"}], "]"}], "  ", "cvect"}]}], ")"}]}], 
           ",", " ", 
           RowBox[{"ImageSize", "\[Rule]", " ", "Large"}], ",", 
           RowBox[{"Boxed", "\[Rule]", " ", "False"}]}], "]"}]}], ";", 
        "\[IndentingNewLine]", "\[IndentingNewLine]", 
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
          "\[IndentingNewLine]", "]"}]}]}]}], "\[IndentingNewLine]", 
      "\[IndentingNewLine]", "]"}], "]"}]}], 
   "\[IndentingNewLine]"}]}]], "Input",
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
   3.604758151176948*^9, 3.6047582322954597`*^9}, {3.605869029852874*^9, 
   3.605869051361278*^9}, {3.605869418225862*^9, 3.605869442092042*^9}, {
   3.6058695450470753`*^9, 3.6058695475680532`*^9}, {3.60586957777164*^9, 
   3.605869613212305*^9}, 3.605869863747567*^9, {3.647135423450137*^9, 
   3.6471355979063387`*^9}, {3.64713563504655*^9, 3.647135947217071*^9}, {
   3.647136054026181*^9, 3.647136070464314*^9}, {3.647136232976219*^9, 
   3.6471364399794064`*^9}, {3.647136592659685*^9, 3.647136635785074*^9}, {
   3.6471366772036543`*^9, 3.647136693311677*^9}, {3.64713685864145*^9, 
   3.647137014938645*^9}, {3.647137067743078*^9, 3.647137098657733*^9}, {
   3.647137203286664*^9, 3.647137341199943*^9}, 3.64713741410198*^9, {
   3.647137452205476*^9, 3.647137662798236*^9}, {3.647137705306698*^9, 
   3.647137757572319*^9}, {3.64713791474362*^9, 3.647137973566901*^9}, {
   3.647138028882761*^9, 3.6471380588409348`*^9}, {3.647138104063552*^9, 
   3.6471381049159822`*^9}, {3.647138164395526*^9, 3.647138322134873*^9}, {
   3.647138455596692*^9, 3.647138519224292*^9}, {3.647138558604287*^9, 
   3.6471385655602818`*^9}, {3.647138608722293*^9, 3.6471386125525713`*^9}, {
   3.647138649128913*^9, 3.647138674598535*^9}, {3.6471387604120483`*^9, 
   3.647138774765798*^9}, {3.647138843550458*^9, 3.647138921043892*^9}, {
   3.647139110657682*^9, 3.647139131950576*^9}, 3.647139170326198*^9, {
   3.647139448869412*^9, 3.647139469181616*^9}, {3.647139764226078*^9, 
   3.647139793376074*^9}, {3.647139998509408*^9, 3.647139999286221*^9}, 
   3.6471400348477907`*^9, {3.647140089288395*^9, 3.64714009926897*^9}, {
   3.647140238339614*^9, 3.6471402546738853`*^9}, {3.647140331041161*^9, 
   3.647140372077806*^9}, {3.6471405949612303`*^9, 3.647140597429564*^9}, {
   3.647140685168701*^9, 3.647140732915217*^9}, {3.647140770851555*^9, 
   3.6471408388973923`*^9}, {3.64714086980387*^9, 3.647140907920806*^9}, {
   3.647174288289938*^9, 3.6471743023919764`*^9}, {3.647174503598876*^9, 
   3.647174508076326*^9}}]
}, Closed]],

Cell[CellGroupData[{

Cell["Wulffmaker", "Section",
 CellChangeTimes->{{3.541759252542234*^9, 3.5417592560275784`*^9}, {
  3.5472170869784193`*^9, 3.547217088496443*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
   "this", " ", "generates", " ", "the", " ", "user", " ", "interface"}], " ",
    "*)"}], "\[IndentingNewLine]", 
  RowBox[{"Module", "[", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
     "normal", ",", "magnitudes", ",", "colors", ",", "a", ",", "b", ",", "c",
       ",", "\[Alpha]", ",", "\[Beta]", ",", "\[Gamma]"}], "}"}], ",", 
    "\[IndentingNewLine]", 
    RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"With", "[", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"{", "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"argument", " ", "=", 
           RowBox[{"{", "\[IndentingNewLine]", " ", 
            RowBox[{
             RowBox[{"Table", "[", 
              RowBox[{
               RowBox[{"normal", "[", 
                RowBox[{"i", ",", "j"}], "]"}], ",", " ", 
               RowBox[{"{", 
                RowBox[{"i", ",", " ", "1", ",", " ", "n"}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{"j", ",", "1", ",", "3"}], "}"}]}], "]"}], ",", 
             "\[IndentingNewLine]", 
             RowBox[{"Table", "[", 
              RowBox[{
               RowBox[{"magnitudes", "[", "i", "]"}], ",", 
               RowBox[{"{", 
                RowBox[{"i", ",", "1", ",", "n"}], "}"}]}], "]"}], ",", 
             "\[IndentingNewLine]", 
             RowBox[{"Table", "[", 
              RowBox[{
               RowBox[{"colors", "[", "i", "]"}], ",", 
               RowBox[{"{", 
                RowBox[{"i", ",", "1", ",", "n"}], "}"}]}], "]"}], ",", 
             "\[IndentingNewLine]", "currentSymmetry", ",", 
             "\[IndentingNewLine]", 
             RowBox[{"geomgen", "[", "symmetry", "]"}]}], 
            "\[IndentingNewLine]", "}"}]}], ",", "\[IndentingNewLine]", 
          RowBox[{"gc", "=", " ", 
           RowBox[{"whichcontrols", "[", "symmetry", "]"}]}], ",", 
          "\[IndentingNewLine]", " ", 
          RowBox[{"controls", " ", "=", " ", 
           RowBox[{"Sequence", " ", "@@", "\[IndentingNewLine]", 
            RowBox[{"Riffle", "[", "\[IndentingNewLine]", 
             RowBox[{
              RowBox[{"Flatten", "[", "\[IndentingNewLine]", " ", 
               RowBox[{
                RowBox[{"Table", "[", "\[IndentingNewLine]", 
                 RowBox[{
                  RowBox[{"Which", "[", "\[IndentingNewLine]", 
                   RowBox[{
                    RowBox[{"j", "\[LessEqual]", " ", "3"}], ",", 
                    "\[IndentingNewLine]", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"normal", "[", 
                    RowBox[{"i", ",", "j"}], "]"}], ",", " ", 
                    RowBox[{"pickIndex", "[", 
                    RowBox[{"i", ",", "j"}], "]"}], ",", 
                    RowBox[{"hkl", "[", "j", "]"}]}], "}"}], ",", 
                    RowBox[{"ControlPlacement", "\[Rule]", " ", "Left"}]}], 
                    "}"}], ",", "\[IndentingNewLine]", 
                    RowBox[{"j", "\[Equal]", " ", "4"}], ",", 
                    "\[IndentingNewLine]", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"colors", "[", "i", "]"}], ",", 
                    RowBox[{"pickColor", "[", "i", "]"}], ",", "\"\<\>\""}], 
                    "}"}], ",", 
                    RowBox[{"Hue", "[", "0.1", "]"}], ",", 
                    RowBox[{"ControlPlacement", "\[Rule]", " ", "Left"}]}], 
                    "}"}], ",", "\[IndentingNewLine]", 
                    RowBox[{"j", "\[GreaterEqual]", " ", "5"}], ",", 
                    "\[IndentingNewLine]", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"magnitudes", "[", "i", "]"}], ",", 
                    RowBox[{"pickGamma", "[", "i", "]"}], ",", 
                    RowBox[{"Text", "[", 
                    RowBox[{"Style", "[", 
                    RowBox[{"\"\<\[Gamma]\>\"", ",", "16"}], "]"}], "]"}]}], 
                    "}"}], ",", " ", "0.4", ",", " ", "2", ",", 
                    RowBox[{"Appearance", "\[Rule]", " ", "\"\<Labeled\>\""}],
                     ",", 
                    RowBox[{"ControlPlacement", "\[Rule]", " ", "Left"}]}], 
                    "}"}]}], "\[IndentingNewLine]", "]"}], ",", 
                  "\[IndentingNewLine]", " ", 
                  RowBox[{"{", 
                   RowBox[{"i", ",", " ", "1", ",", " ", "n"}], "}"}], ",", 
                  "\[IndentingNewLine]", 
                  RowBox[{"{", 
                   RowBox[{"j", ",", "1", ",", "5"}], "}"}]}], 
                 "\[IndentingNewLine]", "]"}], "\[IndentingNewLine]", ",", 
                "\[IndentingNewLine]", "1"}], "]"}], "\[IndentingNewLine]", 
              ",", "Delimiter", ",", "6"}], "\[IndentingNewLine]", 
             "]"}]}]}]}], "\[IndentingNewLine]", "}"}], ",", 
        "\[IndentingNewLine]", 
        RowBox[{"Manipulate", "[", " ", 
         RowBox[{
          RowBox[{"Manipulate", "[", 
           RowBox[{
            RowBox[{"wulffmakerWulff", "[", " ", 
             RowBox[{
             "argument", ",", "opacity", ",", "showAxes", ",", " ", "vp", ",",
               " ", "vv"}], "]"}], ",", " ", "controls", ",", " ", 
            RowBox[{"SynchronousUpdating", " ", "\[Rule]", " ", "False"}]}], 
           "]"}], ",", "gc", ",", " ", 
          RowBox[{"SynchronousUpdating", " ", "\[Rule]", " ", "False"}]}], 
         "]"}]}], "]"}], ",", "\[IndentingNewLine]", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"symmetry", ",", "defaultLattice", ",", 
          RowBox[{"Text", "[", 
           RowBox[{"Style", "[", 
            RowBox[{"\"\<Lattice\>\"", ",", "16"}], "]"}], "]"}]}], "}"}], 
        ",", "symList"}], "}"}], ",", "\[IndentingNewLine]", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"currentSymmetry", ",", "defaultPointGroup", ",", 
          RowBox[{"Text", "[", 
           RowBox[{"Style", "[", 
            RowBox[{"\"\<Point Group\>\"", ",", "16"}], "]"}], "]"}]}], "}"}],
         ",", " ", 
        RowBox[{"groupSet", "[", "symmetry", "]"}], ",", 
        RowBox[{"ControlType", "\[Rule]", " ", "PopupMenu"}]}], "}"}], ",", 
      "\[IndentingNewLine]", " ", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"n", ",", "defaultn", ",", 
          RowBox[{"Text", "[", 
           RowBox[{"Style", "[", 
            RowBox[{"\"\<Facet Families\>\"", ",", "16"}], "]"}], "]"}]}], 
         "}"}], ",", 
        RowBox[{"Range", "[", "30", "]"}]}], "}"}], ",", 
      "\[IndentingNewLine]", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"opacity", ",", "defaultOpacity", ",", 
          RowBox[{"Text", "[", 
           RowBox[{"Style", "[", 
            RowBox[{"\"\<Opacity\>\"", ",", "16"}], "]"}], "]"}]}], "}"}], 
        ",", "0", ",", "1"}], "}"}], ",", "\[IndentingNewLine]", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"showAxes", ",", "defaultShowAxes", ",", 
          RowBox[{"Text", "[", 
           RowBox[{"Style", "[", 
            RowBox[{"\"\<Show Axes\>\"", ",", "16"}], "]"}], "]"}]}], "}"}], 
        ",", 
        RowBox[{"{", 
         RowBox[{"True", ",", "False"}], "}"}]}], "}"}], ",", 
      "\[IndentingNewLine]", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"vp", ",", " ", "defaultZA", ",", " ", 
          RowBox[{"Text", "[", 
           RowBox[{"Style", "[", 
            RowBox[{"\"\<Zone Axis\>\"", ",", " ", "16"}], "]"}], "]"}]}], 
         "}"}], ",", " ", 
        RowBox[{"ControlType", " ", "\[Rule]", " ", "InputField"}], ",", " ", 
        
        RowBox[{"ControlPlacement", " ", "\[Rule]", " ", "Top"}]}], "}"}], 
      ",", " ", "\[IndentingNewLine]", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"vv", ",", " ", "defaultVert", ",", " ", 
          RowBox[{"Text", "[", 
           RowBox[{"Style", "[", 
            RowBox[{"\"\<Vertical Direction\>\"", ",", " ", "16"}], "]"}], 
           "]"}]}], "}"}], ",", " ", 
        RowBox[{"ControlType", " ", "\[Rule]", " ", "InputField"}], ",", " ", 
        
        RowBox[{"ControlPlacement", " ", "\[Rule]", " ", "Top"}]}], "}"}], 
      ",", "\[IndentingNewLine]", 
      RowBox[{"FrameLabel", "\[Rule]", 
       RowBox[{"{", 
        RowBox[{"None", ",", "None", ",", 
         RowBox[{"Text", "[", 
          RowBox[{"Style", "[", 
           RowBox[{"\"\<Wulffmaker\>\"", ",", "Italic", ",", "32"}], "]"}], 
          "]"}]}], "}"}]}], ",", 
      RowBox[{"SaveDefinitions", "\[Rule]", " ", "True"}], ",", 
      RowBox[{"BaseStyle", "\[Rule]", " ", "Large"}], ",", " ", 
      RowBox[{"SynchronousUpdating", " ", "\[Rule]", " ", "False"}]}], 
     "]"}]}], "\[IndentingNewLine]", "]"}]}]], "Input",
 CellChangeTimes->{
  3.605863933675828*^9, 3.6058690588029327`*^9, {3.64713998203553*^9, 
   3.647139985964319*^9}}],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`currentSymmetry$$ = 
    "\!\(\*OverscriptBox[\(1\), \(_\)]\)", $CellContext`n$$ = 
    4, $CellContext`opacity$$ = 0.85, $CellContext`showAxes$$ = 
    False, $CellContext`symmetry$$ = "Triclinic", $CellContext`vp$$ = {5, 1, 
    1}, $CellContext`vv$$ = {0, 0, 1}, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`symmetry$$], "Triclinic", 
       Text[
        Style["Lattice", 16]]}, {
      "Cubic", "Hexagonal", "Tetragonal", "Orthorhombic", "Monoclinic", 
       "Triclinic"}}, {{
       Hold[$CellContext`currentSymmetry$$], 
       "\!\(\*OverscriptBox[\(1\), \(_\)]\)", 
       Text[
        Style["Point Group", 16]]}, 
      Dynamic[
       $CellContext`groupSet[$CellContext`symmetry$$]]}, {{
       Hold[$CellContext`n$$], 4, 
       Text[
        Style["Facet Families", 16]]}, {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12,
       13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 
      30}}, {{
       Hold[$CellContext`opacity$$], 0.85, 
       Text[
        Style["Opacity", 16]]}, 0, 1}, {{
       Hold[$CellContext`showAxes$$], False, 
       Text[
        Style["Show Axes", 16]]}, {True, False}}, {{
       Hold[$CellContext`vp$$], {5, 1, 1}, 
       Text[
        Style["Zone Axis", 16]]}}, {{
       Hold[$CellContext`vv$$], {0, 0, 1}, 
       Text[
        Style["Vertical Direction", 16]]}}}, Typeset`size$$ = {
    1144., {338., 349.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = False, $CellContext`symmetry$1117$$ = 
    0, $CellContext`n$1122$$ = 0, $CellContext`opacity$1123$$ = 
    0, $CellContext`showAxes$1124$$ = False}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`currentSymmetry$$ = 
        "\!\(\*OverscriptBox[\(1\), \(_\)]\)", $CellContext`n$$ = 
        4, $CellContext`opacity$$ = 0.85, $CellContext`showAxes$$ = 
        False, $CellContext`symmetry$$ = 
        "Triclinic", $CellContext`vp$$ = {5, 1, 1}, $CellContext`vv$$ = {0, 0,
          1}}, "ControllerVariables" :> {
        Hold[$CellContext`symmetry$$, $CellContext`symmetry$1117$$, 0], 
        Hold[$CellContext`n$$, $CellContext`n$1122$$, 0], 
        Hold[$CellContext`opacity$$, $CellContext`opacity$1123$$, 0], 
        Hold[$CellContext`showAxes$$, $CellContext`showAxes$1124$$, False]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> With[{$CellContext`argument$ = {
           Table[
            $CellContext`normal$1113[$CellContext`i, $CellContext`j], \
{$CellContext`i, 1, $CellContext`n$$}, {$CellContext`j, 1, 3}], 
           Table[
            $CellContext`magnitudes$1113[$CellContext`i], {$CellContext`i, 
             1, $CellContext`n$$}], 
           Table[
            $CellContext`colors$1113[$CellContext`i], {$CellContext`i, 
             1, $CellContext`n$$}], $CellContext`currentSymmetry$$, 
           $CellContext`geomgen[$CellContext`symmetry$$]}, $CellContext`gc$ = \
$CellContext`whichcontrols[$CellContext`symmetry$$], $CellContext`controls$ = 
         Apply[Sequence, 
           Riffle[
            Flatten[
             Table[
              Which[$CellContext`j <= 3, {{
                 $CellContext`normal$1113[$CellContext`i, $CellContext`j], 
                 $CellContext`pickIndex[$CellContext`i, $CellContext`j], 
                 $CellContext`hkl[$CellContext`j]}, ControlPlacement -> 
                Left}, $CellContext`j == 4, {{
                 $CellContext`colors$1113[$CellContext`i], 
                 $CellContext`pickColor[$CellContext`i], ""}, 
                Hue[0.1], ControlPlacement -> Left}, $CellContext`j >= 5, {{
                 $CellContext`magnitudes$1113[$CellContext`i], 
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
$CellContext`vv$$], $CellContext`controls$, SynchronousUpdating -> 
          False], $CellContext`gc$, SynchronousUpdating -> False]], 
      "Specifications" :> {{{$CellContext`symmetry$$, "Triclinic", 
          Text[
           Style["Lattice", 16]]}, {
         "Cubic", "Hexagonal", "Tetragonal", "Orthorhombic", "Monoclinic", 
          "Triclinic"}}, {{$CellContext`currentSymmetry$$, 
          "\!\(\*OverscriptBox[\(1\), \(_\)]\)", 
          Text[
           Style["Point Group", 16]]}, 
         Dynamic[
          $CellContext`groupSet[$CellContext`symmetry$$]], ControlType -> 
         PopupMenu}, {{$CellContext`n$$, 4, 
          Text[
           Style["Facet Families", 16]]}, {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 
         12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 
         29, 30}}, {{$CellContext`opacity$$, 0.85, 
          Text[
           Style["Opacity", 16]]}, 0, 1}, {{$CellContext`showAxes$$, False, 
          Text[
           Style["Show Axes", 16]]}, {
         True, False}}, {{$CellContext`vp$$, {5, 1, 1}, 
          Text[
           Style["Zone Axis", 16]]}, ControlType -> InputField, 
         ControlPlacement -> Top}, {{$CellContext`vv$$, {0, 0, 1}, 
          Text[
           Style["Vertical Direction", 16]]}, ControlType -> InputField, 
         ControlPlacement -> Top}}, "Options" :> {FrameLabel -> {None, None, 
          Text[
           Style["Wulffmaker", Italic, 32]]}, BaseStyle -> Large, 
        SynchronousUpdating -> False}, "DefaultOptions" :> {}],
     ImageSizeCache->{1195., {490., 500.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({
      Attributes[$CellContext`normal$1113] = {Temporary}, 
       Attributes[$CellContext`magnitudes$1113] = {Temporary}, 
       Attributes[$CellContext`colors$1113] = {
        Temporary}, $CellContext`geomgen[
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
$CellContext`hexagonalconstants[
         Pattern[$CellContext`symmetry, 
          Blank[]]] := {$CellContext`a, $CellContext`a, $CellContext`c, 90, 
         90, 120}, $CellContext`cubicconstants[
         Pattern[$CellContext`symmetry, 
          Blank[]]] := {$CellContext`a, $CellContext`a, $CellContext`a, 90, 
         90, 90}, $CellContext`tetragonalconstants[
         Pattern[$CellContext`symmetry, 
          Blank[]]] := {$CellContext`a, $CellContext`a, $CellContext`c, 90, 
         90, 90}, $CellContext`orthorhombicconstants[
         Pattern[$CellContext`symmetry, 
          Blank[]]] := {$CellContext`a, $CellContext`b, $CellContext`c, 90, 
         90, 90}, $CellContext`monoclinicconstants[
         Pattern[$CellContext`symmetry, 
          Blank[]]] := {$CellContext`a, $CellContext`b, $CellContext`c, 
         90, $CellContext`\[Beta], 90}, $CellContext`triclinicconstants[
         Pattern[$CellContext`symmetry, 
          
          Blank[]]] := {$CellContext`a, $CellContext`b, $CellContext`c, \
$CellContext`\[Alpha], $CellContext`\[Beta], $CellContext`\[Gamma]}, \
$CellContext`whichcontrols[
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
          Blank[]]] := 
       Sequence[{{$CellContext`a, 1, $CellContext`atext}, ControlPlacement -> 
          Right}, {{$CellContext`c, 1, $CellContext`ctext}, ControlPlacement -> 
          Right}], $CellContext`atext = Text[
         Style["a", 16]], $CellContext`ctext = Text[
         Style["c", 16]], $CellContext`cubiccontrols[
         Pattern[$CellContext`symmetry, 
          Blank[]]] := 
       Sequence[{{$CellContext`a, 1, $CellContext`atext}, ControlPlacement -> 
          Right}], $CellContext`tetragonalcontrols[
         Pattern[$CellContext`symmetry, 
          Blank[]]] := 
       Sequence[{{$CellContext`a, 4.59, $CellContext`atext}, ControlPlacement -> 
          Right}, {{$CellContext`c, 2.96, $CellContext`ctext}, 
          ControlPlacement -> Right}], $CellContext`orthorhombiccontrols[
         Pattern[$CellContext`symmetry, 
          Blank[]]] := 
       Sequence[{{$CellContext`a, 1, $CellContext`atext}, ControlPlacement -> 
          Right}, {{$CellContext`b, 1, $CellContext`btext}, ControlPlacement -> 
          Right}, {{$CellContext`c, 1, $CellContext`ctext}, ControlPlacement -> 
          Right}], $CellContext`btext = Text[
         Style["b", 16]], $CellContext`monocliniccontrols[
         Pattern[$CellContext`symmetry, 
          Blank[]]] := 
       Sequence[{{$CellContext`a, 1, $CellContext`atext}, ControlPlacement -> 
          Right}, {{$CellContext`b, 1, $CellContext`btext}, ControlPlacement -> 
          Right}, {{$CellContext`c, 1, $CellContext`ctext}, ControlPlacement -> 
          Right}, {{$CellContext`\[Beta], 90, $CellContext`\[Beta]text}, 
          ControlPlacement -> Right}], $CellContext`\[Beta]text = Text[
         Style["\[Beta]", 16]], $CellContext`tricliniccontrols[
         Pattern[$CellContext`symmetry, 
          Blank[]]] := 
       Sequence[{{$CellContext`a, 5.16, $CellContext`atext}, ControlPlacement -> 
          Right}, {{$CellContext`b, 8.966, $CellContext`btext}, 
          ControlPlacement -> 
          Right}, {{$CellContext`c, 9.347, $CellContext`ctext}, 
          ControlPlacement -> 
          Right}, {{$CellContext`\[Alpha], 91.18, $CellContext`\[Alpha]text}, 
          ControlPlacement -> 
          Right}, {{$CellContext`\[Beta], 100.46, $CellContext`\[Beta]text}, 
          ControlPlacement -> 
          Right}, {{$CellContext`\[Gamma], 89.64, $CellContext`\[Gamma]text}, 
          ControlPlacement -> Right}], $CellContext`\[Alpha]text = Text[
         Style["\[Alpha]", 16]], $CellContext`\[Gamma]text = Text[
         Style["\[Gamma]", 16]], $CellContext`pickIndex[
         Pattern[$CellContext`i, 
          Blank[]], 
         Pattern[$CellContext`j, 
          Blank[]]] := Which[$CellContext`i == 1, 
         Which[$CellContext`j == 1, 0, $CellContext`j == 2, 0, $CellContext`j == 
          3, 1, True, 1], $CellContext`i == 2, 
         Which[$CellContext`j == 1, 0, $CellContext`j == 2, 1, $CellContext`j == 
          3, 0, True, 1], $CellContext`i == 3, 
         Which[$CellContext`j == 1, 1, $CellContext`j == 2, 1, $CellContext`j == 
          3, 0, True, 1], $CellContext`i == 4, 
         Which[$CellContext`j == 1, 1, $CellContext`j == 
          2, -1, $CellContext`j == 3, 0, True, 1], True, 
         RandomInteger[{-6, 6}]], $CellContext`hkl[1] = Text[
         Style["h", Italic, 16]], $CellContext`hkl[2] = Text[
         Style["k", Italic, 16]], $CellContext`hkl[3] = Text[
         Style["l", Italic, 16]], $CellContext`pickColor[
         Pattern[$CellContext`i, 
          Blank[]]] := Which[$CellContext`i == 1, 
         Darker[Magenta], $CellContext`i == 2, 
         Darker[Cyan], $CellContext`i == 3, 
         Darker[Yellow], $CellContext`i == 4, 
         Darker[Green], True, 
         Hue[
          RandomReal[], 1, 2/3]], $CellContext`pickGamma[
         Pattern[$CellContext`i, 
          Blank[]]] := 
       Which[$CellContext`i == 1, 0.5, $CellContext`i == 2, 
         113.14, $CellContext`i == 3, 63.26, $CellContext`i == 4, 63.26, True,
          1], $CellContext`wulffmakerWulff[
         Pattern[$CellContext`argument, 
          Blank[]], 
         Optional[
          Pattern[$CellContext`opacity, 
           Blank[]], 1], 
         Optional[
          Pattern[$CellContext`showAxes, 
           Blank[]], True], 
         Optional[
          Pattern[$CellContext`vpr, 
           Blank[]], {0, 0, 1}], 
         Optional[
          Pattern[$CellContext`vvr, 
           Blank[]], {1, 0, 0}]] := Quiet[
         Module[{$CellContext`norms, $CellContext`ds, $CellContext`colors, \
$CellContext`symstring, $CellContext`geometry, $CellContext`sym, \
$CellContext`geometr, $CellContext`aa, $CellContext`bb, $CellContext`cc, \
$CellContext`\[Alpha]\[Alpha], $CellContext`\[Beta]\[Beta], $CellContext`\
\[Gamma]\[Gamma], $CellContext`avect, $CellContext`bvect, $CellContext`cvect, \
$CellContext`cartesian1, $CellContext`points, $CellContext`normsxyz, \
$CellContext`symop, $CellContext`dmult, $CellContext`colz, $CellContext`gams, \
$CellContext`dualGams, $CellContext`chull, $CellContext`keepers, \
$CellContext`colzKeep, $CellContext`gamsKeep, $CellContext`dualVerts, \
$CellContext`matchSurvivors, $CellContext`dualFacesIndex, \
$CellContext`dualFaces, $CellContext`dualNorms, \
$CellContext`dualDistToOrigin, $CellContext`wulffVertsToHull, \
$CellContext`whull, $CellContext`wulffVerts, $CellContext`wulffFaces, \
$CellContext`wulffFacesIndex, $CellContext`wulffNorms, \
$CellContext`providedNorms, $CellContext`matchFacets, \
$CellContext`matchIndex, $CellContext`matchCols, $CellContext`areas, \
$CellContext`totvol, $CellContext`wulffshape, $CellContext`withaxes}, \
$CellContext`norms = Table[
             Normalize[
              
              Part[$CellContext`argument, 
               1, $CellContext`i]], {$CellContext`i, 
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
{($CellContext`bb Sin[$CellContext`\[Alpha]\[Alpha]]) 
             Cos[$CellContext`\[Gamma]\[Gamma]], ($CellContext`bb 
              Sin[$CellContext`\[Alpha]\[Alpha]]) 
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
           Flatten[
             Table[
              Part[$CellContext`colors, $CellContext`i], {$CellContext`i, 1, 
               Length[$CellContext`ds]}, {$CellContext`j, 1, 
               Length[
                Part[$CellContext`symop, $CellContext`i]]}], 
             1]; $CellContext`dualGams = Chop[
             Flatten[
              
              Table[(1/
                Part[$CellContext`dmult, $CellContext`i, $CellContext`j]) 
               Normalize[
                 
                 Part[$CellContext`symop, $CellContext`i, $CellContext`j]], \
{$CellContext`i, 1, 
                Length[$CellContext`normsxyz]}, {$CellContext`j, 1, 
                Length[
                 Part[$CellContext`symop, $CellContext`i]]}], 
              1]]; $CellContext`gams = Flatten[
             Table[
             Part[$CellContext`dmult, $CellContext`i, $CellContext`j] 
              Normalize[
                
                Part[$CellContext`symop, $CellContext`i, $CellContext`j]], \
{$CellContext`i, 1, 
               Length[$CellContext`normsxyz]}, {$CellContext`j, 1, 
               Length[
                Part[$CellContext`symop, $CellContext`i]]}], 
             1]; $CellContext`chull = 
           ConvexHullMesh[$CellContext`dualGams]; $CellContext`dualVerts = 
           MeshCoordinates[$CellContext`chull]; $CellContext`matchSurvivors = 
           Table[
             Part[
              Nearest[$CellContext`dualGams, 
               Part[$CellContext`dualVerts, $CellContext`i]], 
              1], {$CellContext`i, 
              Length[$CellContext`dualVerts]}]; $CellContext`keepers = Table[
             Part[
              Position[$CellContext`dualGams, 
               Part[$CellContext`matchSurvivors, $CellContext`i]], 1, 
              1], {$CellContext`i, 
              Length[$CellContext`matchSurvivors]}]; $CellContext`colzKeep = 
           Table[
             Part[$CellContext`colz, 
              Part[$CellContext`keepers, $CellContext`i]], {$CellContext`i, 
              Length[$CellContext`keepers]}]; $CellContext`gamsKeep = Table[
             Part[$CellContext`gams, 
              Part[$CellContext`keepers, $CellContext`i]], {$CellContext`i, 
              Length[$CellContext`keepers]}]; $CellContext`dualFacesIndex = 
           Map[First, 
             MeshCells[$CellContext`chull, 2]]; $CellContext`dualFaces = 
           Map[Part[$CellContext`dualVerts, #]& , \
$CellContext`dualFacesIndex]; $CellContext`dualNorms = Map[Normalize[
              Cross[
              Part[#, 2] - Part[#, 1], Part[#, 3] - 
               Part[#, 
                1]]]& , $CellContext`dualFaces]; \
$CellContext`dualDistToOrigin = Table[
             Dot[
              Part[$CellContext`dualFaces, $CellContext`i, 1], 
              Part[$CellContext`dualNorms, $CellContext`i]], {$CellContext`i, 
              
              Length[$CellContext`dualNorms]}]; $CellContext`wulffVertsToHull = 
           Chop[1/$CellContext`dualDistToOrigin] $CellContext`dualNorms; \
$CellContext`whull = 
           ConvexHullMesh[$CellContext`wulffVertsToHull]; \
$CellContext`wulffVerts = 
           MeshCoordinates[$CellContext`whull]; $CellContext`wulffFacesIndex = 
           Map[First, 
             MeshCells[$CellContext`whull, 2]]; $CellContext`wulffFaces = 
           Map[Part[$CellContext`wulffVerts, #]& , \
$CellContext`wulffFacesIndex]; $CellContext`wulffNorms = Chop[
             Map[Normalize[
               Cross[
               Part[#, 2] - Part[#, 1], Part[#, 3] - 
                Part[#, 
                 
                 1]]]& , $CellContext`wulffFaces]]; \
$CellContext`providedNorms = 
           Map[Normalize, $CellContext`gamsKeep]; $CellContext`matchFacets = 
           Table[
             Part[
              Nearest[$CellContext`providedNorms, 
               Part[$CellContext`wulffNorms, $CellContext`i]], 
              1], {$CellContext`i, 
              Length[$CellContext`wulffNorms]}]; $CellContext`matchIndex = 
           Table[
             Part[
              Position[$CellContext`providedNorms, 
               Part[$CellContext`matchFacets, $CellContext`i]], 1, 
              1], {$CellContext`i, 
              Length[$CellContext`matchFacets]}]; $CellContext`matchCols = 
           Map[Part[$CellContext`colzKeep, #]& , $CellContext`matchIndex]; \
$CellContext`wulffshape = Graphics3D[
             Table[{
               EdgeForm[], 
               Opacity[$CellContext`opacity], 
               Part[$CellContext`matchCols, $CellContext`i], 
               Polygon[
                
                Part[$CellContext`wulffFaces, $CellContext`i]]}, \
{$CellContext`i, 
               Length[$CellContext`wulffFaces]}], Lighting -> "Neutral", 
             ViewPoint -> 
             10 (Part[$CellContext`vpr, 1] $CellContext`avect + 
               Part[$CellContext`vpr, 2] $CellContext`bvect + 
               Part[$CellContext`vpr, 3] $CellContext`cvect), ViewVertical -> 
             Part[$CellContext`vvr, 1] $CellContext`avect + 
              Part[$CellContext`vvr, 2] $CellContext`bvect + 
              Part[$CellContext`vvr, 3] $CellContext`cvect, ImageSize -> 
             Large, Boxed -> False]; $CellContext`withaxes = If[
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
                  0.025]]}]]]]], $CellContext`symmetryMatrices["1"] = {{{1, 0,
         0}, {0, 1, 0}, {0, 0, 1}}}, $CellContext`symmetryMatrices["2"] = {{{
        1, 0, 0}, {0, 1, 0}, {0, 0, 1}}, {{-1, 0, 0}, {0, 1, 0}, {0, 
        0, -1}}}, $CellContext`symmetryMatrices["222"] = {{{1, 0, 0}, {0, 1, 
        0}, {0, 0, 1}}, {{1, 0, 0}, {0, -1, 0}, {0, 0, -1}}, {{-1, 0, 0}, {0, 
        1, 0}, {0, 0, -1}}}, $CellContext`symmetryMatrices["23"] = {{{1, 0, 
        0}, {0, 1, 0}, {0, 0, 1}}, {{1, 0, 0}, {0, -1, 0}, {0, 0, -1}}, {{0, 
        0, 1}, {1, 0, 0}, {0, 1, 0}}}, $CellContext`symmetryMatrices[
        "2/m"] = {{{1, 0, 0}, {0, 1, 0}, {0, 0, 1}}, {{-1, 0, 0}, {0, 1, 0}, {
        0, 0, -1}}, {{1, 0, 0}, {0, -1, 0}, {0, 0, 
        1}}}, $CellContext`symmetryMatrices[
        "3"] = {{{1, 0, 0}, {0, 1, 0}, {0, 0, 
         1}}, {{(-1)/2, (-Sqrt[3])/2, 0}, {Sqrt[3]/2, (-1)/2, 0}, {0, 0, 
          1}}}, $CellContext`symmetryMatrices[
        "32"] = {{{1, 0, 0}, {0, 1, 0}, {0, 0, 
         1}}, {{(-1)/2, (-Sqrt[3])/2, 0}, {Sqrt[3]/2, (-1)/2, 0}, {0, 0, 
          1}}, {{1, 0, 0}, {0, -1, 0}, {0, 
         0, -1}}}, $CellContext`symmetryMatrices[
        "3m"] = {{{1, 0, 0}, {0, 1, 0}, {0, 0, 
         1}}, {{(-1)/2, (-Sqrt[3])/2, 0}, {Sqrt[3]/2, (-1)/2, 0}, {0, 0, 
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
         1}}, {{1/2, (-Sqrt[3])/2, 0}, {Sqrt[3]/2, 1/2, 0}, {0, 0, 
          1}}}, $CellContext`symmetryMatrices[
        "622"] = {{{1, 0, 0}, {0, 1, 0}, {0, 0, 
         1}}, {{1/2, (-Sqrt[3])/2, 0}, {Sqrt[3]/2, 1/2, 0}, {0, 0, 1}}, {{1, 
         0, 0}, {0, -1, 0}, {0, 0, -1}}}, $CellContext`symmetryMatrices[
        "6/m"] = {{{1, 0, 0}, {0, 1, 0}, {0, 0, 
         1}}, {{1/2, (-Sqrt[3])/2, 0}, {Sqrt[3]/2, 1/2, 0}, {0, 0, 1}}, {{1, 
         0, 0}, {0, 1, 0}, {0, 0, -1}}}, $CellContext`symmetryMatrices[
        "6mm"] = {{{1, 0, 0}, {0, 1, 0}, {0, 0, 
         1}}, {{1/2, (-Sqrt[3])/2, 0}, {Sqrt[3]/2, 1/2, 0}, {0, 0, 1}}, {{-1, 
         0, 0}, {0, 1, 0}, {0, 0, 1}}}, $CellContext`symmetryMatrices[
        "6/mmm"] = {{{1, 0, 0}, {0, 1, 0}, {0, 0, 
         1}}, {{1/2, (-Sqrt[3])/2, 0}, {Sqrt[3]/2, 1/2, 0}, {0, 0, 1}}, {{1, 
         0, 0}, {0, 1, 0}, {0, 0, -1}}, {{-1, 0, 0}, {0, 1, 0}, {0, 0, 
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
         0, 1}}, {{1/2, Sqrt[3]/2, 0}, {(-Sqrt[3])/2, 1/2, 0}, {0, 
          0, -1}}}, $CellContext`symmetryMatrices[
        "\!\(\*OverscriptBox[\(3\), \(_\)]\)m"] = {{{1, 0, 0}, {0, 1, 0}, {0, 
         0, 1}}, {{1/2, Sqrt[3]/2, 0}, {(-Sqrt[3])/2, 1/2, 0}, {0, 
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
         0, 1}}, {{(-1)/2, Sqrt[3]/2, 0}, {(-Sqrt[3])/2, (-1)/2, 0}, {0, 
          0, -1}}}, $CellContext`symmetryMatrices[
        "\!\(\*OverscriptBox[\(6\), \(_\)]\)m2"] = {{{1, 0, 0}, {0, 1, 0}, {0,
          0, 1}}, {{(-1)/2, Sqrt[3]/2, 0}, {(-Sqrt[3])/2, (-1)/2, 0}, {0, 
          0, -1}}, {{-1, 0, 0}, {0, 1, 0}, {0, 0, 1}}}, $CellContext`groupSet[
        "Cubic"] = {
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
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{{3.605863631044074*^9, 3.605863640753476*^9}, 
   3.605863934214367*^9, 3.6058690596006527`*^9, {3.605869422576558*^9, 
   3.605869464720585*^9}, 3.6058695898433723`*^9, 3.605869867689815*^9, 
   3.6471386821036997`*^9, 3.647138885691575*^9, 3.6471398094117804`*^9, {
   3.647140009365962*^9, 3.647140020839025*^9}, 3.647140120672378*^9, 
   3.6471405123597317`*^9, 3.647141001458791*^9, 3.6471411142626953`*^9, 
   3.647142125299973*^9, 3.647142294536642*^9, 3.6471423452346888`*^9, 
   3.6471741789890423`*^9, 3.6471745894329643`*^9, 3.647179719870758*^9}]
}, {2}]]
}, Open  ]]
}, Open  ]]
},
WindowSize->{1372, 913},
WindowMargins->{{79, Automatic}, {Automatic, 0}},
FrontEndVersion->"10.1 for Mac OS X x86 (32-bit, 64-bit Kernel) (March 23, \
2015)",
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
Cell[1486, 35, 592, 8, 92, "Title"],
Cell[2081, 45, 1039, 19, 170, "Subsubtitle"],
Cell[CellGroupData[{
Cell[3145, 68, 294, 4, 64, "Section",
 CellGroupingRules->{GroupTogetherGrouping, 10000.}],
Cell[3442, 74, 240, 3, 35, "Subsubsection",
 CellGroupingRules->{GroupTogetherGrouping, 10000.}],
Cell[3685, 79, 2605, 40, 125, "Text",
 CellGroupingRules->{GroupTogetherGrouping, 10000.}],
Cell[6293, 121, 285, 4, 35, "Subsubsection",
 CellGroupingRules->{GroupTogetherGrouping, 10000.}],
Cell[6581, 127, 5090, 76, 563, "Text",
 CellGroupingRules->{GroupTogetherGrouping, 10000.}],
Cell[11674, 205, 300, 4, 35, "Subsubsection",
 CellGroupingRules->{GroupTogetherGrouping, 10000.}],
Cell[11977, 211, 3888, 64, 486, "Text",
 CellGroupingRules->{GroupTogetherGrouping, 10000.}]
}, Closed]],
Cell[CellGroupData[{
Cell[15902, 280, 217, 3, 50, "Section"],
Cell[16122, 285, 8592, 190, 971, "Input",
 InitializationCell->True],
Cell[24717, 477, 47597, 1222, 2937, "Input",
 InitializationCell->True],
Cell[72317, 1701, 37383, 824, 1576, "Input",
 InitializationCell->True]
}, Closed]],
Cell[CellGroupData[{
Cell[109737, 2530, 148, 2, 50, "Section"],
Cell[CellGroupData[{
Cell[109910, 2536, 9241, 208, 760, "Input"],
Cell[119154, 2746, 35102, 676, 1007, "Output"]
}, {2}]]
}, Open  ]]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature PvpSTN#JjoMU2Cg54cWhWLh6 *)
