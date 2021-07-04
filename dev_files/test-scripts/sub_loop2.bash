#!/usr/bin/bash 


# on test 
# not selected 

main_menu () {
    options=(
        "Add user"
        "Remove user"
        "Update user"
        "Quit"
    )
    select option in "${options[@]}"; do
        case $option in
            ${options[0]})
                echo "this is add user";
                break
            ;;
            ${options[1]})
                echo "this is remove user";
                break
            ;;
            ${options[2]})
                echo "this is update user";
                break
             ;;
            ${options[3]})
                exit
             ;;
            *) 
                echo invalid option
            ;;
        esac
    done
}
main_menu