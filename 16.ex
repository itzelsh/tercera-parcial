for x <- 1..10 do
    IO.puts(x)
end

#ejemplo 2
sum= 0
for x <- 1..10 do 
    sum = sum + x
end
IO.puts(sum)

#ejemplo 2 arreglado para evitar warnings
sum = for x <- 1..10 do
    x
end 
IO.inspect(sum)

#ejemplo 2 arreglado con el modulo enum
sum = for x <- 1..10 do
    x
end
IO.puts Enum.sum(sum)

#ejemplo 3 expresado en una sola linea
IO.puts Enum.sum(1..10)
