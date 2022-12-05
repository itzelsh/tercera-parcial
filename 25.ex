defmodule Matematicas do
    def Calculadora(opcion,{n1,n2}) do
        case opcion do
            "+" -> n1+n2
            "-" -> n1-n2
            "/" -> when n2 != 0, -> n1/n2
            "/" -> when n2 == 0, -> "No se puede dividir entre 0"
            "*" -> n1*n2
            _ -> "error"
        end
    end
end

IO.inspect Matematicas.Calculadora("+",{5,4})
IO.inspect Matematicas.Calculadora("-",{5,4})
IO.inspect Matematicas.Calculadora("/",{5,4})
IO.inspect Matematicas.Calculadora("/",{5,0})
IO.inspect Matematicas.Calculadora("*",{5,4})
