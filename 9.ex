defmodule Calculadora do
    def div(_,0) do
        {:error, "No se puede dividir por cero"}
    end
    def div(n1,n2) do 
        {:ok, "El resultado es #{n1/n2}"}
        end
    end
IO.inspect(Calculadora.div(5,0))
IO.inspect(Calculadora.div(5,3))

#Funcion invertida
defmodule Calculadora do
    def div(n1,n2) do 
        {:ok, "El resultado es #{n1/n2}"}
    end
    def div(_,0) do
        {:error, "No se puede dividir por cero"}
    end
end
IO.inspect(Calculadora.div(5,0))
IO.inspect(Calculadora.div(5,3))

#guardas
defmodule Numero do 
    def cero?(0), do: true 
    def cero?(n) when is_integer(n), do: false
    def cero?(_), do: "no es entero"
end
IO.puts(Numero.cero?(0))
IO.puts(Numero.cero?(2))
IO.puts(Numero.cero?("3"))

#Condicionales con if ejemplo 1
defmodule Personal do 
    def sexo(sex) do
    if sex == :m do
        "Masculino"
        else
        "Femenino"
        end
    end
end

#condicionales con if ejemplo 2
defmodule Persona2 do
    if sex == :m do
        "Masculino"
        else if sex == :f do
            "Femenino"
            else
                "Sexo Desconocido"
            end
        end
    end
end

#Condicionales con Case
defmodule Persona3 do 
    def sexo(sex) do
        case sex do
             :m-> "Masculino"
                :f-> "Femenino"
                :_-> "Sexo Desconocido"
                end
            end
        end

#Match con funciones ejemplo 1
defmodule Persona4 do
    def sexo(sex) when sex == :m do
        "Masculino"
    end
    def sexo(sex) when == :f do
        "Femenino"
    end
    def sexo(_sex) do 
        "Sexo Desconocido"
    end
end 

#Match con funciones ejemplo 2
defmodule Persona5 do
    def sexo(sex) when sex == :m, do: "Masculino"
    def sexo(sex) when sex == :f, do: "Femenino"
    def sexo(_sex), do: "Sexo Desconocido"
end
#cond ejemplo 1

defmodule Persona6 do
    def sexo(sex) do
        cond do
        sex == :m -> "Masculino"
        sex == :f -> "Femenino"
        true -> "Sexo Desconocido"
        end
    end
end

