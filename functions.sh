#Working with functions
#Declaring function syntax
function_name(){
	# commands
	echo "function invoked"
}

#invoke function without any parenthesis
function_name

#Passing arguments to function
fun(){
	echo Arguments are $1, $2, $3

}
fun first second
# OUtPUt : Argumetns are first, second, 

#Return values
#Most Programming languages support concept of return values, but bash scripting does not support it. However, they allow us to return status of the function which can only be a number
fun2(){
	echo "fun2 invoked"
	return 5
}
fun2 first second 3
echo fun2 with status code $?
echo Remember that $? contains status code of previous command that was run or the previous function that was invoked.

#Using Command Substitution
fun3(){
	echo "func3 invoked"
	echo "Returning from fun3"
}

var=$(fun3)
echo ${var}
# Variable Scope

var1='Global Value Var1'
var2='Global value var2'
echo "Values of var1 and var2 before invoking function is:( ${var1}, ${var2} ) respectively"
fun4(){
	var1='local value for var1'
	local var2 'local value for var2 set using "local" keyword'
	echo var1 has been reset in fun4 to : ${var1}
	echo var2 has been reset to fun4 to : ${var2}
	echo 'returning from fun4 function'
}
fun4
echo "Value of var1 and var2 after invoking function is: ( ${var1}, ${var2}) respectively"

#If the name of the command and the function is same then prepent the command with command keyword
ls() {
	command ls -als
}
ls
