#!/usr/bin/env tclsh
#
#  Pro1
#

# Load Lib
   set relpath [file dirname [info script]]
   cd $relpath
   source [file join load_lib.tcl]


# Frame
   run_frame "Panel" 1000 600 "#ac3" "res/icon.png" "no" "yes"


# Label
   ttk::label .lb1 -text "Feld 1" -borderwidth 3 -relief solid
   ttk::label .lb2 -text "Ja Feld 2" -borderwidth 3 -relief solid
   ttk::label .lb3 -text "Ja Feld 3" -borderwidth 3 -relief solid
   ttk::label .lb4 -text "Ja Feld 4" -borderwidth 3 -relief solid   
   
# Grid
   grid .lb1 -row 0 -column 0
   grid .lb2 -row 1 -column 1
   grid .lb3 -row 3 -column 2
   grid .lb4 -row 3 -column 3 -sticky nesw





# API

    #set x [ catch {exec curl -s -H -X GET 'https://api.kucoin.com/api/v1/market/orderbook/level1?symbol=BTC-USDT'| jq -r .data.price} ]
      #puts "$x"
    #.lb1 config -text "$x"



#button .b -text "hello World!" -font "Verdana 20"
#text .t -bg wheat


# separater Schritt zum Sichtbarmachen (geometry manager)
#pack .b .t


#
#.t insert end "button drücken verändert Farben..."
#bind .b <Button-1> {.b config -bg orange -activebackground yellow}



# END
#
#


