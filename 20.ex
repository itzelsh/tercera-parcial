sum = 0
lista = [1, 2, 3, 4, 5]
lista = tl(lista)
IO.inspect(lista)
[num|lista] = lista
#para sacar el 2
IO.inspect(num)
IO.inspect(lista)
sum = sum + num
IO.inspect(sum)
#para sacar el 3
[num|lista] = lista
IO.inspect(num)
IO.inspect(lista)
sum = sum + num
#para sacar 4
[num|lista] = lista
IO.inspect(num)
IO.inspect(lista)
sum = sum + num
#para sacar 5
[num|lista] = lista
IO.inspect(num)
IO.inspect(lista)
sum = sum + num
IO.inspect(sum)
IO.puts("El resultado es: #{sum*sum}")


#solucion 1
defmodule PipeTest do
    def Cuadrado(n) do: n*n
    def Suma(lista) do 
        Enum.sum(lista)
    end
end

IO.puts("#{PipeTest.Cuadrado(PipeTest.Suma(tl[1,2,3,4,5]))}")

#solucion 2

defmodule PipeTest do
    def Cuadrado(n) do: n*n
    def Suma(lista) do 
        Enum.sum(lista)
    end

    def csc(lista) do
        lista
        |> tl
        |> Suma
        |> Cuadrado
    end
end

#Herramienta de depuracion

defmodule PipeTest do
    def Cuadrado(n) do: n*n
    def Suma(lista) do 
        Enum.sum(lista)
    end

    def csc(lista) do
        lista
        |> tl
        |> IO.inspect
        |> Suma
        |> IO.inspect
        |> Cuadrado
    end
end
IO.puts("#{PipeTest.csc([1,2,3,4,5])}")