#! /bin/bash
# cars
# Arshia Behzad

stay=true
while $stay
do 
	echo "1 - add car, 2 - List cars, 0 -quit"
	read choice

	case $choice in "1")
		echo "What is the year of the car?"
		read carYear
		echo "Who makes the car?"
		read carMake
		echo "What is the model of the car?"
		read carModel
		carName=$carYear":"$carMake":"$carModel
		echo $carName >> "My_old_cars.txt";;	
	
        case $choice in "2")
		while read -r line
		do
			name="$line"
		done < "My_old_cars.txt";;
		
	# case $choice in "0") 
		
	esac 
	stay=false
done 
