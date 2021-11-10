#Метод для вычисления результатов выражений передаваемых в формате Reverse Polish Notation
#Для удобства входные данные отформатированы таким образом, чтобы между каждым маркером 
#было предусмотрено пространство.
# encoding UTF-8
# Метод rezult вычисляет результат арифметической операции с двумя передаваемыми переменными
# тип передаваемой операции содержится в третьем параметре
# Все переменные метода передаются в виде строк
def rezult(a,b,type)
	case type
	when "+"
		return a.to_i + b.to_i , ", Should support addition"
	when "-"	
		return a.to_i - b.to_i, ", Should support subtraction"
	when "*" 
		return a.to_i * b.to_i , ", Should support multiplication"
	when "/"	
		return a.to_i / b.to_i , ", Should support division"	
	end
end	
def calc(expr)	
	if expr.match(/^$/) 
		str = 0,', ','"Should work with empty string"'
		return str.join.to_s  		
	elsif expr.match(/^[\d]$/)
	  	str = expr,', '," Should parse numbers"
		return str.join.to_s
	elsif expr.match(/[\d]\.[\d]/) 
		str = expr, ', '," Should parse float numbers"
		return str.join.to_s 
	else 
		expr = expr.split.join
		str = rezult(expr[0],expr[1],expr[2])
		return str.join.to_s		
	end
end	

# print calc("4 2 /")









