
	shopt -s extglob

	function checkFirstName(){
		
		pattern="^[A-Z]{1}[a-z]{3,}$"

		read -p "Enter The First Name" fname

		if [[ $fname =~ $pattern ]]
		then
		   echo "Valid First Name"
		else
		   echo "Please Check First Name Start  Capital and it has minimum 3 latter "
		   checkFirstName
		fi
	}

	function checkLastName(){

		pattern="^[A-Z]{1}[a-z]{3,}$"

		read -p "Enter The Last Name" lname

		if [[ $lname =~ $pattern ]]
		then
		   echo "Valid Last Name"
		else
		   echo "Please Check Last Name Start  Capital and it has minimum 3 latter "
		   checkLastName
		fi

	}


	function checkEmail(){

		pattern="^[a-zA-Z0-9]+([._+-][a-zA-Z0-9]+)*@[a-zA-Z0-9]+([.][a-zA-Z]{2,3}){1,2}$"

		read -p "Enter The Email" email

		if [[ $email =~ $pattern ]]
		then
		   echo "Valid Email Id"
		else
		   echo "Please Check email id and try again "
		   checkEmail
		fi

	}

	function checkMobileNo(){

		pattern="^[0-9]{2}[][0-9]{10}$"

		read -p "Enter The Mobile Number" mob

		if [[ $mob =~ $pattern ]]
		then
		   echo "Valid Mobile Number"
		else
		   echo "Please Check Mobile number and try again "
		   checkMobileNo
		fi

	}

	function checkPassword(){

		pattern='^[]0-9a-zA-Z,!^`@{}=().;/~_|[-]*$'

		read -p "Enter The Password" pass

		if [[ $pass =~ $pattern ]]
		then
		   echo "Valid Password"
		else
		   echo "Invalid Password "
		   checkPassword
		fi

	}	

	checkFirstName
	checkLastName
	checkEmail
	checkMobileNo
	checkPassword