class Calculator

    def self.add(num1,num2)
        num1 + num2 
    end

    def self.substract(num1,num2)
        num1-num2
    end

    def self.multiply(num1,num2)
        num1 * num2
    end

    
    def self.divide(num1,num2)
        raise "no se puede dividir por 0" if num2 =
        num1/num2.to_f
    end

end 

result = Calculator.add(5,2)

puts result