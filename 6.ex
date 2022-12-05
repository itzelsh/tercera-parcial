#Hacer un programa recursivo que imprima n veces un mensaje

defmodule Repetir do
    def imprimir(msg,n) when n<=1 do
        IO.puts("#{n}: #{msg}")
    end

    def imprimir(msg,n) do
        IO.puts("#{n}: #{msg}")
        imprimir(msg,n-1)
    end
end

Repetir.imprimir("Hola",10)

#Invertir el orden de los numeros
defmodule Repetir do
    def imprimir(msg,n,ls) when n>=ls do
        IO.puts("#{n}: #{msg}")
    end

    def imprimir(msg,n,ls) do
        IO.puts("#{n}: #{msg}")
        imprimir(msg,n+1,ls)
    end
end
Repetir.imprimir("Hola",1,10)

#Prorama recursivo que sume todos los lementos de una serie de numeros en una lista

defmodule Matematicas do
    def sum_list([],suma), do :suma
    def sum_list([head|tail],suma) do
        sum_list(tail,suma+head)
    end
end

IO.puts(Matematicas.sum_list([1,2,3,4,5,6,7,8,9,10],0))
IO.puts(Matematicas.sum_list([1,3,5,7,9,10,15],0))

#Obtener el promedio de 10 calificaciones entre 0 y 10 almacenadas en una lista
defmodule Matematicas do
    def sum_list([],suma), do :suma
    def sum_list([head|tail],suma) do
        sum_list(tail,suma+head)
    end
end
IO.puts(Matematicas.sum_list([1,2,3,4,5],0)/10)

#Crear una funcion promedio que calcule el promedio de 10 calificaiones almacenadas en una lista entre 0 y 10

defmodule Matematicas do
    def sum_list([],suma), do :suma
    def sum_list([head|tail],suma) do
        sum_list(tail,suma+head)
    end
    def promedio(calificaciones,n) do
        sum_list(calificaciones,0)/n
    end
end
IO.puts(Matematicas.promedio([10,5,9,9,8,5,7,9,5],10))

#Calcular el promdio de n calificaciones entre 0 y 10 en una lista

defmodule Matematicas do
    def sum_list([],suma), do :suma
    def sum_list([head|tail],suma) do
        sum_list(tail,suma+head)
    end
    def promedio(calificaciones,n) do
        sum_list(calificaciones,0)/Enum.count(calificaciones)
    end
end
IO.puts(Matematicas.promedio([10,5,9,9,8,5,7,9,6,5],10))

#forma sencilla 
calificaciones = [10,5,9,9,8,5,7,9,6,5]
IO.puts(Enum.sum(calificaciones)/Enum.count(calificaciones))

#Generar n calificaciones aleatorias entre 0 y 10 y obtener su promedio

max = 50
calificaciones = for _x <- 1..max, do
    Enum.random(0..10)
end
IO.inspect(calificaciones)
IO.puts Enum.count(calificaciones)
IO.puts Enum.sum(calificaciones)/Enum.count(calificaciones)

#Problema Anterior con un modulo y una funcion recibiendo como arugmentos
#la cantidad de calificaciones y el rango de calificaciones

defmodule Estadistica do
    def promedio(max_cal, _li,_ls) when max_cal <= 1 do
        :error
    end
    def promedio(max_cal, li, ls) do
        calificaciones = for _x <- 1..max_cal, do
            Enum.random(li..ls)
    end
        Enum.sum(calificaciones)/Enum.count(calificaciones)
    end
end

IO.puts(Estadistica.promedio(50,1,15))
IO.puts(Estadistica.promedio(-5,1,15))

#Hacer un programa recursivo que cuente de manera creciente de li 
#(limite inferior) a ls (limite superior)
defmodule For_range do
    def for_to(n,ls) when n> ls do
        IO.puts "error"
    end
    def for_to(n,ls) when n>=ls do
        IO.puts(n)
    end
    def for_to(n,ls) do
        IO.puts(n)
        for_to(n+1,ls)
    end
end
IO.puts("Contar de 1 a 10")
For_range.for_to(1,10)
IO.puts("Contar de 12 a 5")
For_range.for_to(12,5)

#Programa que sume los valores de los numeros consecutivos entre li y ls inclusive

defmodule For_range do
    def for_to(n,ls) when n>= ls do
        n
    end
    def for_to(n,ls) do
        n + for_to(n+1,ls)
    end
end
IO.puts("Suma de los numeros de 1 a 10")
IO.puts(For_range.for_to(1,10))

IO.puts("Suma de los numeros de 5 a 12")
IO.puts(For_range.for_to(5,12))

