;; copyleft ebecheto
;; see also createInstPins in  pinAddText.il
;; /!\ cv is global ???���!!!!!! TOCHANGE  :!
defun(createPinLPPcv (@optional (name "GND")(bBox list(0:0 0.2:0.2))(lpp '("M1" "pin"))(dir nil)
(cv geGetWindowCellView()))
let((pin term disp rot accessDir)
unless(rot rot="R0")
unless(dir dir="inputOutput"
unless(accessDir accessDir='("top" "bottom" "left" "right"))
printf("bBox:%L\n" bBox)
pin=leCreatePin(cv lpp "rectangle" bBox name dir accessDir)
term=pin~>term
disp=dbCreateTextDisplay(term term lpp t centerBox(bBox) "centerLeft" rot "roman" 0.5)
disp~>isNameVisible=nil ;makes the 'name=' invisible
disp~>parent=pin~>fig   ;makes the text moving with the rect pin
pin))



; createPinLPP(name bBox lpp dir cv)

; textDisplay oki for IBM but not for AMS : label !


