require_relative 'calculator'

def run_game
    puts "Bienvenido a la calculadora en Ruby"
    puts "ingrese el primer numero:"
    num1 = gets.to_f

    puts "ingrese el segundo numero:"
    num2 = gets.to_f

    puts "seleccione un operacion"

    puts "1.Suma"
    puts "2.Resta"
    puts "3.Multiplicar"
    puts "4.Division"

    choice = gets.to_i

    case choice
    when 1 
        result = Calculator.add(num1,num2)
        operator = "+"
    when 2 
        result = Calculator.substract(num1,num2)
        operator = "-"

    when 3 
        result = Calculator.multiply(num1,num2)
        operator = "*"

    when 4 
        begin
        result = Calculator.divide(num1,num2)
        operator = "/"
    rescue StandardError => e
        puts "Error:#{e.message}"
        return
    end
    else
    puts "Opcion no valida"
    return
    end

    puts "Resultado: #{num1} #{operator} #{num2} = #{result}"

end

run_game