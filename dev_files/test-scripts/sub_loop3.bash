#!/usr/bin/bash 

# on test 
# not selected 

function subopt1() {
   subopt1=""
   print_ok=" [**] ok .."

   while [ "$subopt1" != "x" ]; do {
      echo Sub Menu 1 Heading
      echo Option A
      echo Option B
      echo x Back to Main Menu
      read -p "Select sub option1" subopt1

      if [[ $subopt1 == 1 ]]; then {
            echo $print_ok;
        } elif [[ $subopt1 == 2 ]]; then {
            echo $print_ok;
        } elif [[ $subopt1 == 3 ]]; then {
            echo $print_ok;
        }; fi

    } done
 }

 function subopt2() {
     subopt2=""
     while [ "$subopt2" != "x" ]
     do
         echo Sub Menu 2 Heading
         echo Option A
         echo Option B
         echo x Back to Main Menu
         read -p "Select sub-option2" subopt2    
     done
 }

 function mainopt() {
    opt=""
    while [ "$opt" != "x" ]
    do
        echo Menu Heading
        echo Sub Menu 1
        echo Sub Menu 2
        read -p "Select Otion: " opt
        if [ "$opt" = "1" ]; then
             subopt1
        elif [ "$opt" = "2" ]; then
             subopt2
        elif [ "$opt" = "x" ];then
             break
        fi
   done
}

mainopt