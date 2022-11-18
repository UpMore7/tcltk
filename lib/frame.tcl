#
# Frame
#
#  > run_frame "Titel" width height "bgcolor" "icon_path" "(resizable)yes/no" "(deco)yes/no"
#


# Package
   package require Tk
   
   
# Run Frame
   proc run_frame {titel width height bgcolor icon_path res deco} {
   
      set x [ expr {([ winfo vrootwidth  . ] - $width ) / 2 }]
      set y [ expr {([ winfo vrootheight . ] - $height ) / 2 }]
      wm geometry . ${width}x${height}+$x+$y
      
      wm title . "$titel"

      . configure -bg $bgcolor

      set im [image create photo -file $icon_path]
      wm iconphoto . -default $im
      
      if {$res == "no"} {
         wm resizable . 0 0   
      }

      if {$deco == "no"} {
         wm overrideredirect . 1   
      }  

   }



# END
#
#

