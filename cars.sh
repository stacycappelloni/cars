#! /bin/bash
# cars.sh
# Stacy Cappelloni

USER_INPUT=""

#while loop, exits when user enters "3"
while echo "$USER_INPUT" | egrep -v "^[3]$" > /dev/null 2>&1
do
  echo "MENU: "
  echo "(1) Enter a new car."
  echo "(2) Display the list of cars."
  echo "(3) Quit and exit."
  echo "Choose an option 1-3: "

  read USER_INPUT

  case "$USER_INPUT" in 
    #Adds the information for a new car into the My_old_cars file 
    "1") echo "Enter a new car by providing the following information."
      echo "Enter the year: "
      read YEAR
      echo "Enter the make: "
      read MAKE 
      echo "Enter the model: "
      read MODEL
      echo "$YEAR:$MAKE:$MODEL" >> My_old_cars;; 
    #Displays the list of cars sorted by year 
    "2") sort My_old_cars;;
    #Quits and exits the program 
    "3") echo "You have quit and exited the program. Goodbye.";;
    #Prompts the user for a valid option number if their input was invalid
    *) echo "Invalid input. Please try again.";;
  esac
done

  
  
