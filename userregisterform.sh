
	shopt -s extglob
	checkName(){
		
		pattern="^[A-Z]{1}[a-z]{3,}$"					
		read -p "Enter The First Name" fname

		if [[ $fname =~ $pattern ]]
		then
		   echo "Vallid"
		else
		   echo "Please Check First Name Start  Capital and it has minimum 3 latter "
		fi
	}

	checkName